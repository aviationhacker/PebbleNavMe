package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.internal.zzs;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzj<T extends IInterface> implements Api.zzb, zzk.zza {
    public static final String[] zzafI = {"service_esmobile", "service_googleme"};
    final Handler a;
    private final Context b;
    private final com.google.android.gms.common.internal.zzf c;
    private final Looper d;
    private final zzl e;
    private final GoogleApiAvailability f;
    private final Object g;
    private zzs h;
    private GoogleApiClient.zza i;
    private T j;
    private final ArrayList<zzj<T>.zzc<?>> k;
    private zzj<T>.zze l;
    private int m;
    private final Set<Scope> n;
    private final Account o;
    private final GoogleApiClient.ConnectionCallbacks p;
    private final GoogleApiClient.OnConnectionFailedListener q;
    private final int r;
    protected AtomicInteger zzafH;

    abstract class a extends zzj<T>.zzc<Boolean> {
        public final int statusCode;
        public final Bundle zzafJ;

        protected a(int i, Bundle bundle) {
            super(true);
            this.statusCode = i;
            this.zzafJ = bundle;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.zzj.zzc
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public void zzt(Boolean bool) {
            if (bool == null) {
                zzj.this.a(1, (IInterface) null);
                return;
            }
            switch (this.statusCode) {
                case 0:
                    if (zzpf()) {
                        return;
                    }
                    zzj.this.a(1, (IInterface) null);
                    zzh(new ConnectionResult(8, null));
                    return;
                case 10:
                    zzj.this.a(1, (IInterface) null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    zzj.this.a(1, (IInterface) null);
                    zzh(new ConnectionResult(this.statusCode, this.zzafJ != null ? (PendingIntent) this.zzafJ.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract void zzh(ConnectionResult connectionResult);

        protected abstract boolean zzpf();

        @Override // com.google.android.gms.common.internal.zzj.zzc
        protected void zzpg() {
        }
    }

    final class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        private void a(Message message) {
            zzc zzcVar = (zzc) message.obj;
            zzcVar.zzpg();
            zzcVar.unregister();
        }

        private boolean b(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5 || message.what == 6;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (zzj.this.zzafH.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                    return;
                }
                return;
            }
            if ((message.what == 1 || message.what == 5 || message.what == 6) && !zzj.this.isConnecting()) {
                a(message);
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, null);
                zzj.this.i.zza(connectionResult);
                zzj.this.onConnectionFailed(connectionResult);
                return;
            }
            if (message.what == 4) {
                zzj.this.a(4, (IInterface) null);
                if (zzj.this.p != null) {
                    zzj.this.p.onConnectionSuspended(message.arg2);
                }
                zzj.this.onConnectionSuspended(message.arg2);
                zzj.this.a(4, 1, (IInterface) null);
                return;
            }
            if (message.what == 2 && !zzj.this.isConnected()) {
                a(message);
            } else if (b(message)) {
                ((zzc) message.obj).zzph();
            } else {
                Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
            }
        }
    }

    public abstract class zzc<TListener> {
        private TListener a;
        private boolean c = false;

        public zzc(TListener tlistener) {
            this.a = tlistener;
        }

        public void unregister() {
            zzpi();
            synchronized (zzj.this.k) {
                zzj.this.k.remove(this);
            }
        }

        protected abstract void zzpg();

        public void zzph() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.a;
                if (this.c) {
                    Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
                }
            }
            if (tlistener != null) {
                try {
                    zzt(tlistener);
                } catch (RuntimeException e) {
                    zzpg();
                    throw e;
                }
            } else {
                zzpg();
            }
            synchronized (this) {
                this.c = true;
            }
            unregister();
        }

        public void zzpi() {
            synchronized (this) {
                this.a = null;
            }
        }

        protected abstract void zzt(TListener tlistener);
    }

    public static final class zzd extends zzr.zza {
        private zzj a;
        private final int b;

        public zzd(zzj zzjVar, int i) {
            this.a = zzjVar;
            this.b = i;
        }

        private void a() {
            this.a = null;
        }

        @Override // com.google.android.gms.common.internal.zzr
        public void zza(int i, IBinder iBinder, Bundle bundle) {
            zzx.zzb(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.a.zza(i, iBinder, bundle, this.b);
            a();
        }

        @Override // com.google.android.gms.common.internal.zzr
        public void zzb(int i, Bundle bundle) {
            zzx.zzb(this.a, "onAccountValidationComplete can be called only once per call to validateAccount");
            this.a.zza(i, bundle, this.b);
            a();
        }
    }

    public final class zze implements ServiceConnection {
        private final int b;

        public zze(int i) {
            this.b = i;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zzx.zzb(iBinder, "Expecting a valid IBinder");
            zzj.this.h = zzs.zza.zzaK(iBinder);
            zzj.this.zzbF(this.b);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            zzj.this.a.sendMessage(zzj.this.a.obtainMessage(4, this.b, 1));
        }
    }

    public class zzf implements GoogleApiClient.zza {
        public zzf() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zza(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                zzj.this.zza(null, zzj.this.n);
            } else if (zzj.this.q != null) {
                zzj.this.q.onConnectionFailed(connectionResult);
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zzb(ConnectionResult connectionResult) {
            throw new IllegalStateException("Legacy GmsClient received onReportAccountValidation callback.");
        }
    }

    public final class zzg extends zzj<T>.a {
        public final IBinder zzafO;

        public zzg(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.zzafO = iBinder;
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected void zzh(ConnectionResult connectionResult) {
            if (zzj.this.q != null) {
                zzj.this.q.onConnectionFailed(connectionResult);
            }
            zzj.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected boolean zzpf() {
            try {
                String interfaceDescriptor = this.zzafO.getInterfaceDescriptor();
                if (!zzj.this.zzfL().equals(interfaceDescriptor)) {
                    Log.e("GmsClient", "service descriptor mismatch: " + zzj.this.zzfL() + " vs. " + interfaceDescriptor);
                    return false;
                }
                IInterface iInterfaceZzW = zzj.this.zzW(this.zzafO);
                if (iInterfaceZzW == null || !zzj.this.a(2, 3, iInterfaceZzW)) {
                    return false;
                }
                Bundle bundleZzmS = zzj.this.zzmS();
                if (zzj.this.p != null) {
                    zzj.this.p.onConnected(bundleZzmS);
                }
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    public final class zzh extends zzj<T>.a {
        public zzh() {
            super(0, null);
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected void zzh(ConnectionResult connectionResult) {
            zzj.this.i.zza(connectionResult);
            zzj.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected boolean zzpf() {
            zzj.this.i.zza(ConnectionResult.zzZY);
            return true;
        }
    }

    public final class zzi extends zzj<T>.a {
        public zzi(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected void zzh(ConnectionResult connectionResult) {
            zzj.this.i.zzb(connectionResult);
            zzj.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.zzj.a
        protected boolean zzpf() {
            zzj.this.i.zzb(ConnectionResult.zzZY);
            return true;
        }
    }

    protected zzj(Context context, Looper looper, int i, com.google.android.gms.common.internal.zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzl.zzal(context), GoogleApiAvailability.getInstance(), i, zzfVar, (GoogleApiClient.ConnectionCallbacks) zzx.zzw(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) zzx.zzw(onConnectionFailedListener));
    }

    protected zzj(Context context, Looper looper, zzl zzlVar, GoogleApiAvailability googleApiAvailability, int i, com.google.android.gms.common.internal.zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.g = new Object();
        this.k = new ArrayList<>();
        this.m = 1;
        this.zzafH = new AtomicInteger(0);
        this.b = (Context) zzx.zzb(context, "Context must not be null");
        this.d = (Looper) zzx.zzb(looper, "Looper must not be null");
        this.e = (zzl) zzx.zzb(zzlVar, "Supervisor must not be null");
        this.f = (GoogleApiAvailability) zzx.zzb(googleApiAvailability, "API availability must not be null");
        this.a = new b(looper);
        this.r = i;
        this.c = (com.google.android.gms.common.internal.zzf) zzx.zzw(zzfVar);
        this.o = zzfVar.getAccount();
        this.n = a(zzfVar.zzoL());
        this.p = connectionCallbacks;
        this.q = onConnectionFailedListener;
    }

    private Set<Scope> a(Set<Scope> set) {
        Set<Scope> setZzb = zzb(set);
        if (setZzb == null) {
            return setZzb;
        }
        Iterator<Scope> it = setZzb.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setZzb;
    }

    private void a() {
        if (this.l != null) {
            Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzfK());
            this.e.zzb(zzfK(), this.l, zzoV());
            this.zzafH.incrementAndGet();
        }
        this.l = new zze(this.zzafH.get());
        if (this.e.zza(zzfK(), this.l, zzoV())) {
            return;
        }
        Log.e("GmsClient", "unable to connect to service: " + zzfK());
        this.a.sendMessage(this.a.obtainMessage(3, this.zzafH.get(), 9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, T t) {
        zzx.zzaa((i == 3) == (t != null));
        synchronized (this.g) {
            this.m = i;
            this.j = t;
            zzc(i, t);
            switch (i) {
                case 1:
                    b();
                    break;
                case 2:
                    a();
                    break;
                case 3:
                    zzoW();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, int i2, T t) {
        boolean z;
        synchronized (this.g) {
            if (this.m != i) {
                z = false;
            } else {
                a(i2, t);
                z = true;
            }
        }
        return z;
    }

    private void b() {
        if (this.l != null) {
            this.e.zzb(zzfK(), this.l, zzoV());
            this.l = null;
        }
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public void disconnect() {
        this.zzafH.incrementAndGet();
        synchronized (this.k) {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                this.k.get(i).zzpi();
            }
            this.k.clear();
        }
        a(1, (IInterface) null);
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        synchronized (this.g) {
            i = this.m;
            t = this.j;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        switch (i) {
            case 1:
                printWriter.print("DISCONNECTED");
                break;
            case 2:
                printWriter.print("CONNECTING");
                break;
            case 3:
                printWriter.print("CONNECTED");
                break;
            case 4:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.println("null");
        } else {
            printWriter.append((CharSequence) zzfL()).append("@").println(Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
    }

    public final Context getContext() {
        return this.b;
    }

    public final Looper getLooper() {
        return this.d;
    }

    @Override // com.google.android.gms.common.api.Api.zzb, com.google.android.gms.common.internal.zzk.zza
    public boolean isConnected() {
        boolean z;
        synchronized (this.g) {
            z = this.m == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.g) {
            z = this.m == 2;
        }
        return z;
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
    }

    protected void onConnectionSuspended(int i) {
    }

    public abstract T zzW(IBinder iBinder);

    protected void zza(int i, Bundle bundle, int i2) {
        this.a.sendMessage(this.a.obtainMessage(5, i2, -1, new zzi(i, bundle)));
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.a.sendMessage(this.a.obtainMessage(1, i2, -1, new zzg(i, iBinder, bundle)));
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public void zza(GoogleApiClient.zza zzaVar) {
        this.i = (GoogleApiClient.zza) zzx.zzb(zzaVar, "Connection progress callbacks cannot be null.");
        a(2, (IInterface) null);
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public void zza(zzp zzpVar) {
        try {
            this.h.zza(new zzd(this, this.zzafH.get()), new ValidateAccountRequest(zzpVar, (Scope[]) this.n.toArray(new Scope[this.n.size()]), this.b.getPackageName(), zzpd()));
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (RemoteException e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public void zza(zzp zzpVar, Set<Scope> set) {
        try {
            GetServiceRequest getServiceRequestZzg = new GetServiceRequest(this.r).zzcl(this.b.getPackageName()).zzg(zzly());
            if (set != null) {
                getServiceRequestZzg.zzd(set);
            }
            if (zzlN()) {
                getServiceRequestZzg.zzc(zzoI()).zzc(zzpVar);
            } else if (zzpe()) {
                getServiceRequestZzg.zzc(this.o);
            }
            this.h.zza(new zzd(this, this.zzafH.get()), getServiceRequestZzg);
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (RemoteException e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    protected Set<Scope> zzb(Set<Scope> set) {
        return set;
    }

    public void zzbE(int i) {
        this.a.sendMessage(this.a.obtainMessage(4, this.zzafH.get(), i));
    }

    protected void zzbF(int i) {
        this.a.sendMessage(this.a.obtainMessage(6, i, -1, new zzh()));
    }

    protected void zzc(int i, T t) {
    }

    public abstract String zzfK();

    public abstract String zzfL();

    @Override // com.google.android.gms.common.api.Api.zzb
    public boolean zzlN() {
        return false;
    }

    public Bundle zzly() {
        return new Bundle();
    }

    @Override // com.google.android.gms.common.internal.zzk.zza
    public Bundle zzmS() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.zzb
    public IBinder zznz() {
        if (this.h == null) {
            return null;
        }
        return this.h.asBinder();
    }

    public final Account zzoI() {
        return this.o != null ? this.o : new Account("<<default account>>", GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
    }

    protected final String zzoV() {
        return this.c.zzoO();
    }

    protected void zzoW() {
    }

    public void zzoZ() {
        int iIsGooglePlayServicesAvailable = this.f.isGooglePlayServicesAvailable(this.b);
        if (iIsGooglePlayServicesAvailable == 0) {
            zza(new zzf());
            return;
        }
        a(1, (IInterface) null);
        this.i = new zzf();
        this.a.sendMessage(this.a.obtainMessage(3, this.zzafH.get(), iIsGooglePlayServicesAvailable));
    }

    protected final com.google.android.gms.common.internal.zzf zzpa() {
        return this.c;
    }

    protected final void zzpb() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzpc() {
        T t;
        synchronized (this.g) {
            if (this.m == 4) {
                throw new DeadObjectException();
            }
            zzpb();
            zzx.zza(this.j != null, "Client is connected but service is null");
            t = this.j;
        }
        return t;
    }

    protected Bundle zzpd() {
        return null;
    }

    public boolean zzpe() {
        return false;
    }
}
