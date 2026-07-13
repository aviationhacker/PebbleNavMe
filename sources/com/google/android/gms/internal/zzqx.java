package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class zzqx implements Api.ApiOptions.Optional {
    public static final zzqx zzaUZ = new zza().zzCi();
    private final boolean a;
    private final boolean b;
    private final String c;
    private final GoogleApiClient.ServerAuthCodeCallbacks d;
    private final boolean e;
    private final boolean f;

    public static final class zza {
        private boolean a;
        private boolean b;
        private String c;
        private GoogleApiClient.ServerAuthCodeCallbacks d;
        private boolean e;
        private boolean f;

        private String a(String str) {
            zzx.zzw(str);
            zzx.zzb(this.c == null || this.c.equals(str), "two different server client ids provided");
            return str;
        }

        public zzqx zzCi() {
            return new zzqx(this.a, this.b, this.c, this.d, this.e, this.f);
        }

        public zza zza(String str, GoogleApiClient.ServerAuthCodeCallbacks serverAuthCodeCallbacks) {
            this.a = true;
            this.b = true;
            this.c = a(str);
            this.d = (GoogleApiClient.ServerAuthCodeCallbacks) zzx.zzw(serverAuthCodeCallbacks);
            return this;
        }
    }

    private zzqx(boolean z, boolean z2, String str, GoogleApiClient.ServerAuthCodeCallbacks serverAuthCodeCallbacks, boolean z3, boolean z4) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = serverAuthCodeCallbacks;
        this.e = z3;
        this.f = z4;
    }

    public boolean zzCf() {
        return this.a;
    }

    public GoogleApiClient.ServerAuthCodeCallbacks zzCg() {
        return this.d;
    }

    public boolean zzCh() {
        return this.e;
    }

    public boolean zzlY() {
        return this.b;
    }

    public boolean zzma() {
        return this.f;
    }

    public String zzmb() {
        return this.c;
    }
}
