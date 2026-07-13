package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlb;
import defpackage.gl;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class zzli extends GoogleApiClient {
    final zzk a;
    d c;
    final zzf g;
    final Api.zza<? extends zzqw, zzqx> i;
    private final int m;
    private final Context n;
    private final Looper o;
    private volatile boolean p;
    private final a s;
    private final GoogleApiAvailability t;
    private zza x;
    private final Lock k = new ReentrantLock();
    final Queue<f<?>> b = new LinkedList();
    private long q = 120000;
    private long r = 5000;
    final Map<Api.zzc<?>, Api.zzb> d = new HashMap();
    final Map<Api.zzc<?>, ConnectionResult> e = new HashMap();
    Set<Scope> f = new HashSet();
    private ConnectionResult v = null;
    private final Set<zzlm<?>> w = Collections.newSetFromMap(new WeakHashMap());
    final Set<f<?>> j = Collections.newSetFromMap(new ConcurrentHashMap(16, 0.75f, 2));
    private final e y = new e() { // from class: com.google.android.gms.internal.zzli.1
        @Override // com.google.android.gms.internal.zzli.e
        public void a(f<?> fVar) {
            zzli.this.j.remove(fVar);
            if (fVar.zznF() == null || zzli.this.x == null) {
                return;
            }
            zzli.this.x.remove(fVar.zznF().intValue());
        }
    };
    private final GoogleApiClient.ConnectionCallbacks z = new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzli.2
        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzli.this.k.lock();
            try {
                zzli.this.u.onConnected(bundle);
            } finally {
                zzli.this.k.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            zzli.this.k.lock();
            try {
                zzli.this.u.onConnectionSuspended(i);
            } finally {
                zzli.this.k.unlock();
            }
        }
    };
    private final zzk.zza A = new zzk.zza() { // from class: com.google.android.gms.internal.zzli.3
        @Override // com.google.android.gms.common.internal.zzk.zza
        public boolean isConnected() {
            return zzli.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzk.zza
        public Bundle zzmS() {
            return null;
        }
    };
    final Map<Api<?>, Integer> h = new HashMap();
    private final Condition l = this.k.newCondition();
    private volatile zzlj u = new zzlh(this);

    final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzli.this.j();
                    return;
                case 2:
                    zzli.this.i();
                    return;
                case 3:
                    ((b) message.obj).a(zzli.this);
                    return;
                case 4:
                    throw ((RuntimeException) message.obj);
                default:
                    Log.w("GoogleApiClientImpl", "Unknown message id: " + message.what);
                    return;
            }
        }
    }

    static abstract class b {
        private final zzlj a;

        protected b(zzlj zzljVar) {
            this.a = zzljVar;
        }

        protected abstract void a();

        public final void a(zzli zzliVar) {
            zzliVar.k.lock();
            try {
                if (zzliVar.u != this.a) {
                    return;
                }
                a();
            } finally {
                zzliVar.k.unlock();
            }
        }
    }

    static class c implements IBinder.DeathRecipient, e {
        private final WeakReference<f<?>> a;
        private final WeakReference<zza> b;
        private final WeakReference<IBinder> c;

        private c(f fVar, zza zzaVar, IBinder iBinder) {
            this.b = new WeakReference<>(zzaVar);
            this.a = new WeakReference<>(fVar);
            this.c = new WeakReference<>(iBinder);
        }

        private void a() {
            f<?> fVar = this.a.get();
            zza zzaVar = this.b.get();
            if (zzaVar != null && fVar != null) {
                zzaVar.remove(fVar.zznF().intValue());
            }
            IBinder iBinder = this.c.get();
            if (this.c != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // com.google.android.gms.internal.zzli.e
        public void a(f<?> fVar) {
            a();
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a();
        }
    }

    static class d extends gl {
        private WeakReference<zzli> b;

        d(zzli zzliVar) {
            this.b = new WeakReference<>(zzliVar);
        }

        @Override // defpackage.gl
        public void a() {
            zzli zzliVar = this.b.get();
            if (zzliVar == null) {
                return;
            }
            zzliVar.i();
        }
    }

    interface e {
        void a(f<?> fVar);
    }

    interface f<A extends Api.zzb> {
        void cancel();

        boolean isReady();

        void zza(e eVar);

        void zzb(A a);

        Integer zznF();

        void zznJ();

        int zznK();

        Api.zzc<A> zznx();

        void zzv(Status status);

        void zzw(Status status);
    }

    public zzli(Context context, Looper looper, zzf zzfVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzqw, zzqx> zzaVar, Map<Api<?>, Api.ApiOptions> map, ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList, ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList2, int i) {
        this.n = context;
        this.a = new zzk(looper, this.A);
        this.o = looper;
        this.s = new a(looper);
        this.t = googleApiAvailability;
        this.m = i;
        Iterator<GoogleApiClient.ConnectionCallbacks> it = arrayList.iterator();
        while (it.hasNext()) {
            this.a.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            this.a.registerConnectionFailedListener(it2.next());
        }
        Map<Api<?>, zzf.zza> mapZzoM = zzfVar.zzoM();
        for (Api<?> api : map.keySet()) {
            Api.ApiOptions apiOptions = map.get(api);
            int i2 = mapZzoM.get(api) != null ? mapZzoM.get(api).zzafk ? 1 : 2 : 0;
            this.h.put(api, Integer.valueOf(i2));
            this.d.put(api.zznx(), api.zzny() ? a(api.zznw(), apiOptions, context, looper, zzfVar, this.z, a(api, i2)) : a(api.zznv(), apiOptions, context, looper, zzfVar, this.z, a(api, i2)));
        }
        this.g = zzfVar;
        this.i = zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api.zzb, O> C a(Api.zza<C, O> zzaVar, Object obj, Context context, Looper looper, zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return (C) zzaVar.zza(context, looper, zzfVar, obj, connectionCallbacks, onConnectionFailedListener);
    }

    private GoogleApiClient.OnConnectionFailedListener a(final Api<?> api, final int i) {
        return new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.internal.zzli.4
            @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
            public void onConnectionFailed(ConnectionResult connectionResult) {
                zzli.this.k.lock();
                try {
                    zzli.this.u.zza(connectionResult, api, i);
                } finally {
                    zzli.this.k.unlock();
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api.zzd, O> zzac a(Api.zze<C, O> zzeVar, Object obj, Context context, Looper looper, zzf zzfVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzac(context, looper, zzeVar.zznA(), connectionCallbacks, onConnectionFailedListener, zzfVar, zzeVar.zzn(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final GoogleApiClient googleApiClient, final zzlo zzloVar, final boolean z) {
        zzlx.zzagw.zzb(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzli.7
            @Override // com.google.android.gms.common.api.ResultCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onResult(Status status) {
                if (status.isSuccess() && zzli.this.isConnected()) {
                    zzli.this.reconnect();
                }
                zzloVar.zzb(status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private static void a(f<?> fVar, zza zzaVar, IBinder iBinder) {
        if (fVar.isReady()) {
            fVar.zza(new c(fVar, zzaVar, iBinder));
            return;
        }
        if (iBinder == null || !iBinder.isBinderAlive()) {
            fVar.zza(null);
            fVar.cancel();
            zzaVar.remove(fVar.zznF().intValue());
        } else {
            c cVar = new c(fVar, zzaVar, iBinder);
            fVar.zza(cVar);
            try {
                iBinder.linkToDeath(cVar, 0);
            } catch (RemoteException e2) {
                fVar.cancel();
                zzaVar.remove(fVar.zznF().intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.k.lock();
        try {
            if (e()) {
                connect();
            }
        } finally {
            this.k.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.k.lock();
        try {
            if (g()) {
                connect();
            }
        } finally {
            this.k.unlock();
        }
    }

    void a() {
        for (f<?> fVar : this.j) {
            fVar.zza(null);
            if (fVar.zznF() == null) {
                fVar.cancel();
            } else {
                fVar.zznJ();
                a(fVar, this.x, zza((Api.zzc) fVar.zznx()).zznz());
            }
        }
        this.j.clear();
        Iterator<zzlm<?>> it = this.w.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.w.clear();
    }

    void a(ConnectionResult connectionResult) {
        this.k.lock();
        try {
            this.v = connectionResult;
            this.u = new zzlh(this);
            this.u.begin();
            this.l.signalAll();
        } finally {
            this.k.unlock();
        }
    }

    void a(b bVar) {
        this.s.sendMessage(this.s.obtainMessage(3, bVar));
    }

    <A extends Api.zzb> void a(f<A> fVar) {
        this.j.add(fVar);
        fVar.zza(this.y);
    }

    void a(RuntimeException runtimeException) {
        this.s.sendMessage(this.s.obtainMessage(4, runtimeException));
    }

    void b() {
        Iterator<Api.zzb> it = this.d.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        ConnectionResult connectionResult;
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.k.lock();
        try {
            connect();
            while (isConnecting()) {
                this.l.await();
            }
            connectionResult = isConnected() ? ConnectionResult.zzZY : this.v != null ? this.v : new ConnectionResult(13, null);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            connectionResult = new ConnectionResult(15, null);
        } finally {
            this.k.unlock();
        }
        return connectionResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
    
        r0 = new com.google.android.gms.common.ConnectionResult(14, null);
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.common.ConnectionResult blockingConnect(long r6, java.util.concurrent.TimeUnit r8) {
        /*
            r5 = this;
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            if (r0 == r1) goto L41
            r0 = 1
        Lb:
            java.lang.String r1 = "blockingConnect must not be called on the UI thread"
            com.google.android.gms.common.internal.zzx.zza(r0, r1)
            java.lang.String r0 = "TimeUnit must not be null"
            com.google.android.gms.common.internal.zzx.zzb(r8, r0)
            java.util.concurrent.locks.Lock r0 = r5.k
            r0.lock()
            r5.connect()     // Catch: java.lang.Throwable -> L81
            long r0 = r8.toNanos(r6)     // Catch: java.lang.Throwable -> L81
        L21:
            boolean r2 = r5.isConnecting()     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L59
            java.util.concurrent.locks.Condition r2 = r5.l     // Catch: java.lang.InterruptedException -> L43 java.lang.Throwable -> L81
            long r0 = r2.awaitNanos(r0)     // Catch: java.lang.InterruptedException -> L43 java.lang.Throwable -> L81
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 > 0) goto L21
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.InterruptedException -> L43 java.lang.Throwable -> L81
            r1 = 14
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.InterruptedException -> L43 java.lang.Throwable -> L81
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
        L40:
            return r0
        L41:
            r0 = 0
            goto Lb
        L43:
            r0 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L81
            r0.interrupt()     // Catch: java.lang.Throwable -> L81
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.Throwable -> L81
            r1 = 15
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
            goto L40
        L59:
            boolean r0 = r5.isConnected()     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L67
            com.google.android.gms.common.ConnectionResult r0 = com.google.android.gms.common.ConnectionResult.zzZY     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
            goto L40
        L67:
            com.google.android.gms.common.ConnectionResult r0 = r5.v     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L73
            com.google.android.gms.common.ConnectionResult r0 = r5.v     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
            goto L40
        L73:
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.Throwable -> L81
            r1 = 13
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
            goto L40
        L81:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r5.k
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzli.blockingConnect(long, java.util.concurrent.TimeUnit):com.google.android.gms.common.ConnectionResult");
    }

    void c() {
        this.k.lock();
        try {
            this.u = new zzlg(this, this.g, this.h, this.t, this.i, this.k, this.n);
            this.u.begin();
            this.l.signalAll();
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        zzx.zza(isConnected(), "GoogleApiClient is not connected yet.");
        final zzlo zzloVar = new zzlo(this);
        if (this.d.containsKey(zzlx.zzRk)) {
            a((GoogleApiClient) this, zzloVar, false);
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzli.5
                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzli.this.a((GoogleApiClient) atomicReference.get(), zzloVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            };
            GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this.n).addApi(zzlx.API).addConnectionCallbacks(connectionCallbacks).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.internal.zzli.6
                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(ConnectionResult connectionResult) {
                    zzloVar.zzb(new Status(8));
                }
            }).setHandler(this.s).build();
            atomicReference.set(googleApiClientBuild);
            googleApiClientBuild.connect();
        }
        return zzloVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.k.lock();
        try {
            this.u.connect();
        } finally {
            this.k.unlock();
        }
    }

    void d() {
        this.k.lock();
        try {
            g();
            this.u = new zzlf(this);
            this.u.begin();
            this.l.signalAll();
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.k.lock();
        try {
            g();
            this.u.disconnect();
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mState=").append((CharSequence) this.u.getName());
        printWriter.append(" mResuming=").print(this.p);
        printWriter.append(" mWorkQueue.size()=").print(this.b.size());
        printWriter.append(" mUnconsumedRunners.size()=").println(this.j.size());
        String str2 = str + "  ";
        for (Api<?> api : this.h.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.d.get(api.zznx()).dump(str2, fileDescriptor, printWriter, strArr);
        }
    }

    boolean e() {
        return this.p;
    }

    void f() {
        if (e()) {
            return;
        }
        this.p = true;
        if (this.c == null) {
            this.c = (d) gl.a(this.n.getApplicationContext(), new d(this), this.t);
        }
        this.s.sendMessageDelayed(this.s.obtainMessage(1), this.q);
        this.s.sendMessageDelayed(this.s.obtainMessage(2), this.r);
    }

    boolean g() {
        if (!e()) {
            return false;
        }
        this.p = false;
        this.s.removeMessages(2);
        this.s.removeMessages(1);
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        ConnectionResult connectionResult;
        Api.zzc<?> zzcVarZznx = api.zznx();
        this.k.lock();
        try {
            if (!isConnected() && !e()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.d.containsKey(zzcVarZznx)) {
                this.k.unlock();
                throw new IllegalArgumentException(api.getName() + " was never registered with GoogleApiClient");
            }
            if (this.d.get(zzcVarZznx).isConnected()) {
                connectionResult = ConnectionResult.zzZY;
            } else if (this.e.containsKey(zzcVarZznx)) {
                connectionResult = this.e.get(zzcVarZznx);
            } else {
                Log.i("GoogleApiClientImpl", h());
                Log.wtf("GoogleApiClientImpl", api.getName() + " requested in getConnectionResult is not connected but is not present in the failed connections map", new Exception());
                connectionResult = new ConnectionResult(8, null);
            }
            return connectionResult;
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.n;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.o;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public int getSessionId() {
        return System.identityHashCode(this);
    }

    String h() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(Api<?> api) {
        Api.zzb zzbVar = this.d.get(api.zznx());
        return zzbVar != null && zzbVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.u instanceof zzlf;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.u instanceof zzlg;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.a.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.a.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.a.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.a.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(final FragmentActivity fragmentActivity) {
        if (this.m < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zzlp zzlpVarZza = zzlp.zza(fragmentActivity);
        if (zzlpVarZza == null) {
            new Handler(this.n.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzli.8
                @Override // java.lang.Runnable
                public void run() {
                    if (fragmentActivity.isFinishing() || fragmentActivity.getSupportFragmentManager().isDestroyed()) {
                        return;
                    }
                    zzlp.zzb(fragmentActivity).zzbp(zzli.this.m);
                }
            });
        } else {
            zzlpVarZza.zzbp(this.m);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.a.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.a.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <C extends Api.zzb> C zza(Api.zzc<C> zzcVar) {
        C c2 = (C) this.d.get(zzcVar);
        zzx.zzb(c2, "Appropriate Api was not requested.");
        return c2;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzlb.zza<R, A>> T zza(T t) {
        zzx.zzb(t.zznx() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        zzx.zzb(this.d.containsKey(t.zznx()), "GoogleApiClient is not configured to use the API required for this call.");
        this.k.lock();
        try {
            return (T) this.u.zza(t);
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(Api<?> api) {
        return this.d.containsKey(api.zznx());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzlb.zza<? extends Result, A>> T zzb(T t) {
        zzx.zzb(t.zznx() != null, "This task can not be executed (it's probably a Batch or malformed)");
        this.k.lock();
        try {
            if (e()) {
                this.b.add(t);
                while (!this.b.isEmpty()) {
                    f<A> fVar = (f) this.b.remove();
                    a(fVar);
                    fVar.zzv(Status.zzabd);
                }
            } else {
                t = (T) this.u.zzb(t);
            }
            return t;
        } finally {
            this.k.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzlm<L> zzo(L l) {
        zzx.zzb(l, "Listener must not be null");
        this.k.lock();
        try {
            zzlm<L> zzlmVar = new zzlm<>(this.o, l);
            this.w.add(zzlmVar);
            return zzlmVar;
        } finally {
            this.k.unlock();
        }
    }
}
