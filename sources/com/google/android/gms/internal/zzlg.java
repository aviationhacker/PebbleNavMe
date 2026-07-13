package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.signin.internal.AuthAccountResult;
import com.google.android.gms.signin.internal.zzb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class zzlg implements zzlj {
    private final zzli a;
    private final Lock b;
    private final Context c;
    private final GoogleApiAvailability d;
    private ConnectionResult e;
    private int f;
    private int i;
    private zzqw l;
    private int m;
    private boolean n;
    private boolean o;
    private zzp p;
    private boolean q;
    private boolean r;
    private final zzf s;
    private final Map<Api<?>, Integer> t;
    private final Api.zza<? extends zzqw, zzqx> u;
    private int g = 0;
    private boolean h = false;
    private final Bundle j = new Bundle();
    private final Set<Api.zzc> k = new HashSet();
    private ArrayList<Future<?>> v = new ArrayList<>();

    static class a extends zzb {
        private final WeakReference<zzlg> a;

        a(zzlg zzlgVar) {
            this.a = new WeakReference<>(zzlgVar);
        }

        @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zze
        public void zza(final ConnectionResult connectionResult, AuthAccountResult authAccountResult) {
            final zzlg zzlgVar = this.a.get();
            if (zzlgVar == null) {
                return;
            }
            zzlgVar.a.a(new zzli.b(zzlgVar) { // from class: com.google.android.gms.internal.zzlg.a.1
                @Override // com.google.android.gms.internal.zzli.b
                public void a() {
                    zzlgVar.a(connectionResult);
                }
            });
        }
    }

    static class b extends zzt.zza {
        private final WeakReference<zzlg> a;

        b(zzlg zzlgVar) {
            this.a = new WeakReference<>(zzlgVar);
        }

        @Override // com.google.android.gms.common.internal.zzt
        public void zzb(final ResolveAccountResponse resolveAccountResponse) {
            final zzlg zzlgVar = this.a.get();
            if (zzlgVar == null) {
                return;
            }
            zzlgVar.a.a(new zzli.b(zzlgVar) { // from class: com.google.android.gms.internal.zzlg.b.1
                @Override // com.google.android.gms.internal.zzli.b
                public void a() {
                    zzlgVar.a(resolveAccountResponse);
                }
            });
        }
    }

    class c extends i {
        private c() {
            super();
        }

        @Override // com.google.android.gms.internal.zzlg.i
        public void a() {
            zzlg.this.l.zza(zzlg.this.p, zzlg.this.a.f, new a(zzlg.this));
        }
    }

    static class d implements GoogleApiClient.zza {
        private final WeakReference<zzlg> a;
        private final Api<?> b;
        private final int c;

        public d(zzlg zzlgVar, Api<?> api, int i) {
            this.a = new WeakReference<>(zzlgVar);
            this.b = api;
            this.c = i;
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zza(ConnectionResult connectionResult) {
            zzlg zzlgVar = this.a.get();
            if (zzlgVar == null) {
                return;
            }
            zzx.zza(Looper.myLooper() == zzlgVar.a.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzlgVar.b.lock();
            try {
                if (zzlgVar.a(0)) {
                    if (!connectionResult.isSuccess()) {
                        zzlgVar.a(connectionResult, this.b, this.c);
                    }
                    if (zzlgVar.a()) {
                        zzlgVar.b();
                    }
                }
            } finally {
                zzlgVar.b.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zzb(ConnectionResult connectionResult) {
            zzlg zzlgVar = this.a.get();
            if (zzlgVar == null) {
                return;
            }
            zzx.zza(Looper.myLooper() == zzlgVar.a.getLooper(), "onReportAccountValidation must be called on the GoogleApiClient handler thread");
            zzlgVar.b.lock();
            try {
                if (zzlgVar.a(1)) {
                    if (!connectionResult.isSuccess()) {
                        zzlgVar.a(connectionResult, this.b, this.c);
                    }
                    if (zzlgVar.a()) {
                        zzlgVar.d();
                    }
                }
            } finally {
                zzlgVar.b.unlock();
            }
        }
    }

    class e extends i {
        private final Map<Api.zzb, GoogleApiClient.zza> c;

        public e(Map<Api.zzb, GoogleApiClient.zza> map) {
            super();
            this.c = map;
        }

        @Override // com.google.android.gms.internal.zzlg.i
        public void a() {
            int iIsGooglePlayServicesAvailable = zzlg.this.d.isGooglePlayServicesAvailable(zzlg.this.c);
            if (iIsGooglePlayServicesAvailable != 0) {
                final ConnectionResult connectionResult = new ConnectionResult(iIsGooglePlayServicesAvailable, null);
                zzlg.this.a.a(new zzli.b(zzlg.this) { // from class: com.google.android.gms.internal.zzlg.e.1
                    @Override // com.google.android.gms.internal.zzli.b
                    public void a() {
                        zzlg.this.d(connectionResult);
                    }
                });
                return;
            }
            if (zzlg.this.n) {
                zzlg.this.l.connect();
            }
            for (Api.zzb zzbVar : this.c.keySet()) {
                zzbVar.zza(this.c.get(zzbVar));
            }
        }
    }

    class f extends i {
        private final ArrayList<Api.zzb> c;

        public f(ArrayList<Api.zzb> arrayList) {
            super();
            this.c = arrayList;
        }

        @Override // com.google.android.gms.internal.zzlg.i
        public void a() {
            Set<Scope> set = zzlg.this.a.f;
            Set<Scope> setI = set.isEmpty() ? zzlg.this.i() : set;
            Iterator<Api.zzb> it = this.c.iterator();
            while (it.hasNext()) {
                it.next().zza(zzlg.this.p, setI);
            }
        }
    }

    class g implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private g() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzlg.this.l.zza(new b(zzlg.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzlg.this.b.lock();
            try {
                if (zzlg.this.c(connectionResult)) {
                    zzlg.this.g();
                    zzlg.this.e();
                } else {
                    zzlg.this.d(connectionResult);
                }
            } finally {
                zzlg.this.b.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    class h extends i {
        private final ArrayList<Api.zzb> c;

        public h(ArrayList<Api.zzb> arrayList) {
            super();
            this.c = arrayList;
        }

        @Override // com.google.android.gms.internal.zzlg.i
        public void a() {
            Iterator<Api.zzb> it = this.c.iterator();
            while (it.hasNext()) {
                it.next().zza(zzlg.this.p);
            }
        }
    }

    abstract class i implements Runnable {
        private i() {
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            zzlg.this.b.lock();
            try {
                if (Thread.interrupted()) {
                    return;
                }
                a();
                return;
            } catch (RuntimeException e) {
                zzlg.this.a.a(e);
                return;
            } finally {
                zzlg.this.b.unlock();
            }
            zzlg.this.b.unlock();
        }
    }

    public zzlg(zzli zzliVar, zzf zzfVar, Map<Api<?>, Integer> map, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzqw, zzqx> zzaVar, Lock lock, Context context) {
        this.a = zzliVar;
        this.s = zzfVar;
        this.t = map;
        this.d = googleApiAvailability;
        this.u = zzaVar;
        this.b = lock;
        this.c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConnectionResult connectionResult) {
        if (a(2)) {
            if (connectionResult.isSuccess()) {
                e();
            } else if (!c(connectionResult)) {
                d(connectionResult);
            } else {
                g();
                e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConnectionResult connectionResult, Api<?> api, int i2) {
        if (i2 != 2) {
            int priority = api.zznv().getPriority();
            if (a(priority, i2, connectionResult)) {
                this.e = connectionResult;
                this.f = priority;
            }
        }
        this.a.e.put(api.zznx(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ResolveAccountResponse resolveAccountResponse) {
        if (a(0)) {
            ConnectionResult connectionResultZzpr = resolveAccountResponse.zzpr();
            if (connectionResultZzpr.isSuccess()) {
                this.p = resolveAccountResponse.zzpq();
                this.o = true;
                this.q = resolveAccountResponse.zzps();
                this.r = resolveAccountResponse.zzpt();
                b();
                return;
            }
            if (!c(connectionResultZzpr)) {
                d(connectionResultZzpr);
            } else {
                g();
                b();
            }
        }
    }

    private void a(boolean z) {
        if (this.l != null) {
            if (this.l.isConnected() && z) {
                this.l.zzCe();
            }
            this.l.disconnect();
            this.p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        this.i--;
        if (this.i > 0) {
            return false;
        }
        if (this.i < 0) {
            Log.i("GoogleApiClientConnecting", this.a.h());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            d(new ConnectionResult(8, null));
            return false;
        }
        if (this.e == null) {
            return true;
        }
        d(this.e);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2) {
        if (this.g == i2) {
            return true;
        }
        Log.i("GoogleApiClientConnecting", this.a.h());
        Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + b(this.g) + " but received callback for step " + b(i2), new Exception());
        d(new ConnectionResult(8, null));
        return false;
    }

    private boolean a(int i2, int i3, ConnectionResult connectionResult) {
        if (i3 != 1 || b(connectionResult)) {
            return this.e == null || i2 < this.f;
        }
        return false;
    }

    private String b(int i2) {
        switch (i2) {
            case 0:
                return "STEP_GETTING_SERVICE_BINDINGS";
            case 1:
                return "STEP_VALIDATING_ACCOUNT";
            case 2:
                return "STEP_AUTHENTICATING";
            case 3:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i != 0) {
            return;
        }
        if (!this.n) {
            e();
        } else if (this.o) {
            c();
        }
    }

    private boolean b(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.d.zzbi(connectionResult.getErrorCode()) != null;
    }

    private void c() {
        ArrayList arrayList = new ArrayList();
        this.g = 1;
        this.i = this.a.d.size();
        for (Api.zzc<?> zzcVar : this.a.d.keySet()) {
            if (!this.a.e.containsKey(zzcVar)) {
                arrayList.add(this.a.d.get(zzcVar));
            } else if (a()) {
                d();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.v.add(zzlk.zzoj().submit(new h(arrayList)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(ConnectionResult connectionResult) {
        if (this.m != 2) {
            return this.m == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.g = 2;
        this.a.f = i();
        this.v.add(zzlk.zzoj().submit(new c()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(ConnectionResult connectionResult) {
        h();
        a(!connectionResult.hasResolution());
        this.a.e.clear();
        this.a.a(connectionResult);
        if (!this.d.zzd(this.c, connectionResult.getErrorCode())) {
            this.a.g();
        }
        if (!this.h && !this.a.e()) {
            this.a.a.zzi(connectionResult);
        }
        this.h = false;
        this.a.a.zzpk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ArrayList arrayList = new ArrayList();
        this.g = 3;
        this.i = this.a.d.size();
        for (Api.zzc<?> zzcVar : this.a.d.keySet()) {
            if (!this.a.e.containsKey(zzcVar)) {
                arrayList.add(this.a.d.get(zzcVar));
            } else if (a()) {
                f();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.v.add(zzlk.zzoj().submit(new f(arrayList)));
    }

    private void f() {
        this.a.d();
        zzlk.zzoj().execute(new Runnable() { // from class: com.google.android.gms.internal.zzlg.1
            @Override // java.lang.Runnable
            public void run() {
                zzlg.this.d.zzac(zzlg.this.c);
            }
        });
        if (this.l != null) {
            if (this.q) {
                this.l.zza(this.p, this.r);
            }
            a(false);
        }
        Iterator<Api.zzc<?>> it = this.a.e.keySet().iterator();
        while (it.hasNext()) {
            this.a.d.get(it.next()).disconnect();
        }
        if (!this.h) {
            this.a.a.zzh(this.j.isEmpty() ? null : this.j);
        } else {
            this.h = false;
            disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.n = false;
        this.a.f = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.k) {
            if (!this.a.e.containsKey(zzcVar)) {
                this.a.e.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private void h() {
        Iterator<Future<?>> it = this.v.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.v.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Scope> i() {
        HashSet hashSet = new HashSet(this.s.zzoK());
        Map<Api<?>, zzf.zza> mapZzoM = this.s.zzoM();
        for (Api<?> api : mapZzoM.keySet()) {
            if (!this.a.e.containsKey(api.zznx())) {
                hashSet.addAll(mapZzoM.get(api).zzTm);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void begin() {
        this.a.a.zzpl();
        this.a.e.clear();
        this.h = false;
        this.n = false;
        this.e = null;
        this.g = 0;
        this.m = 2;
        this.o = false;
        this.q = false;
        HashMap map = new HashMap();
        boolean z = false;
        for (Api<?> api : this.t.keySet()) {
            Api.zzb zzbVar = this.a.d.get(api.zznx());
            int iIntValue = this.t.get(api).intValue();
            boolean z2 = (api.zznv().getPriority() == 1) | z;
            if (zzbVar.zzlN()) {
                this.n = true;
                if (iIntValue < this.m) {
                    this.m = iIntValue;
                }
                if (iIntValue != 0) {
                    this.k.add(api.zznx());
                }
            }
            map.put(zzbVar, new d(this, api, iIntValue));
            z = z2;
        }
        if (z) {
            this.n = false;
        }
        if (this.n) {
            this.s.zza(Integer.valueOf(this.a.getSessionId()));
            g gVar = new g();
            this.l = (zzqw) this.u.zza(this.c, this.a.getLooper(), this.s, this.s.zzoQ(), gVar, gVar);
        }
        this.i = this.a.d.size();
        this.v.add(zzlk.zzoj().submit(new e(map)));
    }

    @Override // com.google.android.gms.internal.zzlj
    public void connect() {
        this.h = false;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void disconnect() {
        Iterator<zzli.f<?>> it = this.a.b.iterator();
        while (it.hasNext()) {
            zzli.f<?> next = it.next();
            if (next.zznK() != 1) {
                next.cancel();
                it.remove();
            }
        }
        this.a.a();
        if (this.e == null && !this.a.b.isEmpty()) {
            this.h = true;
            return;
        }
        h();
        a(true);
        this.a.e.clear();
        this.a.a((ConnectionResult) null);
        this.a.a.zzpk();
    }

    @Override // com.google.android.gms.internal.zzlj
    public String getName() {
        return "CONNECTING";
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnected(Bundle bundle) {
        if (a(3)) {
            if (bundle != null) {
                this.j.putAll(bundle);
            }
            if (a()) {
                f();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnectionSuspended(int i2) {
        d(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, R extends Result, T extends zzlb.zza<R, A>> T zza(T t) {
        this.a.b.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void zza(ConnectionResult connectionResult, Api<?> api, int i2) {
        if (a(3)) {
            a(connectionResult, api, i2);
            if (a()) {
                f();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, T extends zzlb.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
