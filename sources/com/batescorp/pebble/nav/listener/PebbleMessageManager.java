package com.batescorp.pebble.nav.listener;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.activity.DestinationValue;
import com.batescorp.pebble.nav.lib.NotificationHandler;
import com.batescorp.pebble.nav.processor.NavConfig;
import com.batescorp.pebble.nav.processor.NavDirectionIcon;
import com.batescorp.pebble.nav.processor.NavLicense;
import com.batescorp.pebble.nav.processor.NavState;
import com.batescorp.pebble.nav.processor.PebbleState;
import com.batescorp.pebble.nav.service.NavProcessingService;
import com.batescorp.pebble.nav.util.SystemUtil;
import com.getpebble.android.kit.PebbleKit;
import com.getpebble.android.kit.util.PebbleDictionary;
import com.google.common.base.Splitter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class PebbleMessageManager implements Runnable {
    private Handler d;
    private Thread k;
    private PebbleKit.PebbleAckReceiver l;
    private PebbleKit.PebbleNackReceiver m;
    private PebbleKit.PebbleDataReceiver n;
    private final NavProcessingService r;
    private long[] a = {45, 46, 47};
    private int b = 1;
    private int[] c = {167, 155, 101, 111, 98, HttpStatus.CREATED_201, HttpStatus.PARTIAL_CONTENT_206, HttpStatus.NON_AUTHORITATIVE_INFORMATION_203, HttpStatus.MULTI_STATUS_207, HttpStatus.ACCEPTED_202, 165, 156, 135, 133, 76, 105, 33, 240};
    private final BlockingQueue<PebbleMessageManagerEntry> e = new LinkedBlockingQueue();
    private final Object f = new Object();
    private Long g = null;
    private CountDownLatch h = new CountDownLatch(1);
    private Timer i = null;
    private Timer j = null;
    private int o = 150;
    private final int p = 10;
    private int q = 0;

    static /* synthetic */ int j(PebbleMessageManager pebbleMessageManager) {
        int i = pebbleMessageManager.q;
        pebbleMessageManager.q = i + 1;
        return i;
    }

    public PebbleMessageManager(NavProcessingService navProcessingService) {
        this.r = navProcessingService;
    }

    @Override // java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.d = new Handler() { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Log.w("PebbleMessageManager", "Please post() your blocking runnables to Mr Manager, don't use sendMessage()");
            }
        };
        this.h.countDown();
        Looper.loop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            this.h.await();
            this.d.post(new Runnable() { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (PebbleMessageManager.this.f) {
                        Log.w("PebbleMessageManager", "consumeAsync - synchronized (isMessagePending) : " + (PebbleMessageManager.this.g == null ? "NA" : Long.valueOf(System.currentTimeMillis() - PebbleMessageManager.this.g.longValue())));
                        if (PebbleMessageManager.this.g == null || System.currentTimeMillis() - PebbleMessageManager.this.g.longValue() >= 5000) {
                            Log.w("PebbleMessageManager", "consumeAsync - synchronized (messageQueue)");
                            synchronized (PebbleMessageManager.this.e) {
                                Log.w("PebbleMessageManager", "consumeAsync - synchronized (messageQueue) : " + PebbleMessageManager.this.e.size());
                                if (PebbleMessageManager.this.e.size() != 0) {
                                    Log.w("PebbleMessageManager", "consumeAsync - synchronized (messageQueue) : sendDataToPebbleWithTransactionId");
                                    PebbleMessageManager.this.g = Long.valueOf(System.currentTimeMillis());
                                    PebbleMessageManager.this.e();
                                    PebbleKit.sendDataToPebbleWithTransactionId(PebbleMessageManager.this.b(), NotificationHandler.PEBBLE_NAV_UUID, ((PebbleMessageManagerEntry) PebbleMessageManager.this.e.peek()).getPebbleDictionary(), PebbleMessageManager.this.o);
                                    PebbleMessageManager.this.h();
                                }
                            }
                        }
                    }
                }
            });
        } catch (InterruptedException e) {
            Log.d("PebbleMessageManager", "consumeAsync interrupted", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ContextWrapper b() {
        return this.r;
    }

    public void notifyAckReceivedAsync() {
        this.d.post(new Runnable() { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (PebbleMessageManager.this.f) {
                    PebbleMessageManager.this.i();
                    PebbleMessageManager.this.g = null;
                    PebbleMessageManager.this.q = 0;
                    Log.w("PebbleMessageManager", "notifyAckReceivedAsync - synchronized (messageQueue)");
                    synchronized (PebbleMessageManager.this.e) {
                        Log.w("PebbleMessageManager", "notifyAckReceivedAsync - synchronized (messageQueue) : " + PebbleMessageManager.this.e.size());
                        if (PebbleMessageManager.this.e.size() > 0) {
                            PebbleMessageManager.this.e.remove();
                        }
                    }
                }
                PebbleMessageManager.this.a();
            }
        });
    }

    public void notifyNackReceivedAsync() {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.d.post(new Runnable() { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (PebbleMessageManager.this.f) {
                    PebbleMessageManager.this.g = null;
                    PebbleMessageManager.j(PebbleMessageManager.this);
                    Log.i("PebbleMessageManager", "Pebble - Nack : " + PebbleMessageManager.this.q);
                    if (PebbleMessageManager.this.q > 10) {
                        PebbleMessageManager.this.d();
                    }
                }
                PebbleMessageManager.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        synchronized (this.e) {
            if (this.e.size() > 0) {
                this.e.clear();
            }
        }
        this.q = 0;
    }

    public boolean offer(PebbleMessageManagerEntryType pebbleMessageManagerEntryType, PebbleDictionary pebbleDictionary) {
        boolean zOffer = this.e.offer(new PebbleMessageManagerEntry(pebbleDictionary, pebbleMessageManagerEntryType));
        Log.i("PebbleMessageManager", "Pebble - offer : " + zOffer);
        if (zOffer) {
            a();
        }
        return zOffer;
    }

    public void removeAll(PebbleMessageManagerEntryType pebbleMessageManagerEntryType) {
        PebbleMessageManagerEntry pebbleMessageManagerEntryPeek;
        synchronized (this.f) {
            if (this.g != null && ((pebbleMessageManagerEntryPeek = this.e.peek()) == null || pebbleMessageManagerEntryPeek.getType().equals(pebbleMessageManagerEntryType))) {
                this.g = null;
                e();
            }
            synchronized (this.e) {
                ArrayList arrayList = new ArrayList();
                for (PebbleMessageManagerEntry pebbleMessageManagerEntry : this.e) {
                    if (pebbleMessageManagerEntry.getType().equals(pebbleMessageManagerEntryType)) {
                        arrayList.add(pebbleMessageManagerEntry);
                    }
                }
                this.e.removeAll(arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.b = (this.b + 1) % this.c.length;
        this.o = this.c[this.b];
    }

    public void sendAlert(int i) {
        if (!NavConfig.getInstance(b()).buzzOnAlert()) {
            i = 1;
        }
        removeAll(PebbleMessageManagerEntryType.ALERT);
        offer(PebbleMessageManagerEntryType.ALERT, a(4, Integer.valueOf(i)));
    }

    public void sendDirection(String str) {
        Log.i("PebbleMessageManager", "Pebble - sendDirection : " + str);
        removeAll(PebbleMessageManagerEntryType.DIRECTION);
        offer(PebbleMessageManagerEntryType.DIRECTION, a(0, (Integer) 0));
        Iterator<String> it = Splitter.fixedLength(64).split(str).iterator();
        while (it.hasNext()) {
            offer(PebbleMessageManagerEntryType.DIRECTION, a(1, it.next()));
        }
        offer(PebbleMessageManagerEntryType.DIRECTION, a(2, (Integer) 0));
        Log.i("PebbleMessageManager", "Pebble - sendDirection 001 : " + str);
    }

    public void sendIcon(NavDirectionIcon navDirectionIcon) {
        try {
            Log.i("PebbleMessageManager", "Pebble - sendIcon : ");
            removeAll(PebbleMessageManagerEntryType.NAV_ICON);
            offer(PebbleMessageManagerEntryType.NAV_ICON, a(8, Integer.valueOf(navDirectionIcon.getWatchImageCode())));
        } catch (Exception e) {
            Log.e("PebbleMessageManager", "Failed to send icon ", e);
        }
    }

    public void sendDestinations() {
        NavConfig navConfig = NavConfig.getInstance(b());
        Log.i("PebbleMessageManager", "Pebble - sendDestinations");
        removeAll(PebbleMessageManagerEntryType.DESTINATION);
        int destinationVer = navConfig.getDestinationVer();
        offer(PebbleMessageManagerEntryType.DESTINATION, a(16, (Integer) 0));
        for (DestinationValue destinationValue : navConfig.getDestinations()) {
            Log.i("PebbleMessageManager", "Pebble - sendDestinations 001 : " + destinationValue.getDescription());
            offer(PebbleMessageManagerEntryType.DESTINATION, a(17, destinationValue.getDescription()));
        }
        offer(PebbleMessageManagerEntryType.DESTINATION, a(18, Integer.valueOf(destinationVer)));
        Log.i("PebbleMessageManager", "Pebble - sendDestinations 999 : ");
    }

    public void sendDesinationVersion() {
        removeAll(PebbleMessageManagerEntryType.DESTINATION_VER);
        offer(PebbleMessageManagerEntryType.DESTINATION_VER, a(19, Integer.valueOf(NavConfig.getInstance(b()).getDestinationVer())));
    }

    public void sendDistance(String str, String str2) {
        removeAll(PebbleMessageManagerEntryType.DISTANCE);
        Log.i("PebbleMessageManager", "Pebble - sendDistance : " + str + " : " + str2);
        offer(PebbleMessageManagerEntryType.DISTANCE, a(3, str));
        offer(PebbleMessageManagerEntryType.DISTANCE, a(5, str2));
    }

    public void sendSpeed(String str, String str2) {
        removeAll(PebbleMessageManagerEntryType.SPEED);
        Log.i("PebbleMessageManager", "Pebble - sendSpeed : " + str + " : " + str2);
        offer(PebbleMessageManagerEntryType.SPEED, a(13, str));
        offer(PebbleMessageManagerEntryType.SPEED, a(14, str2));
    }

    public void sendGpsAccuracy(String str) {
        removeAll(PebbleMessageManagerEntryType.GPS_ACCURACY);
        Log.i("PebbleMessageManager", "Pebble - sendGpsAccuracy : " + str);
        offer(PebbleMessageManagerEntryType.GPS_ACCURACY, a(15, str));
    }

    public void sendConfig() {
        NavConfig navConfig = NavConfig.getInstance(b());
        Log.d("PebbleMessageManager", "sendConfig - alertEnabled - " + (navConfig.alertEnabled() ? 1 : 0));
        offer(PebbleMessageManagerEntryType.ALERT_ENABLED, a(12, Integer.valueOf(navConfig.alertEnabled() ? 1 : 0)));
    }

    public void resend() {
        Log.i("PebbleMessageManager", "resend");
        PebbleState.getInstance(b()).clearState();
        PebbleState.getInstance(b()).sendToPebble(this);
    }

    private boolean f() {
        Log.d("PebbleMessageManager", "isLaungageSupported = " + Locale.getDefault().getISO3Language() + " : '" + b().getResources().getString(R.string.language_supported) + "'");
        return "true".equals(b().getResources().getString(R.string.language_supported));
    }

    public void sendEtaDistance(String str, String str2) {
        removeAll(PebbleMessageManagerEntryType.ETA_DISTANCE);
        Log.i("PebbleMessageManager", "Pebble - sendEtaDistance : " + str + " : " + str2);
        offer(PebbleMessageManagerEntryType.ETA_DISTANCE, a(7, str + str2));
    }

    public void sendEtaArrivalTime(String str) {
        removeAll(PebbleMessageManagerEntryType.ETA_TIME);
        Log.i("PebbleMessageManager", "Pebble - sendEtaArrivalTime : " + str);
        offer(PebbleMessageManagerEntryType.ETA_TIME, a(6, str));
    }

    public void flashScreen(UUID uuid, int i) {
        stopCheckFlashTimer();
        Log.d("PebbleMessageManager", "flashScreen - " + uuid + " - " + i);
        if (uuid != null && NotificationHandler.PEBBLE_NAV_UUID.compareTo(uuid) != 0) {
            a(uuid);
        }
        if (i > 0) {
            startCheckFlashTimer(i);
        }
    }

    private void a(UUID uuid) {
        b(uuid);
        removeAll(PebbleMessageManagerEntryType.HAVE_UUID);
        Log.i("PebbleMessageManager", "Pebble - haveUUID : " + uuid);
        offer(PebbleMessageManagerEntryType.HAVE_UUID, a(9, (Integer) 1));
    }

    private PebbleDictionary a(int i, String str) {
        PebbleDictionary pebbleDictionary = new PebbleDictionary();
        pebbleDictionary.addString(i, str);
        return pebbleDictionary;
    }

    private PebbleDictionary a(int i, Integer num) {
        PebbleDictionary pebbleDictionary = new PebbleDictionary();
        pebbleDictionary.addInt32(i, num.intValue());
        return pebbleDictionary;
    }

    public void start() {
        this.l = new PebbleKit.PebbleAckReceiver(NotificationHandler.PEBBLE_NAV_UUID) { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.5
            @Override // com.getpebble.android.kit.PebbleKit.PebbleAckReceiver
            public void receiveAck(Context context, int i) {
                Log.i("PebbleMessageManager", "Pebble - receiveAck - " + i);
                if (i != PebbleMessageManager.this.o) {
                    Log.i("PebbleMessageManager", "Pebble - receiveAck - Unknown ID - " + i);
                } else {
                    PebbleMessageManager.this.notifyAckReceivedAsync();
                }
            }
        };
        PebbleKit.registerReceivedAckHandler(b(), this.l);
        this.m = new PebbleKit.PebbleNackReceiver(NotificationHandler.PEBBLE_NAV_UUID) { // from class: com.batescorp.pebble.nav.listener.PebbleMessageManager.6
            @Override // com.getpebble.android.kit.PebbleKit.PebbleNackReceiver
            public void receiveNack(Context context, int i) {
                Log.i("PebbleMessageManager", "Pebble - receiveNack - " + i);
                if (i == PebbleMessageManager.this.o) {
                    PebbleMessageManager.this.notifyNackReceivedAsync();
                }
            }
        };
        PebbleKit.registerReceivedNackHandler(b(), this.m);
        this.k = new Thread(this);
        this.k.start();
    }

    public void stop() {
        if (this.k != null) {
            this.k.interrupt();
        }
        if (this.n != null) {
            b().unregisterReceiver(this.n);
            this.n = null;
        }
        if (this.l != null) {
            b().unregisterReceiver(this.l);
            this.l = null;
        }
        if (this.m != null) {
            b().unregisterReceiver(this.m);
            this.m = null;
        }
        stopCheckFlashTimer();
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("PebbleMessageManager", "MessageSendTimeout (Fire)");
            PebbleMessageManager.this.c();
        }
    }

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d("PebbleMessageManager", "CheckFlashTimerTask (Fire)");
            PebbleMessageManager.this.g();
            PebbleMessageManager.this.stopCheckFlashTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Log.d("PebbleMessageManager", "returnToOldApp");
        Intent intent = new Intent();
        intent.setClass(b(), NavProcessingService.class);
        intent.setAction("CLOSE_NAVME");
        b().startService(intent);
    }

    protected void startCheckFlashTimer(long j) {
        Log.d("PebbleMessageManager", "CheckFlashTimerTask (start)");
        this.i = new Timer("Start-CheckFlash");
        this.i.schedule(new a(), 1000 * j);
    }

    protected void stopCheckFlashTimer() {
        Log.d("PebbleMessageManager", "CheckFlashTimerTask (stop)");
        if (this.i != null) {
            this.i.cancel();
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        if (this.j == null) {
            this.j = new Timer("Start-CheckFlash");
            this.j.schedule(new b(), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        if (this.j != null) {
            this.j.cancel();
            this.j = null;
        }
    }

    public void pebbleDataReceiver(Context context, int i, long j, String str) {
        Log.d("PebbleMessageManager", "pebbleDataReceiver : " + i + " : " + j);
        if (i == 1) {
            sendConfig();
            Log.i("PebbleMessageManager", "Pebble - Received value=" + j + " for key: 0");
            a(j);
            sendDesinationVersion();
            return;
        }
        if (i == 2) {
            Log.i("PebbleMessageManager", "Pebble - Received (ack) value=" + j + " for key: 0");
            return;
        }
        if (i == 3) {
            Log.i("PebbleMessageManager", "Pebble - Received (flashcancel) value=" + j + " for key: 0");
            stopCheckFlashTimer();
            return;
        }
        if (i == 4) {
            Log.i("PebbleMessageManager", "Pebble - Received (return to old app) value=" + j + " for key: 0");
            g();
            return;
        }
        if (i == 5) {
            Log.i("PebbleMessageManager", "Pebble - Received (alertEnabled) value=" + j + " for key: 0");
            NavConfig.getInstance(context).alertEnabled(j > 0);
            return;
        }
        if (i == 7) {
            Intent intent = new Intent();
            intent.setClass(context, NavProcessingService.class);
            intent.setAction("com.batescorp.pebble.nav.STOP");
            context.startService(intent);
            return;
        }
        if (i == 8) {
            Log.i("PebbleMessageManager", "Pebble - Received (startNav)");
            Intent intent2 = new Intent();
            intent2.setClass(context, NavProcessingService.class);
            intent2.setAction("com.batescorp.pebble.nav.START_NAV");
            intent2.putExtra("map.direction", (int) j);
            context.startService(intent2);
            return;
        }
        if (i == 9) {
            Log.i("PebbleMessageManager", "Pebble - Received (sendDestinations)");
            sendDestinations();
            return;
        }
        if (i == 10) {
            Log.i("PebbleMessageManager", "Pebble - Received (sendDesinationVersion)");
            sendDesinationVersion();
            return;
        }
        if (i == 11) {
            Log.i("PebbleMessageManager", "Pebble (close) - Received value=" + j + " for key: 0");
            return;
        }
        if (i == 12) {
            a(j);
            return;
        }
        if (i == 13) {
            Intent intent3 = new Intent();
            intent3.setClass(context, NavProcessingService.class);
            intent3.setAction("com.batescorp.pebble.nav.START_NAV");
            intent3.putExtra("map.direction.text", str);
            context.startService(intent3);
        }
    }

    private void a(long j) {
        NavState navState = NavState.getInstance(b());
        Log.i("PebbleMessageManager", "Pebble (keepalive) - Received value=" + j + " : navRunning: " + navState.isRunning());
        boolean zNotificationEnable = true;
        try {
            zNotificationEnable = SystemUtil.notificationEnable(b());
        } catch (Exception e) {
        }
        boolean zIsInErrorState = navState.isInErrorState();
        if (j != 1 && j > SystemUtil.maxInArray(this.a)) {
            navState.setFinalMessage("Update NavMe Android app.", NavDirectionIcon.NAV);
            navState.setNavErrorState();
        } else if (j != 1 && j < SystemUtil.minInArray(this.a)) {
            navState.setFinalMessage("Update NavMe watch app.", NavDirectionIcon.NAV);
            navState.setNavErrorState();
        } else if (!NavLicense.getInstance(b()).haveLicense()) {
            navState.setFinalMessage(b().getString(R.string.trial_expired), NavDirectionIcon.NAV);
            navState.setNavErrorState();
        } else if (!f()) {
            navState.setFinalMessage(b().getString(R.string.invaild_lang), NavDirectionIcon.NAV);
            navState.setNavErrorState();
        } else if (!zNotificationEnable) {
            navState.setFinalMessage(b().getString(R.string.notification_disabled), NavDirectionIcon.NAV);
            navState.setNavErrorState();
        } else {
            navState.clearNavErrorState();
            if (!navState.isRunning()) {
                navState.clearState();
            }
        }
        PebbleState pebbleState = PebbleState.getInstance(b());
        if (zIsInErrorState && !navState.isInErrorState()) {
            pebbleState.clearState();
        }
        pebbleState.sendToPebble(this);
        resend();
    }

    @SuppressLint({"CommitPrefEdits"})
    private void b(UUID uuid) {
        SharedPreferences.Editor editorEdit = b().getSharedPreferences(NavProcessingService.NAV_MESSAGE_MGR, 0).edit();
        editorEdit.putString(NavProcessingService.NAV_MESSAGE_MGR_LAST_UUID, uuid.toString());
        editorEdit.commit();
    }
}
