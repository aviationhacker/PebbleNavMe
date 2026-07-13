package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import defpackage.ad;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    private static final int a;
    private static String c;
    private static h h;
    private static final b i;
    private final Context e;
    private final NotificationManager f;
    private static final Object b = new Object();
    private static Set<String> d = new HashSet();
    private static final Object g = new Object();

    interface b {
        int a();

        void a(NotificationManager notificationManager, String str, int i);

        void a(NotificationManager notificationManager, String str, int i, Notification notification);
    }

    interface i {
        void a(INotificationSideChannel iNotificationSideChannel);
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            i = new e();
        } else if (Build.VERSION.SDK_INT >= 5) {
            i = new d();
        } else {
            i = new c();
        }
        a = i.a();
    }

    public static NotificationManagerCompat from(Context context) {
        return new NotificationManagerCompat(context);
    }

    private NotificationManagerCompat(Context context) {
        this.e = context;
        this.f = (NotificationManager) this.e.getSystemService("notification");
    }

    static class c implements b {
        c() {
        }

        @Override // android.support.v4.app.NotificationManagerCompat.b
        public void a(NotificationManager notificationManager, String str, int i) {
            notificationManager.cancel(i);
        }

        @Override // android.support.v4.app.NotificationManagerCompat.b
        public void a(NotificationManager notificationManager, String str, int i, Notification notification) {
            notificationManager.notify(i, notification);
        }

        @Override // android.support.v4.app.NotificationManagerCompat.b
        public int a() {
            return 1;
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.app.NotificationManagerCompat.c, android.support.v4.app.NotificationManagerCompat.b
        public void a(NotificationManager notificationManager, String str, int i) {
            ad.a(notificationManager, str, i);
        }

        @Override // android.support.v4.app.NotificationManagerCompat.c, android.support.v4.app.NotificationManagerCompat.b
        public void a(NotificationManager notificationManager, String str, int i, Notification notification) {
            ad.a(notificationManager, str, i, notification);
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.app.NotificationManagerCompat.c, android.support.v4.app.NotificationManagerCompat.b
        public int a() {
            return 33;
        }
    }

    public void cancel(int i2) {
        cancel(null, i2);
    }

    public void cancel(String str, int i2) {
        i.a(this.f, str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.e.getPackageName(), i2, str));
        }
    }

    public void cancelAll() {
        this.f.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.e.getPackageName()));
        }
    }

    public void notify(int i2, Notification notification) {
        notify(null, i2, notification);
    }

    public void notify(String str, int i2, Notification notification) {
        if (a(notification)) {
            a(new f(this.e.getPackageName(), i2, str, notification));
            i.a(this.f, str, i2);
        } else {
            i.a(this.f, str, i2, notification);
        }
    }

    public static Set<String> getEnabledListenerPackages(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        if (string != null && !string.equals(c)) {
            String[] strArrSplit = string.split(":");
            HashSet hashSet = new HashSet(strArrSplit.length);
            for (String str : strArrSplit) {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                if (componentNameUnflattenFromString != null) {
                    hashSet.add(componentNameUnflattenFromString.getPackageName());
                }
            }
            synchronized (b) {
                d = hashSet;
                c = string;
            }
        }
        return d;
    }

    private static boolean a(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL);
    }

    private void a(i iVar) {
        synchronized (g) {
            if (h == null) {
                h = new h(this.e.getApplicationContext());
            }
        }
        h.a(iVar);
    }

    static class h implements ServiceConnection, Handler.Callback {
        private final Context a;
        private final Handler c;
        private final Map<ComponentName, a> d = new HashMap();
        private Set<String> e = new HashSet();
        private final HandlerThread b = new HandlerThread("NotificationManagerCompat");

        public h(Context context) {
            this.a = context;
            this.b.start();
            this.c = new Handler(this.b.getLooper(), this);
        }

        public void a(i iVar) {
            this.c.obtainMessage(0, iVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    b((i) message.obj);
                    break;
                case 1:
                    g gVar = (g) message.obj;
                    a(gVar.a, gVar.b);
                    break;
                case 2:
                    a((ComponentName) message.obj);
                    break;
                case 3:
                    b((ComponentName) message.obj);
                    break;
            }
            return true;
        }

        private void b(i iVar) {
            a();
            for (a aVar : this.d.values()) {
                aVar.d.add(iVar);
                d(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                aVar.c = INotificationSideChannel.Stub.asInterface(iBinder);
                aVar.e = 0;
                d(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.d.get(componentName);
            if (aVar != null) {
                d(aVar);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.c.obtainMessage(1, new g(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.c.obtainMessage(2, componentName).sendToTarget();
        }

        private void a() {
            Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.a);
            if (!enabledListenerPackages.equals(this.e)) {
                this.e = enabledListenerPackages;
                List<ResolveInfo> listQueryIntentServices = this.a.getPackageManager().queryIntentServices(new Intent().setAction(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL), 4);
                HashSet<ComponentName> hashSet = new HashSet();
                for (ResolveInfo resolveInfo : listQueryIntentServices) {
                    if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                        ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                        if (resolveInfo.serviceInfo.permission != null) {
                            Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                        } else {
                            hashSet.add(componentName);
                        }
                    }
                }
                for (ComponentName componentName2 : hashSet) {
                    if (!this.d.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                        }
                        this.d.put(componentName2, new a(componentName2));
                    }
                }
                Iterator<Map.Entry<ComponentName, a>> it = this.d.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<ComponentName, a> next = it.next();
                    if (!hashSet.contains(next.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                        }
                        b(next.getValue());
                        it.remove();
                    }
                }
            }
        }

        private boolean a(a aVar) {
            if (aVar.b) {
                return true;
            }
            aVar.b = this.a.bindService(new Intent(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL).setComponent(aVar.a), this, NotificationManagerCompat.a);
            if (aVar.b) {
                aVar.e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.a);
                this.a.unbindService(this);
            }
            return aVar.b;
        }

        private void b(a aVar) {
            if (aVar.b) {
                this.a.unbindService(this);
                aVar.b = false;
            }
            aVar.c = null;
        }

        private void c(a aVar) {
            if (!this.c.hasMessages(3, aVar.a)) {
                aVar.e++;
                if (aVar.e > 6) {
                    Log.w("NotifManCompat", "Giving up on delivering " + aVar.d.size() + " tasks to " + aVar.a + " after " + aVar.e + " retries");
                    aVar.d.clear();
                    return;
                }
                int i = (1 << (aVar.e - 1)) * CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
                }
                this.c.sendMessageDelayed(this.c.obtainMessage(3, aVar.a), i);
            }
        }

        private void d(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.a + ", " + aVar.d.size() + " queued tasks");
            }
            if (!aVar.d.isEmpty()) {
                if (!a(aVar) || aVar.c == null) {
                    c(aVar);
                    return;
                }
                while (true) {
                    i iVarPeek = aVar.d.peek();
                    if (iVarPeek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + iVarPeek);
                        }
                        iVarPeek.a(aVar.c);
                        aVar.d.remove();
                    } catch (DeadObjectException e) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + aVar.a);
                        }
                    } catch (RemoteException e2) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + aVar.a, e2);
                    }
                }
                if (!aVar.d.isEmpty()) {
                    c(aVar);
                }
            }
        }

        static class a {
            public final ComponentName a;
            public INotificationSideChannel c;
            public boolean b = false;
            public LinkedList<i> d = new LinkedList<>();
            public int e = 0;

            public a(ComponentName componentName) {
                this.a = componentName;
            }
        }
    }

    static class g {
        final ComponentName a;
        final IBinder b;

        public g(ComponentName componentName, IBinder iBinder) {
            this.a = componentName;
            this.b = iBinder;
        }
    }

    static class f implements i {
        final String a;
        final int b;
        final String c;
        final Notification d;

        public f(String str, int i, String str2, Notification notification) {
            this.a = str;
            this.b = i;
            this.c = str2;
            this.d = notification;
        }

        @Override // android.support.v4.app.NotificationManagerCompat.i
        public void a(INotificationSideChannel iNotificationSideChannel) {
            iNotificationSideChannel.notify(this.a, this.b, this.c, this.d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[");
            sb.append("packageName:").append(this.a);
            sb.append(", id:").append(this.b);
            sb.append(", tag:").append(this.c);
            sb.append("]");
            return sb.toString();
        }
    }

    static class a implements i {
        final String a;
        final int b;
        final String c;
        final boolean d;

        public a(String str) {
            this.a = str;
            this.b = 0;
            this.c = null;
            this.d = true;
        }

        public a(String str, int i, String str2) {
            this.a = str;
            this.b = i;
            this.c = str2;
            this.d = false;
        }

        @Override // android.support.v4.app.NotificationManagerCompat.i
        public void a(INotificationSideChannel iNotificationSideChannel) {
            if (this.d) {
                iNotificationSideChannel.cancelAll(this.a);
            } else {
                iNotificationSideChannel.cancel(this.a, this.b, this.c);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CancelTask[");
            sb.append("packageName:").append(this.a);
            sb.append(", id:").append(this.b);
            sb.append(", tag:").append(this.c);
            sb.append(", all:").append(this.d);
            sb.append("]");
            return sb.toString();
        }
    }
}
