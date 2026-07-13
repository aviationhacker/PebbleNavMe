package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzm extends zzl implements Handler.Callback {
    private final Context b;
    private final Handler c;
    private final HashMap<a, zzb> a = new HashMap<>();
    private final com.google.android.gms.common.stats.zzb d = com.google.android.gms.common.stats.zzb.zzqh();
    private final long e = 5000;

    static final class a {
        private final String a;
        private final ComponentName b;

        public a(ComponentName componentName) {
            this.a = null;
            this.b = (ComponentName) zzx.zzw(componentName);
        }

        public a(String str) {
            this.a = zzx.zzcr(str);
            this.b = null;
        }

        public Intent a() {
            return this.a != null ? new Intent(this.a).setPackage("com.google.android.gms") : new Intent().setComponent(this.b);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return zzw.equal(this.a, aVar.a) && zzw.equal(this.b, aVar.b);
        }

        public int hashCode() {
            return zzw.hashCode(this.a, this.b);
        }

        public String toString() {
            return this.a == null ? this.b.flattenToString() : this.a;
        }
    }

    final class zzb {
        private final zza b = new zza();
        private final Set<ServiceConnection> c = new HashSet();
        private int d = 2;
        private boolean e;
        private IBinder f;
        private final a g;
        private ComponentName h;

        public class zza implements ServiceConnection {
            public zza() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (zzm.this.a) {
                    zzb.this.f = iBinder;
                    zzb.this.h = componentName;
                    Iterator it = zzb.this.c.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    zzb.this.d = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (zzm.this.a) {
                    zzb.this.f = null;
                    zzb.this.h = componentName;
                    Iterator it = zzb.this.c.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                    }
                    zzb.this.d = 2;
                }
            }
        }

        public zzb(a aVar) {
            this.g = aVar;
        }

        public void a(ServiceConnection serviceConnection, String str) {
            zzm.this.d.zza(zzm.this.b, serviceConnection, str, this.g.a());
            this.c.add(serviceConnection);
        }

        public void a(String str) {
            this.d = 3;
            this.e = zzm.this.d.zza(zzm.this.b, str, this.g.a(), this.b, 129);
            if (this.e) {
                return;
            }
            this.d = 2;
            try {
                zzm.this.d.zza(zzm.this.b, this.b);
            } catch (IllegalArgumentException e) {
            }
        }

        public boolean a() {
            return this.e;
        }

        public boolean a(ServiceConnection serviceConnection) {
            return this.c.contains(serviceConnection);
        }

        public int b() {
            return this.d;
        }

        public void b(ServiceConnection serviceConnection, String str) {
            zzm.this.d.zzb(zzm.this.b, serviceConnection);
            this.c.remove(serviceConnection);
        }

        public void b(String str) {
            zzm.this.d.zza(zzm.this.b, this.b);
            this.e = false;
            this.d = 2;
        }

        public boolean c() {
            return this.c.isEmpty();
        }

        public IBinder d() {
            return this.f;
        }

        public ComponentName e() {
            return this.h;
        }
    }

    zzm(Context context) {
        this.b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
    }

    private boolean a(a aVar, ServiceConnection serviceConnection, String str) {
        boolean zA;
        zzx.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.a) {
            zzb zzbVar = this.a.get(aVar);
            if (zzbVar != null) {
                this.c.removeMessages(0, zzbVar);
                if (!zzbVar.a(serviceConnection)) {
                    zzbVar.a(serviceConnection, str);
                    switch (zzbVar.b()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzbVar.e(), zzbVar.d());
                            break;
                        case 2:
                            zzbVar.a(str);
                            break;
                    }
                } else {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + aVar);
                }
            } else {
                zzbVar = new zzb(aVar);
                zzbVar.a(serviceConnection, str);
                zzbVar.a(str);
                this.a.put(aVar, zzbVar);
            }
            zA = zzbVar.a();
        }
        return zA;
    }

    private void b(a aVar, ServiceConnection serviceConnection, String str) {
        zzx.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.a) {
            zzb zzbVar = this.a.get(aVar);
            if (zzbVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + aVar);
            }
            if (!zzbVar.a(serviceConnection)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + aVar);
            }
            zzbVar.b(serviceConnection, str);
            if (zzbVar.c()) {
                this.c.sendMessageDelayed(this.c.obtainMessage(0, zzbVar), this.e);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                zzb zzbVar = (zzb) message.obj;
                synchronized (this.a) {
                    if (zzbVar.c()) {
                        if (zzbVar.a()) {
                            zzbVar.b("GmsClientSupervisor");
                        }
                        this.a.remove(zzbVar.g);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return a(new a(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(String str, ServiceConnection serviceConnection, String str2) {
        return a(new a(str), serviceConnection, str2);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        b(new a(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(String str, ServiceConnection serviceConnection, String str2) {
        b(new a(str), serviceConnection, str2);
    }
}
