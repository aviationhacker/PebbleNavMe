package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.getpebble.android.kit.Constants;
import defpackage.aa;
import defpackage.af;
import defpackage.v;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class NotificationCompatJellybean {
    private static Field b;
    private static boolean c;
    private static Class<?> e;
    private static Field f;
    private static Field g;
    private static Field h;
    private static Field i;
    private static boolean j;
    private static final Object a = new Object();
    private static final Object d = new Object();

    public static class Builder implements aa, NotificationBuilderWithBuilderAccessor {
        private Notification.Builder a;
        private final Bundle b;
        private List<Bundle> c = new ArrayList();

        public Builder(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, int i4, CharSequence charSequence4, boolean z3, Bundle bundle, String str, boolean z4, String str2) {
            this.a = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z2).setPriority(i4).setProgress(i2, i3, z);
            this.b = new Bundle();
            if (bundle != null) {
                this.b.putAll(bundle);
            }
            if (z3) {
                this.b.putBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY, true);
            }
            if (str != null) {
                this.b.putString(NotificationCompatExtras.EXTRA_GROUP_KEY, str);
                if (z4) {
                    this.b.putBoolean(NotificationCompatExtras.EXTRA_GROUP_SUMMARY, true);
                } else {
                    this.b.putBoolean(NotificationManagerCompat.EXTRA_USE_SIDE_CHANNEL, true);
                }
            }
            if (str2 != null) {
                this.b.putString(NotificationCompatExtras.EXTRA_SORT_KEY, str2);
            }
        }

        @Override // defpackage.aa
        public void addAction(NotificationCompatBase.Action action) {
            this.c.add(NotificationCompatJellybean.a(this.a, action));
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification.Builder getBuilder() {
            return this.a;
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification build() {
            Notification notificationBuild = this.a.build();
            Bundle bundleA = NotificationCompatJellybean.a(notificationBuild);
            Bundle bundle = new Bundle(this.b);
            for (String str : this.b.keySet()) {
                if (bundleA.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            bundleA.putAll(bundle);
            SparseArray<Bundle> sparseArrayA = NotificationCompatJellybean.a(this.c);
            if (sparseArrayA != null) {
                NotificationCompatJellybean.a(notificationBuild).putSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS, sparseArrayA);
            }
            return notificationBuild;
        }
    }

    public static void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, CharSequence charSequence, boolean z, CharSequence charSequence2, CharSequence charSequence3) {
        Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(charSequence).bigText(charSequence3);
        if (z) {
            bigTextStyleBigText.setSummaryText(charSequence2);
        }
    }

    public static void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, CharSequence charSequence, boolean z, CharSequence charSequence2, Bitmap bitmap, Bitmap bitmap2, boolean z2) {
        Notification.BigPictureStyle bigPictureStyleBigPicture = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(charSequence).bigPicture(bitmap);
        if (z2) {
            bigPictureStyleBigPicture.bigLargeIcon(bitmap2);
        }
        if (z) {
            bigPictureStyleBigPicture.setSummaryText(charSequence2);
        }
    }

    public static void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, CharSequence charSequence, boolean z, CharSequence charSequence2, ArrayList<CharSequence> arrayList) {
        Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(charSequence);
        if (z) {
            bigContentTitle.setSummaryText(charSequence2);
        }
        Iterator<CharSequence> it = arrayList.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine(it.next());
        }
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (a) {
            if (c) {
                return null;
            }
            try {
                if (b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    b = declaredField;
                }
                Bundle bundle = (Bundle) b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                c = true;
                return null;
            } catch (NoSuchFieldException e3) {
                Log.e("NotificationCompat", "Unable to access notification extras", e3);
                c = true;
                return null;
            }
        }
    }

    public static NotificationCompatBase.Action a(NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2, int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        RemoteInputCompatBase.RemoteInput[] remoteInputArrA = null;
        if (bundle != null) {
            remoteInputArrA = af.a(v.a(bundle, NotificationCompatExtras.EXTRA_REMOTE_INPUTS), factory2);
        }
        return factory.build(i2, charSequence, pendingIntent, bundle, remoteInputArrA);
    }

    public static Bundle a(Notification.Builder builder, NotificationCompatBase.Action action) {
        builder.addAction(action.getIcon(), action.getTitle(), action.getActionIntent());
        Bundle bundle = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            bundle.putParcelableArray(NotificationCompatExtras.EXTRA_REMOTE_INPUTS, af.a(action.getRemoteInputs()));
        }
        return bundle;
    }

    public static int b(Notification notification) {
        int length;
        synchronized (d) {
            Object[] objArrG = g(notification);
            length = objArrG != null ? objArrG.length : 0;
        }
        return length;
    }

    public static NotificationCompatBase.Action a(Notification notification, int i2, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        NotificationCompatBase.Action actionA;
        SparseArray sparseParcelableArray;
        synchronized (d) {
            try {
                Object obj = g(notification)[i2];
                Bundle bundleA = a(notification);
                actionA = a(factory, factory2, g.getInt(obj), (CharSequence) h.get(obj), (PendingIntent) i.get(obj), (bundleA == null || (sparseParcelableArray = bundleA.getSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS)) == null) ? null : (Bundle) sparseParcelableArray.get(i2));
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification actions", e2);
                j = true;
                return null;
            }
        }
        return actionA;
    }

    private static Object[] g(Notification notification) {
        synchronized (d) {
            if (!a()) {
                return null;
            }
            try {
                return (Object[]) f.get(notification);
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification actions", e2);
                j = true;
                return null;
            }
        }
    }

    private static boolean a() {
        if (j) {
            return false;
        }
        try {
            if (f == null) {
                e = Class.forName("android.app.Notification$Action");
                g = e.getDeclaredField(Constants.CUST_ICON);
                h = e.getDeclaredField("title");
                i = e.getDeclaredField("actionIntent");
                f = Notification.class.getDeclaredField("actions");
                f.setAccessible(true);
            }
        } catch (ClassNotFoundException e2) {
            Log.e("NotificationCompat", "Unable to access notification actions", e2);
            j = true;
        } catch (NoSuchFieldException e3) {
            Log.e("NotificationCompat", "Unable to access notification actions", e3);
            j = true;
        }
        return j ? false : true;
    }

    public static NotificationCompatBase.Action[] a(ArrayList<Parcelable> arrayList, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        if (arrayList == null) {
            return null;
        }
        NotificationCompatBase.Action[] actionArrNewArray = factory.newArray(arrayList.size());
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= actionArrNewArray.length) {
                return actionArrNewArray;
            }
            actionArrNewArray[i3] = a((Bundle) arrayList.get(i3), factory, factory2);
            i2 = i3 + 1;
        }
    }

    private static NotificationCompatBase.Action a(Bundle bundle, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        return factory.build(bundle.getInt(Constants.CUST_ICON), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), af.a(v.a(bundle, "remoteInputs"), factory2));
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

    private static Bundle a(NotificationCompatBase.Action action) {
        Bundle bundle = new Bundle();
        bundle.putInt(Constants.CUST_ICON, action.getIcon());
        bundle.putCharSequence("title", action.getTitle());
        bundle.putParcelable("actionIntent", action.getActionIntent());
        bundle.putBundle("extras", action.getExtras());
        bundle.putParcelableArray("remoteInputs", af.a(action.getRemoteInputs()));
        return bundle;
    }

    public static boolean c(Notification notification) {
        return a(notification).getBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
    }

    public static String d(Notification notification) {
        return a(notification).getString(NotificationCompatExtras.EXTRA_GROUP_KEY);
    }

    public static boolean e(Notification notification) {
        return a(notification).getBoolean(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
    }

    public static String f(Notification notification) {
        return a(notification).getString(NotificationCompatExtras.EXTRA_SORT_KEY);
    }
}
