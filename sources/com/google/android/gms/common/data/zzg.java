package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class zzg<T> extends zzb<T> {
    private T a;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException("Cannot advance the iterator beyond " + this.zzadj);
        }
        this.zzadj++;
        if (this.zzadj == 0) {
            this.a = this.zzadi.get(0);
            if (!(this.a instanceof zzc)) {
                throw new IllegalStateException("DataBuffer reference of type " + this.a.getClass() + " is not movable");
            }
        } else {
            ((zzc) this.a).zzbr(this.zzadj);
        }
        return this.a;
    }
}
