package com.google.android.gms.appdatasearch;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzju;

/* JADX INFO: loaded from: classes.dex */
public final class zza {
    public static final Api.zzc<zzjs> zzPT = new Api.zzc<>();
    private static final Api.zza<zzjs, Api.ApiOptions.NoOptions> a = new Api.zza<zzjs, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.appdatasearch.zza.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public zzjs zza(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzjs(context, looper, zzfVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> zzPV = new Api<>("AppDataSearch.LIGHTWEIGHT_API", a, zzPT);
    public static final zzk zzPW = new zzju();
}
