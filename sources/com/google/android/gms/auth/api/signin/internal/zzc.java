package com.google.android.gms.auth.api.signin.internal;

/* JADX INFO: loaded from: classes.dex */
public class zzc {
    static int a = 31;
    private int b = 1;

    public zzc zzP(boolean z) {
        this.b = (z ? 1 : 0) + (this.b * a);
        return this;
    }

    public zzc zzl(Object obj) {
        this.b = (obj == null ? 0 : obj.hashCode()) + (this.b * a);
        return this;
    }

    public int zzmd() {
        return this.b;
    }
}
