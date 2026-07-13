package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzli;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class zzlh implements zzlj {
    private final zzli a;

    public zzlh(zzli zzliVar) {
        this.a = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void begin() {
        this.a.b();
        this.a.f = Collections.emptySet();
    }

    @Override // com.google.android.gms.internal.zzlj
    public void connect() {
        this.a.c();
    }

    @Override // com.google.android.gms.internal.zzlj
    public void disconnect() {
        for (zzli.f<?> fVar : this.a.b) {
            fVar.zza(null);
            fVar.cancel();
        }
        this.a.b.clear();
        this.a.e.clear();
        this.a.a();
    }

    @Override // com.google.android.gms.internal.zzlj
    public String getName() {
        return "DISCONNECTED";
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, R extends Result, T extends zzlb.zza<R, A>> T zza(T t) {
        this.a.b.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, T extends zzlb.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
