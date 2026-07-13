package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import defpackage.aa;
import defpackage.ae;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class NotificationCompatApi20 {

    public static class Builder implements aa, NotificationBuilderWithBuilderAccessor {
        private Notification.Builder a;
        private Bundle b;

        public Builder(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2) {
            this.a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setGroup(str).setGroupSummary(z5).setSortKey(str2);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.b.putStringArray(NotificationCompat.EXTRA_PEOPLE, (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        }

        @Override // defpackage.aa
        public void addAction(NotificationCompatBase.Action action) {
            NotificationCompatApi20.a(this.a, action);
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification.Builder getBuilder() {
            return this.a;
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification build() {
            this.a.setExtras(this.b);
            return this.a.build();
        }
    }

    public static void a(Notification.Builder builder, NotificationCompatBase.Action action) {
        Notification.Action.Builder builder2 = new Notification.Action.Builder(action.getIcon(), action.getTitle(), action.getActionIntent());
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : ae.a(action.getRemoteInputs())) {
                builder2.addRemoteInput(remoteInput);
            }
        }
        if (action.getExtras() != null) {
            builder2.addExtras(action.getExtras());
        }
        builder.addAction(builder2.build());
    }

    public static NotificationCompatBase.Action a(Notification notification, int i, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        return a(notification.actions[i], factory, factory2);
    }

    private static NotificationCompatBase.Action a(Notification.Action action, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        return factory.build(action.icon, action.title, action.actionIntent, action.getExtras(), ae.a(action.getRemoteInputs(), factory2));
    }

    private static Notification.Action a(NotificationCompatBase.Action action) {
        Notification.Action.Builder builderAddExtras = new Notification.Action.Builder(action.getIcon(), action.getTitle(), action.getActionIntent()).addExtras(action.getExtras());
        RemoteInputCompatBase.RemoteInput[] remoteInputs = action.getRemoteInputs();
        if (remoteInputs != null) {
            android.app.RemoteInput[] remoteInputArrA = ae.a(remoteInputs);
            for (android.app.RemoteInput remoteInput : remoteInputArrA) {
                builderAddExtras.addRemoteInput(remoteInput);
            }
        }
        return builderAddExtras.build();
    }

    public static NotificationCompatBase.Action[] a(ArrayList<Parcelable> arrayList, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        if (arrayList == null) {
            return null;
        }
        NotificationCompatBase.Action[] actionArrNewArray = factory.newArray(arrayList.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= actionArrNewArray.length) {
                return actionArrNewArray;
            }
            actionArrNewArray[i2] = a((Notification.Action) arrayList.get(i2), factory, factory2);
            i = i2 + 1;
        }
    }

    public static ArrayList<Parcelable> a(NotificationCompatBase.Action[] actionArr) {
        if (actionArr == null) {
            return null;
        }
        ArrayList<Parcelable> arrayList = new ArrayList<>(actionArr.length);
        for (NotificationCompatBase.Action action : actionArr) {
            arrayList.add(a(action));
        }
        return arrayList;
    }

    public static boolean a(Notification notification) {
        return (notification.flags & 256) != 0;
    }

    public static String b(Notification notification) {
        return notification.getGroup();
    }

    public static boolean c(Notification notification) {
        return (notification.flags & 512) != 0;
    }

    public static String d(Notification notification) {
        return notification.getSortKey();
    }
}
