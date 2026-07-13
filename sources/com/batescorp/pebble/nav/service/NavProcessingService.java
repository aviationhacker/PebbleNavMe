package com.batescorp.pebble.nav.service;

import android.app.ActivityManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.util.Log;
import android.widget.Button;
import com.batescorp.pebble.nav.MainActivity;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.activity.DestinationValue;
import com.batescorp.pebble.nav.lib.NotificationData;
import com.batescorp.pebble.nav.lib.NotificationHandler;
import com.batescorp.pebble.nav.listener.NavMeControlListener;
import com.batescorp.pebble.nav.listener.PebbleDataReceiver;
import com.batescorp.pebble.nav.listener.PebbleMessageManager;
import com.batescorp.pebble.nav.processor.NavConfig;
import com.batescorp.pebble.nav.processor.NavDirectionIcon;
import com.batescorp.pebble.nav.processor.NavGpsAccuracy;
import com.batescorp.pebble.nav.processor.NavHandler;
import com.batescorp.pebble.nav.processor.NavLicense;
import com.batescorp.pebble.nav.processor.NavState;
import com.batescorp.pebble.nav.processor.NavType;
import com.batescorp.pebble.nav.processor.PebbleState;
import com.batescorp.pebble.nav.util.LockUtil;
import com.batescorp.pebble.nav.util.StringUtil;
import com.getpebble.android.kit.Constants;
import com.getpebble.android.kit.PebbleKit;
import com.google.android.gms.search.SearchAuth;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class NavProcessingService extends Service {
    public static final String NAV_MESSAGE_MGR = "NAV_MESSAGE_MGR";
    public static final String NAV_MESSAGE_MGR_LAST_UUID = "NAV_MESSAGE_MGR_LAST_UUID";
    private PebbleMessageManager a;
    private Receiver b;
    private Timer c = null;
    private Timer d = null;
    private Timer e = null;
    private Timer f = null;
    private Long g = null;
    private PowerManager.WakeLock h = null;
    private PebbleDataReceiver i = null;
    private NavMeControlListener j = null;
    private Button k = null;

    enum a {
        START,
        STOP
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.d("NavProcessingService", "onCreate");
        super.onCreate();
        this.a = new PebbleMessageManager(this);
        this.a.start();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.INTENT_PEBBLE_CONNECTED);
        intentFilter.addAction(Constants.INTENT_PEBBLE_DISCONNECTED);
        this.b = new Receiver();
        registerReceiver(this.b, intentFilter);
        if (checkGoogleNavRunning()) {
            startNavTimer();
        } else {
            reset();
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(Constants.INTENT_APP_RECEIVE);
        this.i = new PebbleDataReceiver();
        registerReceiver(this.i, intentFilter2);
        this.j = new NavMeControlListener();
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction(Constants.INTENT_APP_RECEIVE);
        intentFilter3.addAction("com.batescorp.pebble.nav.FLASH_NAVME");
        this.i = new PebbleDataReceiver();
        registerReceiver(this.i, intentFilter3);
        i();
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("NavProcessingService", "onDestroy");
        if (this.a != null) {
            this.a.stop();
            this.a = null;
        }
        if (this.i != null) {
            unregisterReceiver(this.i);
            this.i = null;
        }
        if (this.i != null) {
            unregisterReceiver(this.i);
            this.i = null;
        }
        stopNavTimer();
        j();
        l();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        DestinationValue destinationValue;
        if (intent != null && this.a != null) {
            Log.d("NavProcessingService", "onStartCommand - " + intent.getAction());
            if ("com.batescorp.pebble.nav.FLASH_NAVME".equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("UUID");
                int intExtra = intent.getIntExtra("FLASH_TIME", 30);
                int i3 = intExtra >= 0 ? intExtra : 30;
                if (stringExtra == null) {
                    Log.e("NavProcessingService", "com.batescorp.pebble.nav.FLASH_NAVME - UUID is null");
                } else {
                    try {
                        a(UUID.fromString(stringExtra), Integer.valueOf(i3));
                        Log.d("NavProcessingService", "Starting NAVME 002");
                        PebbleKit.startAppOnPebble(getApplicationContext(), NotificationHandler.PEBBLE_NAV_UUID);
                    } catch (Exception e2) {
                        Log.e("NavProcessingService", "com.batescorp.pebble.nav.FLASH_NAVME - UUID is bad. UUID = " + stringExtra, e2);
                    }
                }
            } else if ("com.batescorp.pebble.nav.RELOAD_CONFIG".equals(intent.getAction())) {
                this.a.sendConfig();
            } else if ("com.batescorp.pebble.nav.RELOAD".equals(intent.getAction())) {
                this.a.resend();
                if (!NavState.getInstance(this).isRunning()) {
                    stopNavTimer();
                }
            } else if ("com.batescorp.pebble.nav.STOP".equals(intent.getAction())) {
                Intent intent2 = new Intent();
                intent2.setAction("pebble.nav.cancel");
                sendBroadcast(intent2);
            } else if ("com.batescorp.pebble.nav.LOCK_WHEN_STARTED".equals(intent.getAction())) {
                a(a.START);
            } else if ("com.batescorp.pebble.nav.START_NAV".equals(intent.getAction())) {
                h();
                boolean zNeedToUnlock = LockUtil.needToUnlock(this);
                if (zNeedToUnlock) {
                    this.h = ((PowerManager) getSystemService("power")).newWakeLock(268435462, "NavMeLocker");
                    this.h.acquire();
                    Log.d("NavProcessingService", "UNLOCK SCREEN");
                }
                String string = intent.getExtras().getString("map.direction.text", null);
                if (string == null) {
                    int i4 = intent.getExtras().getInt("map.direction");
                    List<DestinationValue> destinations = NavConfig.getInstance(this).getDestinations();
                    if (destinations != null && i4 < destinations.size()) {
                        destinationValue = destinations.get(i4);
                    }
                } else {
                    destinationValue = new DestinationValue("Voice", string, NavType.DRIVING);
                }
                String str = ("google.navigation:q=" + URLEncoder.encode(destinationValue.getDestination())) + "&mode=" + destinationValue.getNavType().getGoogleMapMode();
                Intent intent3 = new Intent(this, (Class<?>) MainActivity.class);
                intent3.addFlags(274726912);
                intent3.putExtra("type", "unlock");
                intent3.putExtra("uri", str);
                startActivity(intent3);
                if (zNeedToUnlock) {
                    a(a.START);
                }
                NavState.getInstance(this).setFinalMessage(destinationValue.getDescription() + " - waiting on navigation", NavDirectionIcon.NAV);
                PebbleState.getInstance(this).sendToPebble(this.a);
            } else if ("com.pebble.PebbleDataReceiver".equals(intent.getAction())) {
                int intExtra2 = intent.getIntExtra("key", 0);
                Log.d("NavProcessingService", "onStartCommand - " + intent.getAction() + " - " + intExtra2);
                if (intExtra2 == 13) {
                    this.a.pebbleDataReceiver(this, intent.getIntExtra("key", 0), 0L, intent.getStringExtra("value"));
                } else {
                    this.a.pebbleDataReceiver(this, intent.getIntExtra("key", 0), intent.getLongExtra("value", 0L), null);
                }
            } else if ("CLOSE_NAVME".equals(intent.getAction())) {
                UUID uuidP = p();
                Log.d("NavProcessingService", "CLOSE_NAVME - " + uuidP);
                if (uuidP == null || NotificationHandler.PEBBLE_SYSTEM_UUID.compareTo(uuidP) == 0) {
                    PebbleKit.closeAppOnPebble(this, NotificationHandler.PEBBLE_NAV_UUID);
                } else {
                    Log.d("NavProcessingService", "Starting NAVME 003");
                    PebbleKit.startAppOnPebble(this, uuidP);
                }
            } else if ("PROCESS_NAV_DATA".equals(intent.getAction())) {
                NotificationData notificationData = (NotificationData) intent.getParcelableExtra("navData");
                if (notificationData != null) {
                    navData(notificationData);
                }
            } else if ("PROCESS_NAV_CANCEL".equals(intent.getAction())) {
                navCanceled();
            } else if ("ALERT_TEST".equals(intent.getAction())) {
                a(intent.getIntExtra("alertCode", 1));
            }
        }
        return 1;
    }

    private void a(UUID uuid, Integer num) {
        this.a.flashScreen(uuid, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Float a() {
        Location lastKnownLocation = ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0 ? ((LocationManager) getSystemService("location")).getLastKnownLocation("gps") : null;
        if (lastKnownLocation != null && lastKnownLocation.hasSpeed()) {
            Float fValueOf = Float.valueOf(lastKnownLocation.getSpeed());
            Log.d("NavProcessingService", "navData (speed) : " + fValueOf);
            return fValueOf;
        }
        Log.d("NavProcessingService", "navData (speed) : null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NavGpsAccuracy b() {
        Location lastKnownLocation = null;
        if (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            lastKnownLocation = ((LocationManager) getSystemService("location")).getLastKnownLocation("gps");
        }
        Log.d("NavProcessingService", "getNavGpsAccuracy");
        if (lastKnownLocation != null && lastKnownLocation.hasAccuracy()) {
            float accuracy = lastKnownLocation.getAccuracy();
            Log.d("NavProcessingService", "getNavGpsAccuracy accuracy - " + accuracy + " - " + (System.currentTimeMillis() - lastKnownLocation.getTime()));
            if (System.currentTimeMillis() - lastKnownLocation.getTime() >= DateUtils.MILLIS_PER_MINUTE || accuracy <= 0.0f) {
                return NavGpsAccuracy.UNKNOWN;
            }
            if (accuracy <= 10.0f) {
                return NavGpsAccuracy.EXCELLENT;
            }
            if (accuracy <= 15.0f) {
                return NavGpsAccuracy.HIGH;
            }
            if (accuracy <= 30.0f) {
                return NavGpsAccuracy.MEDIUM;
            }
            return NavGpsAccuracy.LOW;
        }
        return NavGpsAccuracy.UNKNOWN;
    }

    protected void navData(NotificationData notificationData) {
        String packageName = notificationData.getPackageName();
        Log.d("NavProcessingService", "navData : " + packageName);
        if ("com.google.android.apps.maps".equals(packageName)) {
            NavState navState = NavState.getInstance(this);
            Log.d("NavProcessingService", "navData (process): " + packageName);
            Float fA = a();
            if (fA == null) {
                fA = Float.valueOf(0.0f);
            }
            if (NavState.getInstance(this).isRunning() || !StringUtil.isEmpty(notificationData.getNavDescription())) {
                if (!NavLicense.getInstance(this).haveLicense()) {
                    navState.setFinalMessage(getString(R.string.trial_expired), NavDirectionIcon.NAV);
                    PebbleState.getInstance(this).sendToPebble(this.a);
                    return;
                }
                if (!c()) {
                    navState.setFinalMessage(getString(R.string.invaild_lang), NavDirectionIcon.NAV);
                    PebbleState.getInstance(this).sendToPebble(this.a);
                    return;
                }
                if (notificationData.getNavDescription().equals(notificationData.getNavTitle())) {
                    NavConfig navConfig = NavConfig.getInstance(this);
                    NavState.getInstance(this).setFinalMessage(getString(R.string.you_have_arrived), NavDirectionIcon.NAV);
                    PebbleState.getInstance(this).sendToPebble(this.a);
                    a(navConfig.getGenericAlert());
                    NavState.getInstance(this).navStop();
                    if (NavConfig.getInstance(this).closeWhenDone()) {
                        g();
                    }
                    a(false);
                    return;
                }
                NavConfig navConfig2 = NavConfig.getInstance(this);
                navState.navStart();
                switch (NavHandler.getInstance(this).processNotificationHandler(fA.floatValue(), notificationData)) {
                    case GENERIC:
                        a(navConfig2.getGenericAlert());
                        break;
                    case FIRST_UNK:
                        a(navConfig2.getFirstAlert());
                        break;
                    case SECOND_UNK:
                        a(navConfig2.getSecondAlert());
                        break;
                    case FIRST_LEFT:
                        a(navConfig2.getFirstLeftAlert());
                        break;
                    case SECOND_LEFT:
                        a(navConfig2.getSecondLeftAlert());
                        break;
                    case FIRST_RIGHT:
                        a(navConfig2.getFirstRightAlert());
                        break;
                    case SECOND_RIGHT:
                        a(navConfig2.getSecondRightAlert());
                        break;
                }
                PebbleState.getInstance(this).sendToPebble(this.a);
                startNavTimer();
                if (!o()) {
                    startService(new Intent(this, (Class<?>) CheckLicenseService.class));
                }
                Log.d("NavProcessingService", "Check running " + o() + " : " + navConfig2.alertOnStart());
                if (!o() && navConfig2.alertOnStart()) {
                    Log.d("NavProcessingService", "Starting NAVME 001");
                    PebbleKit.startAppOnPebble(getApplicationContext(), NotificationHandler.PEBBLE_NAV_UUID);
                }
                a(true);
            }
        }
    }

    private boolean c() {
        Log.d("NavProcessingService", "isLaungageSupported = " + Locale.getDefault().getISO3Language() + " : '" + getResources().getString(R.string.language_supported) + "'");
        return "true".equals(getResources().getString(R.string.language_supported));
    }

    private void a(int i) {
        NavConfig navConfig = NavConfig.getInstance(this);
        if (!navConfig.disableAlertIfGoogleActive() || !d()) {
            Log.d("NavProcessingService", "sendAlert");
            if (navConfig.alertEnabled()) {
                Log.d("NavProcessingService", "sendAlert - alert enabled");
                if (navConfig.launchNavMeOnAlert()) {
                    Log.d("NavProcessingService", "Starting NAVME 004");
                    PebbleKit.startAppOnPebble(getApplicationContext(), NotificationHandler.PEBBLE_NAV_UUID);
                }
                this.a.sendAlert(i);
                return;
            }
            Log.d("NavProcessingService", "sendAlert - alert disabled");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return Build.VERSION.SDK_INT >= 21 ? f() : e();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @android.annotation.TargetApi(16)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean e() {
        /*
            r7 = this;
            r2 = 1
            r1 = 0
            java.lang.String r0 = "NavProcessingService"
            java.lang.String r3 = "checkCurrentApp"
            android.util.Log.d(r0, r3)
            boolean r0 = com.batescorp.pebble.nav.util.LockUtil.needToUnlock(r7)
            if (r0 == 0) goto L16
            java.lang.String r0 = "NavProcessingService"
            java.lang.String r3 = "isGoogleMapActive - screen locked"
            android.util.Log.d(r0, r3)
        L16:
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r7.getSystemService(r0)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            java.util.List r3 = r0.getRunningTasks(r2)
            if (r3 == 0) goto L2a
            int r0 = r3.size()
            if (r0 > 0) goto L2c
        L2a:
            r0 = r1
        L2b:
            return r0
        L2c:
            java.util.Iterator r4 = r3.iterator()
        L30:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L41
            java.lang.Object r0 = r4.next()
            android.app.ActivityManager$RunningTaskInfo r0 = (android.app.ActivityManager.RunningTaskInfo) r0
            android.content.ComponentName r0 = r0.topActivity
            if (r0 != 0) goto L30
            goto L30
        L41:
            java.lang.Object r0 = r3.get(r1)
            android.app.ActivityManager$RunningTaskInfo r0 = (android.app.ActivityManager.RunningTaskInfo) r0
            android.content.ComponentName r4 = r0.topActivity
            if (r4 != 0) goto L4d
            r0 = r1
            goto L2b
        L4d:
            java.lang.String r5 = "NavProcessingService"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r6 = "CURRENT Activity ::"
            java.lang.StringBuilder r6 = r0.append(r6)
            java.lang.Object r0 = r3.get(r1)
            android.app.ActivityManager$RunningTaskInfo r0 = (android.app.ActivityManager.RunningTaskInfo) r0
            android.content.ComponentName r0 = r0.topActivity
            java.lang.String r0 = r0.getClassName()
            java.lang.StringBuilder r0 = r6.append(r0)
            java.lang.String r3 = "   Package Name :  "
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r3 = r4.getPackageName()
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r5, r0)
            java.lang.String r0 = "com.google.android.apps.maps"
            java.lang.String r3 = r4.getPackageName()
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L8d
            r0 = r2
            goto L2b
        L8d:
            r0 = r1
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.service.NavProcessingService.e():boolean");
    }

    private boolean f() {
        ActivityManager.RunningAppProcessInfo next;
        try {
            Field declaredField = ActivityManager.RunningAppProcessInfo.class.getDeclaredField("processState");
            Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.importance == 100 && next.importanceReasonCode == 0) {
                    try {
                        Integer numValueOf = Integer.valueOf(declaredField.getInt(next));
                        if (numValueOf != null && numValueOf.intValue() == 2) {
                            break;
                        }
                    } catch (Exception e2) {
                        Log.e("NavProcessingService", "Error ", e2);
                        return false;
                    }
                }
            }
            if (next == null) {
                return false;
            }
            String[] strArr = next.pkgList;
            for (String str : strArr) {
                Log.d("NavProcessingService", "CURRENT Activity ::   Package Name :  " + str);
                if ("com.google.android.apps.maps".equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e3) {
            Log.e("NavProcessingService", "Error ", e3);
            return false;
        }
    }

    protected void navCanceled() {
        NavState navState = NavState.getInstance(this);
        NavConfig navConfig = NavConfig.getInstance(this);
        Log.d("NavProcessingService", "navCanceled - " + navState.isRunning());
        if (navState.isRunning() && !navState.isInErrorState()) {
            NavState.getInstance(this).setFinalMessage(getString(R.string.navigation_canceled), NavDirectionIcon.NAV);
            PebbleState.getInstance(this).sendToPebble(this.a);
            if (navConfig.reportNavCanceled()) {
                this.a.sendAlert(navConfig.getGenericAlert());
            }
            if (navConfig.closeWhenDone()) {
                g();
            }
        }
        navState.navStop();
        reset();
    }

    private void g() {
        a((UUID) null, (Integer) 5);
    }

    protected void reset() {
        PebbleState.getInstance(this).clearState();
        NavState.getInstance(this).clearState();
        NavHandler.getInstance(this).cancel();
        a(false);
    }

    class d extends TimerTask {
        private a b;
        private long c = -1;

        public d(a aVar) {
            this.b = aVar;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("NavProcessingService", "lockScreenTask - " + this.b);
            boolean zO = false;
            switch (this.b) {
                case START:
                    zO = NavProcessingService.this.o();
                    break;
                case STOP:
                    boolean zD = NavProcessingService.this.d();
                    Log.d("NavProcessingService", "sendSpeedTask (active) - " + zD);
                    if (zD) {
                        if (this.c <= 0) {
                            Log.d("NavProcessingService", "sendSpeedTask (active) - start");
                            this.c = System.currentTimeMillis();
                        } else {
                            Log.d("NavProcessingService", "sendSpeedTask (active/since) - " + (System.currentTimeMillis() - this.c));
                            if (System.currentTimeMillis() - this.c >= 3000) {
                                zO = true;
                            }
                        }
                    }
                    break;
            }
            if (zO || System.currentTimeMillis() - NavProcessingService.this.g.longValue() > DateUtils.MILLIS_PER_MINUTE) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                intent.setFlags(268435456);
                NavProcessingService.this.startActivity(intent);
                if (NavProcessingService.this.h != null) {
                    Log.d("NavProcessingService", "lockScreenTask - " + this.b + " - release lock");
                    NavProcessingService.this.h.release();
                    NavProcessingService.this.h = null;
                }
                if (Settings.System.canWrite(NavProcessingService.this)) {
                    int i = 15000;
                    int i2 = 30000;
                    if (NavConfig.getInstance(NavProcessingService.this).tryQuickLock()) {
                        i = 100;
                        i2 = SearchAuth.StatusCodes.AUTH_DISABLED;
                    }
                    try {
                        int i3 = Settings.System.getInt(NavProcessingService.this.getContentResolver(), "screen_off_timeout");
                        Log.d("NavProcessingService", "lockScreenTask - sleep current - " + i3);
                        Settings.System.putInt(NavProcessingService.this.getContentResolver(), "screen_off_timeout", i);
                        Log.d("NavProcessingService", "lockScreenTask - sleep after - " + Settings.System.getInt(NavProcessingService.this.getContentResolver(), "screen_off_timeout"));
                        try {
                            try {
                                Thread.sleep(i2);
                            } catch (InterruptedException e) {
                                Log.e("NavProcessingService", "lockScreenTask - Sleep failed", e);
                                Settings.System.putInt(NavProcessingService.this.getContentResolver(), "screen_off_timeout", i3);
                            }
                        } finally {
                            Settings.System.putInt(NavProcessingService.this.getContentResolver(), "screen_off_timeout", i3);
                        }
                    } catch (Settings.SettingNotFoundException e2) {
                        Log.e("NavProcessingService", "lockScreenTask - Settings failed", e2);
                    }
                } else {
                    Log.d("NavProcessingService", "lockScreenTask - No Write permissions - ");
                }
                Log.d("NavProcessingService", "lockScreenTask - done ");
                NavProcessingService.this.h();
            }
        }
    }

    class e extends TimerTask {
        private e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("NavProcessingService", "sendSpeedTask");
            Float fA = NavProcessingService.this.a();
            NavState navState = NavState.getInstance(NavProcessingService.this);
            switch (navState.getSpeedType()) {
                case MPH:
                    navState.setSpeed(com.batescorp.pebble.nav.lib.Constants.getMPH(fA));
                    break;
                case KPH:
                    navState.setSpeed(com.batescorp.pebble.nav.lib.Constants.getKPH(fA));
                    break;
                default:
                    navState.setSpeed("???");
                    break;
            }
            navState.setGpsAccuracy(NavProcessingService.this.b());
            PebbleState.getInstance(NavProcessingService.this).sendToPebble(NavProcessingService.this.a);
        }
    }

    class c extends TimerTask {
        private c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("NavProcessingService", "checkServiceNeededTask");
            if (!NavProcessingService.this.o()) {
                Log.d("NavProcessingService", "checkServiceNeededTask : shutdown");
                NavProcessingService.this.j();
            } else {
                Log.d("NavProcessingService", "checkServiceNeededTask :  running");
            }
        }
    }

    private void a(a aVar) {
        if (this.f == null) {
            this.g = Long.valueOf(System.currentTimeMillis());
            this.f = new Timer("LockScreen-Timer");
            this.f.scheduleAtFixedRate(new d(aVar), 0L, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f != null) {
            this.f.cancel();
            this.f = null;
            this.g = null;
        }
    }

    private void i() {
        if (this.d == null) {
            this.d = new Timer("Shutdown-Timer");
            this.d.scheduleAtFixedRate(new c(), 0L, DateUtils.MILLIS_PER_MINUTE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.d != null) {
            this.d.cancel();
            this.d = null;
        }
    }

    private void k() {
        if (this.e == null) {
            this.e = new Timer("Speed-Timer");
            this.e.scheduleAtFixedRate(new e(), 0L, 1000L);
        }
    }

    private void l() {
        if (this.e != null) {
            this.e.cancel();
            this.e = null;
        }
    }

    protected void startNavTimer() {
        if (Build.VERSION.SDK_INT < 18 && this.c == null) {
            this.c = new Timer("Start-Timer");
            this.c.scheduleAtFixedRate(new b(), 0L, 10000L);
        }
    }

    protected void stopNavTimer() {
        if (this.c != null) {
            this.c.cancel();
            this.c = null;
        }
    }

    protected boolean checkGoogleNavRunning() {
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager == null) {
            Log.e("NavProcessingService", "Failed to get ActivityManager");
            return true;
        }
        List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(100);
        if (runningServices == null) {
            Log.e("NavProcessingService", "Failed to get Running services");
            return true;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
            if ("com.google.android.apps.maps".equals(runningServiceInfo.service.getPackageName())) {
                Log.d("NavProcessingService", "Running package : " + runningServiceInfo.service);
                String className = runningServiceInfo.service.getClassName();
                if (className == null) {
                    Log.d("NavProcessingService", "Class not found???");
                } else if (className.endsWith(".NavigationService")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.a != null) {
            this.a.stop();
            this.a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        m();
        this.a = new PebbleMessageManager(this);
        this.a.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        Context applicationContext = getApplicationContext();
        getApplicationContext();
        return applicationContext.getSharedPreferences("NAV_PROCESS_SRV", 0).getBoolean("NAV_PROCESS_SRV_IS_RUNNING", false);
    }

    private void a(boolean z) {
        if (z) {
            k();
        } else {
            this.k = null;
            l();
            this.a.sendSpeed("", "");
        }
        Context applicationContext = getApplicationContext();
        getApplicationContext();
        SharedPreferences.Editor editorEdit = applicationContext.getSharedPreferences("NAV_PROCESS_SRV", 0).edit();
        editorEdit.putBoolean("NAV_PROCESS_SRV_IS_RUNNING", z);
        editorEdit.commit();
    }

    class b extends TimerTask {
        private b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("NavProcessingService", "checkNavRunningTask");
            if (NavProcessingService.this.checkGoogleNavRunning()) {
                Log.d("NavProcessingService", "checkNavRunningTask - Still Running");
                return;
            }
            Log.d("NavProcessingService", "checkNavRunningTask - Not Running");
            NavProcessingService.this.navCanceled();
            NavProcessingService.this.stopNavTimer();
        }
    }

    public class Receiver extends BroadcastReceiver {
        public Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d("NavProcessingService", "onReceive : " + intent.getAction());
            if (Constants.INTENT_PEBBLE_CONNECTED.equals(intent.getAction())) {
                NavProcessingService.this.n();
                PebbleState.getInstance(a()).clearState();
                PebbleState.getInstance(a()).sendToPebble(NavProcessingService.this.a);
            } else if (Constants.INTENT_PEBBLE_DISCONNECTED.endsWith(intent.getAction())) {
                NavProcessingService.this.m();
            }
        }

        private ContextWrapper a() {
            return NavProcessingService.this;
        }
    }

    private UUID p() {
        Context applicationContext = getApplicationContext();
        getApplicationContext();
        String string = applicationContext.getSharedPreferences(NAV_MESSAGE_MGR, 0).getString(NAV_MESSAGE_MGR_LAST_UUID, null);
        if (string == null) {
            return null;
        }
        return UUID.fromString(string);
    }

    public static void processNavCanceled(Context context) {
        Intent intent = new Intent();
        intent.setAction("PROCESS_NAV_CANCEL");
        intent.setClass(context, NavProcessingService.class);
        context.startService(intent);
    }
}
