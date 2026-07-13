package com.google.android.gms.common.data;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean a;
    private ArrayList<Integer> b;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.a = false;
    }

    private void a() {
        synchronized (this) {
            if (!this.a) {
                int count = this.zzabq.getCount();
                this.b = new ArrayList<>();
                if (count > 0) {
                    this.b.add(0);
                    String strZzoy = zzoy();
                    String strZzd = this.zzabq.zzd(strZzoy, 0, this.zzabq.zzbt(0));
                    int i = 1;
                    while (i < count) {
                        int iZzbt = this.zzabq.zzbt(i);
                        String strZzd2 = this.zzabq.zzd(strZzoy, i, iZzbt);
                        if (strZzd2 == null) {
                            throw new NullPointerException("Missing value for markerColumn: " + strZzoy + ", at row: " + i + ", for window: " + iZzbt);
                        }
                        if (strZzd2.equals(strZzd)) {
                            strZzd2 = strZzd;
                        } else {
                            this.b.add(Integer.valueOf(i));
                        }
                        i++;
                        strZzd = strZzd2;
                    }
                }
                this.a = true;
            }
        }
    }

    int a(int i) {
        if (i < 0 || i >= this.b.size()) {
            throw new IllegalArgumentException("Position " + i + " is out of bounds for this buffer");
        }
        return this.b.get(i).intValue();
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        a();
        return zzj(a(i), zzbx(i));
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        a();
        return this.b.size();
    }

    protected int zzbx(int i) {
        if (i < 0 || i == this.b.size()) {
            return 0;
        }
        int count = i == this.b.size() + (-1) ? this.zzabq.getCount() - this.b.get(i).intValue() : this.b.get(i + 1).intValue() - this.b.get(i).intValue();
        if (count != 1) {
            return count;
        }
        int iA = a(i);
        int iZzbt = this.zzabq.zzbt(iA);
        String strZzoA = zzoA();
        if (strZzoA == null || this.zzabq.zzd(strZzoA, iA, iZzbt) != null) {
            return count;
        }
        return 0;
    }

    protected abstract T zzj(int i, int i2);

    protected String zzoA() {
        return null;
    }

    protected abstract String zzoy();
}
