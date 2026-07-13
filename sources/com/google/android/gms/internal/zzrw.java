package com.google.android.gms.internal;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public final class zzrw {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int h;
    private int g = Integer.MAX_VALUE;
    private int i = 64;
    private int j = 67108864;

    private zzrw(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
        this.e = i;
    }

    private void a() {
        this.c += this.d;
        int i = this.c;
        if (i <= this.g) {
            this.d = 0;
        } else {
            this.d = i - this.g;
            this.c -= this.d;
        }
    }

    public static zzrw zzB(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static long zzX(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static zzrw zza(byte[] bArr, int i, int i2) {
        return new zzrw(bArr, i, i2);
    }

    public static int zzlB(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public int getPosition() {
        return this.e - this.b;
    }

    public byte[] readBytes() throws zzsd {
        int iZzFv = zzFv();
        if (iZzFv > this.c - this.e || iZzFv <= 0) {
            return iZzFv == 0 ? zzsh.zzbiE : zzlF(iZzFv);
        }
        byte[] bArr = new byte[iZzFv];
        System.arraycopy(this.a, this.e, bArr, 0, iZzFv);
        this.e = iZzFv + this.e;
        return bArr;
    }

    public double readDouble() {
        return Double.longBitsToDouble(zzFy());
    }

    public float readFloat() {
        return Float.intBitsToFloat(zzFx());
    }

    public String readString() throws zzsd {
        int iZzFv = zzFv();
        if (iZzFv > this.c - this.e || iZzFv <= 0) {
            return new String(zzlF(iZzFv), "UTF-8");
        }
        String str = new String(this.a, this.e, iZzFv, "UTF-8");
        this.e = iZzFv + this.e;
        return str;
    }

    public int zzFA() {
        if (this.g == Integer.MAX_VALUE) {
            return -1;
        }
        return this.g - this.e;
    }

    public boolean zzFB() {
        return this.e == this.c;
    }

    public byte zzFC() throws zzsd {
        if (this.e == this.c) {
            throw zzsd.a();
        }
        byte[] bArr = this.a;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }

    public int zzFo() throws zzsd {
        if (zzFB()) {
            this.f = 0;
            return 0;
        }
        this.f = zzFv();
        if (this.f == 0) {
            throw zzsd.d();
        }
        return this.f;
    }

    public void zzFp() throws zzsd {
        int iZzFo;
        do {
            iZzFo = zzFo();
            if (iZzFo == 0) {
                return;
            }
        } while (zzlA(iZzFo));
    }

    public long zzFq() {
        return zzFw();
    }

    public int zzFr() {
        return zzFv();
    }

    public boolean zzFs() {
        return zzFv() != 0;
    }

    public int zzFt() {
        return zzlB(zzFv());
    }

    public long zzFu() {
        return zzX(zzFw());
    }

    public int zzFv() throws zzsd {
        byte bZzFC = zzFC();
        if (bZzFC >= 0) {
            return bZzFC;
        }
        int i = bZzFC & Ascii.DEL;
        byte bZzFC2 = zzFC();
        if (bZzFC2 >= 0) {
            return i | (bZzFC2 << 7);
        }
        int i2 = i | ((bZzFC2 & Ascii.DEL) << 7);
        byte bZzFC3 = zzFC();
        if (bZzFC3 >= 0) {
            return i2 | (bZzFC3 << Ascii.SO);
        }
        int i3 = i2 | ((bZzFC3 & Ascii.DEL) << 14);
        byte bZzFC4 = zzFC();
        if (bZzFC4 >= 0) {
            return i3 | (bZzFC4 << Ascii.NAK);
        }
        int i4 = i3 | ((bZzFC4 & Ascii.DEL) << 21);
        byte bZzFC5 = zzFC();
        int i5 = i4 | (bZzFC5 << Ascii.FS);
        if (bZzFC5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (zzFC() >= 0) {
                return i5;
            }
        }
        throw zzsd.c();
    }

    public long zzFw() throws zzsd {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzFC = zzFC();
            j |= ((long) (bZzFC & Ascii.DEL)) << i;
            if ((bZzFC & 128) == 0) {
                return j;
            }
        }
        throw zzsd.c();
    }

    public int zzFx() throws zzsd {
        return (zzFC() & UnsignedBytes.MAX_VALUE) | ((zzFC() & UnsignedBytes.MAX_VALUE) << 8) | ((zzFC() & UnsignedBytes.MAX_VALUE) << 16) | ((zzFC() & UnsignedBytes.MAX_VALUE) << 24);
    }

    public long zzFy() throws zzsd {
        byte bZzFC = zzFC();
        return ((((long) zzFC()) & 255) << 8) | (((long) bZzFC) & 255) | ((((long) zzFC()) & 255) << 16) | ((((long) zzFC()) & 255) << 24) | ((((long) zzFC()) & 255) << 32) | ((((long) zzFC()) & 255) << 40) | ((((long) zzFC()) & 255) << 48) | ((((long) zzFC()) & 255) << 56);
    }

    public void zza(zzse zzseVar) throws zzsd {
        int iZzFv = zzFv();
        if (this.h >= this.i) {
            throw zzsd.g();
        }
        int iZzlC = zzlC(iZzFv);
        this.h++;
        zzseVar.zzb(this);
        zzlz(0);
        this.h--;
        zzlD(iZzlC);
    }

    public void zza(zzse zzseVar, int i) throws zzsd {
        if (this.h >= this.i) {
            throw zzsd.g();
        }
        this.h++;
        zzseVar.zzb(this);
        zzlz(zzsh.a(i, 4));
        this.h--;
    }

    public boolean zzlA(int i) {
        switch (zzsh.a(i)) {
            case 0:
                zzFr();
                return true;
            case 1:
                zzFy();
                return true;
            case 2:
                zzlG(zzFv());
                return true;
            case 3:
                zzFp();
                zzlz(zzsh.a(zzsh.zzlV(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                zzFx();
                return true;
            default:
                throw zzsd.f();
        }
    }

    public int zzlC(int i) throws zzsd {
        if (i < 0) {
            throw zzsd.b();
        }
        int i2 = this.e + i;
        int i3 = this.g;
        if (i2 > i3) {
            throw zzsd.a();
        }
        this.g = i2;
        a();
        return i3;
    }

    public void zzlD(int i) {
        this.g = i;
        a();
    }

    public void zzlE(int i) {
        if (i > this.e - this.b) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.e - this.b));
        }
        if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        }
        this.e = this.b + i;
    }

    public byte[] zzlF(int i) throws zzsd {
        if (i < 0) {
            throw zzsd.b();
        }
        if (this.e + i > this.g) {
            zzlG(this.g - this.e);
            throw zzsd.a();
        }
        if (i > this.c - this.e) {
            throw zzsd.a();
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.a, this.e, bArr, 0, i);
        this.e += i;
        return bArr;
    }

    public void zzlG(int i) throws zzsd {
        if (i < 0) {
            throw zzsd.b();
        }
        if (this.e + i > this.g) {
            zzlG(this.g - this.e);
            throw zzsd.a();
        }
        if (i > this.c - this.e) {
            throw zzsd.a();
        }
        this.e += i;
    }

    public void zzlz(int i) {
        if (this.f != i) {
            throw zzsd.e();
        }
    }

    public byte[] zzx(int i, int i2) {
        if (i2 == 0) {
            return zzsh.zzbiE;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.a, this.b + i, bArr, 0, i2);
        return bArr;
    }
}
