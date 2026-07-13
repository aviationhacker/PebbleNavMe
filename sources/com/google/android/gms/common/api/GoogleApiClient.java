package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlm;
import com.google.android.gms.internal.zzlp;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqu;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class GoogleApiClient {

    public static final class Builder {
        private Account a;
        private final Set<Scope> b;
        private int c;
        private View d;
        private String e;
        private String f;
        private final Map<Api<?>, zzf.zza> g;
        private final Context h;
        private final Map<Api<?>, Api.ApiOptions> i;
        private FragmentActivity j;
        private int k;
        private OnConnectionFailedListener l;
        private Looper m;
        private GoogleApiAvailability n;
        private Api.zza<? extends zzqw, zzqx> o;
        private final ArrayList<ConnectionCallbacks> p;
        private final ArrayList<OnConnectionFailedListener> q;
        private zzqx r;

        public Builder(Context context) {
            this.b = new HashSet();
            this.g = new zzme();
            this.i = new zzme();
            this.k = -1;
            this.n = GoogleApiAvailability.getInstance();
            this.o = zzqu.zzRl;
            this.p = new ArrayList<>();
            this.q = new ArrayList<>();
            this.h = context;
            this.m = context.getMainLooper();
            this.e = context.getPackageName();
            this.f = context.getClass().getName();
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzx.zzb(connectionCallbacks, "Must provide a connected listener");
            this.p.add(connectionCallbacks);
            zzx.zzb(onConnectionFailedListener, "Must provide a connection failed listener");
            this.q.add(onConnectionFailedListener);
        }

        private GoogleApiClient a() {
            final zzli zzliVar = new zzli(this.h.getApplicationContext(), this.m, zznB(), this.n, this.o, this.i, this.p, this.q, this.k);
            zzlp zzlpVarZza = zzlp.zza(this.j);
            if (zzlpVarZza == null) {
                new Handler(this.h.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.common.api.GoogleApiClient.Builder.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Builder.this.j.isFinishing() || Builder.this.j.getSupportFragmentManager().isDestroyed()) {
                            return;
                        }
                        Builder.this.a(zzlp.zzb(Builder.this.j), zzliVar);
                    }
                });
            } else {
                a(zzlpVarZza, zzliVar);
            }
            return zzliVar;
        }

        private <O extends Api.ApiOptions> void a(Api<O> api, O o, int i, Scope... scopeArr) {
            boolean z = true;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalArgumentException("Invalid resolution mode: '" + i + "', use a constant from GoogleApiClient.ResolutionMode");
                }
                z = false;
            }
            HashSet hashSet = new HashSet(api.zznv().zzm(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.g.put(api, new zzf.zza(hashSet, z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(zzlp zzlpVar, GoogleApiClient googleApiClient) {
            zzlpVar.zza(this.k, googleApiClient, this.l);
        }

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            zzx.zzb(api, "Api must not be null");
            this.i.put(api, null);
            this.b.addAll(api.zznv().zzm(null));
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> api, O o) {
            zzx.zzb(api, "Api must not be null");
            zzx.zzb(o, "Null options are not permitted for this Api");
            this.i.put(api, o);
            this.b.addAll(api.zznv().zzm(o));
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
            zzx.zzb(api, "Api must not be null");
            zzx.zzb(o, "Null options are not permitted for this Api");
            this.i.put(api, o);
            a(api, o, 1, scopeArr);
            return this;
        }

        public Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            zzx.zzb(api, "Api must not be null");
            this.i.put(api, null);
            a(api, null, 1, scopeArr);
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            zzx.zzb(connectionCallbacks, "Listener must not be null");
            this.p.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            zzx.zzb(onConnectionFailedListener, "Listener must not be null");
            this.q.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(Scope scope) {
            zzx.zzb(scope, "Scope must not be null");
            this.b.add(scope);
            return this;
        }

        public GoogleApiClient build() {
            zzx.zzb(!this.i.isEmpty(), "must call addApi() to add at least one API");
            return this.k >= 0 ? a() : new zzli(this.h, this.m, zznB(), this.n, this.o, this.i, this.p, this.q, -1);
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, int i, OnConnectionFailedListener onConnectionFailedListener) {
            zzx.zzb(i >= 0, "clientId must be non-negative");
            this.k = i;
            this.j = (FragmentActivity) zzx.zzb(fragmentActivity, "Null activity is not permitted.");
            this.l = onConnectionFailedListener;
            return this;
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, OnConnectionFailedListener onConnectionFailedListener) {
            return enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        public Builder requestServerAuthCode(String str, ServerAuthCodeCallbacks serverAuthCodeCallbacks) {
            this.r = new zzqx.zza().zza(str, serverAuthCodeCallbacks).zzCi();
            return this;
        }

        public Builder setAccountName(String str) {
            this.a = str == null ? null : new Account(str, GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.c = i;
            return this;
        }

        public Builder setHandler(Handler handler) {
            zzx.zzb(handler, "Handler must not be null");
            this.m = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View view) {
            zzx.zzb(view, "View must not be null");
            this.d = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public zzf zznB() {
            if (this.i.containsKey(zzqu.API)) {
                zzx.zza(this.r == null, "SignIn.API can't be used in conjunction with requestServerAuthCode.");
                this.r = (zzqx) this.i.get(zzqu.API);
            }
            return new zzf(this.a, this.b, this.g, this.c, this.d, this.e, this.f, this.r != null ? this.r : zzqx.zzaUZ);
        }
    }

    public interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface ServerAuthCodeCallbacks {

        public static class CheckResult {
            private boolean a;
            private Set<Scope> b;

            private CheckResult(boolean z, Set<Scope> set) {
                this.a = z;
                this.b = set;
            }

            public static CheckResult newAuthNotRequiredResult() {
                return new CheckResult(false, null);
            }

            public static CheckResult newAuthRequiredResult(Set<Scope> set) {
                zzx.zzb((set == null || set.isEmpty()) ? false : true, "A non-empty scope set is required if further auth is needed.");
                return new CheckResult(true, set);
            }

            public boolean zznD() {
                return this.a;
            }

            public Set<Scope> zznE() {
                return this.b;
            }
        }

        CheckResult onCheckServerAuthorization(String str, Set<Scope> set);

        boolean onUploadServerAuthCode(String str, String str2);
    }

    public interface zza {
        void zza(ConnectionResult connectionResult);

        void zzb(ConnectionResult connectionResult);
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public int getSessionId() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <C extends Api.zzb> C zza(Api.zzc<C> zzcVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, R extends Result, T extends zzlb.zza<R, A>> T zza(T t) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, T extends zzlb.zza<? extends Result, A>> T zzb(T t) {
        throw new UnsupportedOperationException();
    }

    public <L> zzlm<L> zzo(L l) {
        throw new UnsupportedOperationException();
    }
}
