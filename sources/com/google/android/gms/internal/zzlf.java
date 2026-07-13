package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzli;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzlf implements zzlj {
    private final zzli a;

    public zzlf(zzli zzliVar) {
        this.a = zzliVar;
    }

    private <A extends Api.zzb> void a(zzli.f<A> fVar) {
        this.a.a(fVar);
        Api.zzb zzbVarZza = this.a.zza(fVar.zznx());
        if (zzbVarZza.isConnected() || !this.a.e.containsKey(fVar.zznx())) {
            fVar.zzb(zzbVarZza);
        } else {
            fVar.zzv(new Status(17));
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void begin() {
        while (!this.a.b.isEmpty()) {
            try {
                a(this.a.b.remove());
            } catch (DeadObjectException e) {
                Log.w("GACConnected", "Service died while flushing queue", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzlj
    public void disconnect() {
        this.a.e.clear();
        this.a.a();
        this.a.a((ConnectionResult) null);
        this.a.a.zzpk();
    }

    @Override // com.google.android.gms.internal.zzlj
    public String getName() {
        return "CONNECTED";
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnectionSuspended(int i) {
        if (i == 1) {
            this.a.f();
        }
        Iterator<zzli.f<?>> it = this.a.j.iterator();
        while (it.hasNext()) {
            it.next().zzw(new Status(8, "The connection to Google Play services was lost"));
        }
        this.a.a((ConnectionResult) null);
        this.a.a.zzbG(i);
        this.a.a.zzpk();
        if (i == 2) {
            this.a.connect();
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, R extends Result, T extends zzlb.zza<R, A>> T zza(T t) {
        return (T) zzb(t);
    }

    @Override // com.google.android.gms.internal.zzlj
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api.zzb, T extends zzlb.zza<? extends Result, A>> T zzb(T t) {
        try {
            a(t);
        } catch (DeadObjectException e) {
            this.a.a(new zzli.b(this) { // from class: com.google.android.gms.internal.zzlf.1
                @Override // com.google.android.gms.internal.zzli.b
                public void a() {
                    zzlf.this.onConnectionSuspended(1);
                }
            });
        }
        return t;
    }
}
