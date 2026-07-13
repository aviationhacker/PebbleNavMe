package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class BooleanResult implements Result {
    private final Status a;
    private final boolean b;

    public BooleanResult(Status status, boolean z) {
        this.a = (Status) zzx.zzb(status, "Status must not be null");
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.a.equals(booleanResult.a) && this.b == booleanResult.b;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.a;
    }

    public boolean getValue() {
        return this.b;
    }

    public final int hashCode() {
        return (this.b ? 1 : 0) + ((this.a.hashCode() + 527) * 31);
    }
}
