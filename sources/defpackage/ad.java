package defpackage;

import android.app.Notification;
import android.app.NotificationManager;

/* JADX INFO: loaded from: classes.dex */
public class ad {
    public static void a(NotificationManager notificationManager, String str, int i) {
        notificationManager.cancel(str, i);
    }

    public static void a(NotificationManager notificationManager, String str, int i, Notification notification) {
        notificationManager.notify(str, i, notification);
    }
}
