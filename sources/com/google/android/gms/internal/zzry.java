package com.google.android.gms.internal;

import com.google.android.gms.internal.zzrx;
import com.google.android.gms.internal.zzry;
import defpackage.go;
import defpackage.gp;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzry<M extends zzry<M>> extends zzse {
    protected zzsa zzbik;

    @Override // com.google.android.gms.internal.zzse
    protected int zzB() {
        if (this.zzbik == null) {
            return 0;
        }
        int iA = 0;
        for (int i = 0; i < this.zzbik.a(); i++) {
            iA += this.zzbik.b(i).a();
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.zzse
    /* JADX INFO: renamed from: zzFF, reason: merged with bridge method [inline-methods] */
    public M clone() {
        M m = (M) super.clone();
        zzsc.zza(this, m);
        return m;
    }

    public final <T> T zza(zzrz<M, T> zzrzVar) {
        go goVarA;
        if (this.zzbik == null || (goVarA = this.zzbik.a(zzsh.zzlV(zzrzVar.tag))) == null) {
            return null;
        }
        return (T) goVarA.a(zzrzVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws zzrx.zza {
        if (this.zzbik == null) {
            return;
        }
        for (int i = 0; i < this.zzbik.a(); i++) {
            this.zzbik.b(i).a(zzrxVar);
        }
    }

    protected final boolean zza(zzrw zzrwVar, int i) {
        int position = zzrwVar.getPosition();
        if (!zzrwVar.zzlA(i)) {
            return false;
        }
        int iZzlV = zzsh.zzlV(i);
        gp gpVar = new gp(i, zzrwVar.zzx(position, zzrwVar.getPosition() - position));
        go goVarA = null;
        if (this.zzbik == null) {
            this.zzbik = new zzsa();
        } else {
            goVarA = this.zzbik.a(iZzlV);
        }
        if (goVarA == null) {
            goVarA = new go();
            this.zzbik.a(iZzlV, goVarA);
        }
        goVarA.a(gpVar);
        return true;
    }
}
