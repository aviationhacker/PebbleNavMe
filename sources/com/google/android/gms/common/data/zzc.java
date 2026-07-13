package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzc {
    private int a;
    protected final DataHolder zzabq;
    protected int zzadl;

    public zzc(DataHolder dataHolder, int i) {
        this.zzabq = (DataHolder) zzx.zzw(dataHolder);
        zzbr(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzw.equal(Integer.valueOf(zzcVar.zzadl), Integer.valueOf(this.zzadl)) && zzw.equal(Integer.valueOf(zzcVar.a), Integer.valueOf(this.a)) && zzcVar.zzabq == this.zzabq;
    }

    protected boolean getBoolean(String str) {
        return this.zzabq.zze(str, this.zzadl, this.a);
    }

    protected byte[] getByteArray(String str) {
        return this.zzabq.zzg(str, this.zzadl, this.a);
    }

    protected float getFloat(String str) {
        return this.zzabq.zzf(str, this.zzadl, this.a);
    }

    protected int getInteger(String str) {
        return this.zzabq.zzc(str, this.zzadl, this.a);
    }

    protected long getLong(String str) {
        return this.zzabq.zzb(str, this.zzadl, this.a);
    }

    protected String getString(String str) {
        return this.zzabq.zzd(str, this.zzadl, this.a);
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzadl), Integer.valueOf(this.a), this.zzabq);
    }

    public boolean isDataValid() {
        return !this.zzabq.isClosed();
    }

    protected void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzabq.zza(str, this.zzadl, this.a, charArrayBuffer);
    }

    protected void zzbr(int i) {
        zzx.zzZ(i >= 0 && i < this.zzabq.getCount());
        this.zzadl = i;
        this.a = this.zzabq.zzbt(this.zzadl);
    }

    public boolean zzce(String str) {
        return this.zzabq.zzce(str);
    }

    protected Uri zzcf(String str) {
        return this.zzabq.zzh(str, this.zzadl, this.a);
    }

    protected boolean zzcg(String str) {
        return this.zzabq.zzi(str, this.zzadl, this.a);
    }

    protected int zzou() {
        return this.zzadl;
    }
}
