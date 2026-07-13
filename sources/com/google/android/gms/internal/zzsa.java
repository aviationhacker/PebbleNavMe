package com.google.android.gms.internal;

import defpackage.go;

/* JADX INFO: loaded from: classes.dex */
public final class zzsa implements Cloneable {
    private static final go a = new go();
    private boolean b;
    private int[] c;
    private go[] d;
    private int e;

    zzsa() {
        this(10);
    }

    zzsa(int i) {
        this.b = false;
        int iC = c(i);
        this.c = new int[iC];
        this.d = new go[iC];
        this.e = 0;
    }

    private boolean a(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean a(go[] goVarArr, go[] goVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!goVarArr[i2].equals(goVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private void b() {
        int i = this.e;
        int[] iArr = this.c;
        go[] goVarArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            go goVar = goVarArr[i3];
            if (goVar != a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    goVarArr[i2] = goVar;
                    goVarArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    private int c(int i) {
        return d(i * 4) / 4;
    }

    private int d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int e(int i) {
        int i2 = 0;
        int i3 = this.e - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.c[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    int a() {
        if (this.b) {
            b();
        }
        return this.e;
    }

    go a(int i) {
        int iE = e(i);
        if (iE < 0 || this.d[iE] == a) {
            return null;
        }
        return this.d[iE];
    }

    void a(int i, go goVar) {
        int iE = e(i);
        if (iE >= 0) {
            this.d[iE] = goVar;
            return;
        }
        int iE2 = iE ^ (-1);
        if (iE2 < this.e && this.d[iE2] == a) {
            this.c[iE2] = i;
            this.d[iE2] = goVar;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            b();
            iE2 = e(i) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int iC = c(this.e + 1);
            int[] iArr = new int[iC];
            go[] goVarArr = new go[iC];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, goVarArr, 0, this.d.length);
            this.c = iArr;
            this.d = goVarArr;
        }
        if (this.e - iE2 != 0) {
            System.arraycopy(this.c, iE2, this.c, iE2 + 1, this.e - iE2);
            System.arraycopy(this.d, iE2, this.d, iE2 + 1, this.e - iE2);
        }
        this.c[iE2] = i;
        this.d[iE2] = goVar;
        this.e++;
    }

    go b(int i) {
        if (this.b) {
            b();
        }
        return this.d[i];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsa)) {
            return false;
        }
        zzsa zzsaVar = (zzsa) obj;
        if (a() != zzsaVar.a()) {
            return false;
        }
        return a(this.c, zzsaVar.c, this.e) && a(this.d, zzsaVar.d, this.e);
    }

    public int hashCode() {
        if (this.b) {
            b();
        }
        int iHashCode = 17;
        for (int i = 0; i < this.e; i++) {
            iHashCode = (((iHashCode * 31) + this.c[i]) * 31) + this.d[i].hashCode();
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return a() == 0;
    }

    /* JADX INFO: renamed from: zzFH, reason: merged with bridge method [inline-methods] */
    public final zzsa clone() {
        int iA = a();
        zzsa zzsaVar = new zzsa(iA);
        System.arraycopy(this.c, 0, zzsaVar.c, 0, iA);
        for (int i = 0; i < iA; i++) {
            if (this.d[i] != null) {
                zzsaVar.d[i] = this.d[i].clone();
            }
        }
        zzsaVar.e = iA;
        return zzsaVar;
    }
}
