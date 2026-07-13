package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzf;

/* JADX INFO: loaded from: classes.dex */
public final class zzlx {
    public static final Api.zzc<zzmb> zzRk = new Api.zzc<>();
    private static final Api.zza<zzmb, Api.ApiOptions.NoOptions> a = new Api.zza<zzmb, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzlx.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public zzmb zza(Context context, Looper looper, zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzmb(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", a, zzRk);
    public static final zzly zzagw = new zzlz();
}
