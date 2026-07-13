package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzqd;

/* JADX INFO: loaded from: classes.dex */
public class zzd implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private final zzqd.zza a;
    private zzf b = null;
    private boolean c = true;

    public zzd(zzqd.zza zzaVar) {
        this.a = zzaVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.b.a(false);
        if (this.c && this.a != null) {
            this.a.zzBr();
        }
        this.c = false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.b.a(true);
        if (this.c && this.a != null) {
            if (connectionResult.hasResolution()) {
                this.a.zzf(connectionResult.getResolution());
            } else {
                this.a.zzBs();
            }
        }
        this.c = false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        this.b.a(true);
    }

    public void zza(zzf zzfVar) {
        this.b = zzfVar;
    }

    public void zzao(boolean z) {
        this.c = z;
    }
}
