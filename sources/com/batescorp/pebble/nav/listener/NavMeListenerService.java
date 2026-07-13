package com.batescorp.pebble.nav.listener;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.batescorp.pebble.nav.lib.NotificationData;
import com.batescorp.pebble.nav.lib.NotificationHandler;
import com.batescorp.pebble.nav.service.NavProcessingService;
import java.util.concurrent.LinkedBlockingQueue;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class NavMeListenerService extends NotificationListenerService implements Runnable {
    LinkedBlockingQueue<NotificationHandler> a = new LinkedBlockingQueue<>(1);
    Thread b = null;
    IntentFilter c;
    private BroadcastReceiver d;

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 1;
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.d("ListenerService", "onCreate");
        super.onCreate();
        this.b = new Thread(this);
        this.b.start();
        this.d = new a();
        this.c = new IntentFilter();
        this.c.addAction("pebble.nav.cancel");
        registerReceiver(this.d, this.c);
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public void onDestroy() {
        Log.d("ListenerService", "onDestroy");
        if (this.b != null) {
            this.b.interrupt();
            this.b = null;
        }
        unregisterReceiver(this.d);
        super.onDestroy();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        try {
            Log.d("ListenerService", "onNotificationPosted 001 : " + statusBarNotification.getPackageName());
            if (a(statusBarNotification)) {
                a();
                NotificationHandler notificationHandlerPoll = this.a.poll();
                if (notificationHandlerPoll != null) {
                    Log.d("ListenerService", "SLIPPING !!!!");
                    notificationHandlerPoll.close();
                }
                this.a.put(NotificationHandler.getCloseableInstance(statusBarNotification.getNotification(), statusBarNotification.getPackageName(), this));
            }
        } catch (Exception e) {
            Log.e("ListenerService", "Unexpected error - onNotificationPosted", e);
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        try {
            Log.d("ListenerService", "onNotificationRemoved : " + statusBarNotification.getPackageName());
            if (a(statusBarNotification)) {
                b();
                NavProcessingService.processNavCanceled(this);
            }
        } catch (Exception e) {
            Log.e("ListenerService", "Unexpected error - onNotificationRemoved", e);
        }
    }

    private void a() {
        Log.d("ListenerService", "startAutoRefresh - 001");
        AlarmManager alarmManager = (AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (a(536870912) == null) {
            alarmManager.setInexactRepeating(0, System.currentTimeMillis() + 30000, DateUtils.MILLIS_PER_MINUTE, a(134217728));
            Log.d("ListenerService", "startAutoRefresh - 002");
        }
    }

    private void b() {
        Log.d("ListenerService", "stopAutoRefresh");
        a(134217728).cancel();
    }

    private PendingIntent a(int i) {
        Intent intent = new Intent(this, (Class<?>) NavProcessingService.class);
        intent.setAction("com.batescorp.pebble.nav.RELOAD");
        return PendingIntent.getService(this, 9999, intent, i);
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                NotificationHandler notificationHandlerTake = this.a.take();
                if (notificationHandlerTake != null) {
                    try {
                        try {
                            NotificationData notificationDataCreateInstance = NotificationData.createInstance(this, notificationHandlerTake);
                            Intent intent = new Intent();
                            intent.setClass(this, NavProcessingService.class);
                            intent.setAction("PROCESS_NAV_DATA");
                            intent.putExtra("navData", notificationDataCreateInstance);
                            startService(intent);
                        } finally {
                            try {
                                notificationHandlerTake.close();
                            } catch (Exception e) {
                                Log.e("ListenerService", "Unexpected error - run", e);
                            }
                        }
                    } catch (Exception e2) {
                        Log.e("ListenerService", "Unexpected error - run", e2);
                        try {
                            notificationHandlerTake.close();
                        } catch (Exception e3) {
                            Log.e("ListenerService", "Unexpected error - run", e3);
                        }
                    }
                }
            } catch (InterruptedException e4) {
                Log.e("ListenerService", "InterruptedException - run", e4);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(StatusBarNotification statusBarNotification) {
        String packageName = statusBarNotification.getPackageName();
        Log.d("ListenerService", "onNotificationPosted 001 : " + packageName);
        if (!packageName.contains("com.google.android.apps.maps") || !statusBarNotification.isOngoing()) {
            return false;
        }
        Log.d("ListenerService", "onNotificationPosted 001 - " + statusBarNotification.getId());
        return statusBarNotification.getId() == 1;
    }

    class a extends BroadcastReceiver {
        private a() {
            Log.d("ListenerService", "Instantiated InitializationReceiver");
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r11, android.content.Intent r12) throws java.lang.Throwable {
            /*
                r10 = this;
                r1 = 0
                java.lang.String r0 = "ListenerService"
                java.lang.String r2 = "Cancel"
                android.util.Log.d(r0, r2)
                com.batescorp.pebble.nav.listener.NavMeListenerService r0 = com.batescorp.pebble.nav.listener.NavMeListenerService.this     // Catch: java.lang.Exception -> L70
                android.service.notification.StatusBarNotification[] r2 = r0.getActiveNotifications()     // Catch: java.lang.Exception -> L70
                int r3 = r2.length     // Catch: java.lang.Exception -> L70
                r0 = 0
            L10:
                if (r0 >= r3) goto L6a
                r4 = r2[r0]     // Catch: java.lang.Exception -> L70
                java.lang.String r5 = r4.getPackageName()     // Catch: java.lang.Exception -> L70
                java.lang.String r6 = "ListenerService"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L70
                r7.<init>()     // Catch: java.lang.Exception -> L70
                java.lang.String r8 = "onNotificationPosted 001 : "
                java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Exception -> L70
                java.lang.StringBuilder r5 = r7.append(r5)     // Catch: java.lang.Exception -> L70
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L70
                android.util.Log.d(r6, r5)     // Catch: java.lang.Exception -> L70
                com.batescorp.pebble.nav.listener.NavMeListenerService r5 = com.batescorp.pebble.nav.listener.NavMeListenerService.this     // Catch: java.lang.Exception -> L70
                boolean r5 = com.batescorp.pebble.nav.listener.NavMeListenerService.a(r5, r4)     // Catch: java.lang.Exception -> L70
                if (r5 != 0) goto L3b
                int r0 = r0 + 1
                goto L10
            L3b:
                android.app.Notification r0 = r4.getNotification()     // Catch: java.lang.Exception -> L70
                java.lang.String r2 = r4.getPackageName()     // Catch: java.lang.Exception -> L70
                com.batescorp.pebble.nav.lib.NotificationHandler r2 = com.batescorp.pebble.nav.lib.NotificationHandler.getCloseableInstance(r0, r2, r11)     // Catch: java.lang.Exception -> L70
                r3 = 0
                java.util.Collection r0 = r2.getButtons()     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
                java.util.Iterator r4 = r0.iterator()     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
                r0 = r1
            L51:
                boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
                if (r5 == 0) goto L5e
                java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
                android.widget.Button r0 = (android.widget.Button) r0     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
                goto L51
            L5e:
                if (r0 == 0) goto L63
                r0.callOnClick()     // Catch: java.lang.Throwable -> L7d java.lang.Throwable -> L94
            L63:
                if (r2 == 0) goto L6a
                if (r1 == 0) goto L79
                r2.close()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L70
            L6a:
                return
            L6b:
                r0 = move-exception
                r3.addSuppressed(r0)     // Catch: java.lang.Exception -> L70
                goto L6a
            L70:
                r0 = move-exception
                java.lang.String r1 = "ListenerService"
                java.lang.String r2 = "Unexpected error - onNotificationPosted"
                android.util.Log.e(r1, r2, r0)
                goto L6a
            L79:
                r2.close()     // Catch: java.lang.Exception -> L70
                goto L6a
            L7d:
                r0 = move-exception
                throw r0     // Catch: java.lang.Throwable -> L7f
            L7f:
                r1 = move-exception
                r9 = r1
                r1 = r0
                r0 = r9
            L83:
                if (r2 == 0) goto L8a
                if (r1 == 0) goto L90
                r2.close()     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L8b
            L8a:
                throw r0     // Catch: java.lang.Exception -> L70
            L8b:
                r2 = move-exception
                r1.addSuppressed(r2)     // Catch: java.lang.Exception -> L70
                goto L8a
            L90:
                r2.close()     // Catch: java.lang.Exception -> L70
                goto L8a
            L94:
                r0 = move-exception
                goto L83
            */
            throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.listener.NavMeListenerService.a.onReceive(android.content.Context, android.content.Intent):void");
        }
    }
}
