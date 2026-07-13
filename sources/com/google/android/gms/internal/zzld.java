package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzlm;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzld<L> implements zzlm.zzb<L> {
    private final DataHolder a;

    protected zzld(DataHolder dataHolder) {
        this.a = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzlm.zzb
    public void zznN() {
        if (this.a != null) {
            this.a.close();
        }
    }

    @Override // com.google.android.gms.internal.zzlm.zzb
    public final void zzq(L l) {
        zza(l, this.a);
    }
}
