package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.signin.internal.zzd;
import com.google.android.gms.signin.internal.zzf;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class zzi extends zzj<zzf> implements zzqw {
    private final boolean b;
    private final com.google.android.gms.common.internal.zzf c;
    private final zzqx d;
    private Integer e;
    private final ExecutorService f;

    static class a extends zzd.zza {
        private final zzqx a;
        private final ExecutorService b;

        public a(zzqx zzqxVar, ExecutorService executorService) {
            this.a = zzqxVar;
            this.b = executorService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public GoogleApiClient.ServerAuthCodeCallbacks a() {
            return this.a.zzCg();
        }

        @Override // com.google.android.gms.signin.internal.zzd
        public void zza(final String str, final String str2, final zzf zzfVar) {
            this.b.submit(new Runnable() { // from class: com.google.android.gms.signin.internal.zzi.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzfVar.zzaq(a.this.a().onUploadServerAuthCode(str, str2));
                    } catch (RemoteException e) {
                        Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", e);
                    }
                }
            });
        }

        @Override // com.google.android.gms.signin.internal.zzd
        public void zza(final String str, final List<Scope> list, final zzf zzfVar) {
            this.b.submit(new Runnable() { // from class: com.google.android.gms.signin.internal.zzi.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        GoogleApiClient.ServerAuthCodeCallbacks.CheckResult checkResultOnCheckServerAuthorization = a.this.a().onCheckServerAuthorization(str, Collections.unmodifiableSet(new HashSet(list)));
                        zzfVar.zza(new CheckServerAuthResult(checkResultOnCheckServerAuthorization.zznD(), checkResultOnCheckServerAuthorization.zznE()));
                    } catch (RemoteException e) {
                        Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", e);
                    }
                }
            });
        }
    }

    public zzi(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzf zzfVar, zzqx zzqxVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ExecutorService executorService) {
        super(context, looper, 44, zzfVar, connectionCallbacks, onConnectionFailedListener);
        this.b = z;
        this.c = zzfVar;
        this.d = zzqxVar;
        this.e = zzfVar.zzoR();
        this.f = executorService;
    }

    public static Bundle zza(zzqx zzqxVar, Integer num, ExecutorService executorService) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzqxVar.zzCf());
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzqxVar.zzlY());
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzqxVar.zzmb());
        if (zzqxVar.zzCg() != null) {
            bundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new a(zzqxVar, executorService).asBinder()));
        }
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", zzqxVar.zzCh());
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzqxVar.zzma());
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void connect() {
        zza(new zzj.zzf());
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzCe() {
        try {
            zzpc().zzjq(this.e.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzp zzpVar, Set<Scope> set, zze zzeVar) {
        zzx.zzb(zzeVar, "Expecting a valid ISignInCallbacks");
        try {
            zzpc().zza(new AuthAccountRequest(zzpVar, set), zzeVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when authAccount is called");
            try {
                zzeVar.zza(new ConnectionResult(8, null), new AuthAccountResult());
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzp zzpVar, boolean z) {
        try {
            zzpc().zza(zzpVar, this.e.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzt zztVar) {
        zzx.zzb(zztVar, "Expecting a valid IResolveAccountCallbacks");
        try {
            zzpc().zza(new ResolveAccountRequest(this.c.zzoI(), this.e.intValue()), zztVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when resolveAccount is called");
            try {
                zztVar.zzb(new ResolveAccountResponse(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    /* JADX INFO: renamed from: zzdO, reason: merged with bridge method [inline-methods] */
    public zzf zzW(IBinder iBinder) {
        return zzf.zza.zzdN(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    public String zzfK() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    public String zzfL() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.zzj, com.google.android.gms.common.api.Api.zzb
    public boolean zzlN() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    public Bundle zzly() {
        Bundle bundleZza = zza(this.d, this.c.zzoR(), this.f);
        if (!getContext().getPackageName().equals(this.c.zzoN())) {
            bundleZza.putString("com.google.android.gms.signin.internal.realClientPackageName", this.c.zzoN());
        }
        return bundleZza;
    }
}
