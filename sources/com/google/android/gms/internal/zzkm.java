package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzx;
import defpackage.gj;
import defpackage.gk;

/* JADX INFO: loaded from: classes.dex */
public class zzkm implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, final ProxyRequest proxyRequest) {
        zzx.zzw(googleApiClient);
        zzx.zzw(proxyRequest);
        return googleApiClient.zzb(new gj(googleApiClient) { // from class: com.google.android.gms.internal.zzkm.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.gj
            public void a(Context context, zzkk zzkkVar) {
                zzkkVar.zza(new zzkh() { // from class: com.google.android.gms.internal.zzkm.1.1
                    @Override // com.google.android.gms.internal.zzkh, com.google.android.gms.internal.zzkj
                    public void zza(ProxyResponse proxyResponse) {
                        zzb(new gk(proxyResponse));
                    }
                }, proxyRequest);
            }
        });
    }
}
