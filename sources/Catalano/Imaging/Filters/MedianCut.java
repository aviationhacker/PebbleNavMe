package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class MedianCut implements IApplyInPlace {
    private int[] a;
    private int[] b;
    private a[] c;
    private int d = 8;
    private byte[] e;
    private byte[] f;
    private byte[] g;

    public int getNumberOfCubes() {
        return this.d;
    }

    public void setNumberOfCubes(int i) {
        this.d = Math.max(1, Math.min(i, 256));
    }

    public MedianCut() {
    }

    public MedianCut(int i) {
        setNumberOfCubes(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        if (fastBitmap.isRGB()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight());
            int[] data = fastBitmap.getData();
            this.a = new int[32768];
            for (int i2 : data) {
                int iA = a(i2);
                int[] iArr = this.a;
                iArr[iA] = iArr[iA] + 1;
            }
            this.c = new a[256];
            this.b = new int[32768];
            a aVar = new a();
            int i3 = 0;
            int i4 = 0;
            while (i4 <= 32767) {
                if (this.a[i4] != 0) {
                    i = i3 + 1;
                    this.b[i3] = i4;
                    aVar.c += this.a[i4];
                } else {
                    i = i3;
                }
                i4++;
                i3 = i;
            }
            aVar.a = 0;
            aVar.b = i3 - 1;
            aVar.d = 0;
            a(aVar);
            this.c[0] = aVar;
            int i5 = 0;
            int i6 = 1;
            while (i6 < this.d) {
                int i7 = 255;
                int i8 = -1;
                for (int i9 = 0; i9 <= i6 - 1; i9++) {
                    if (this.c[i9].a != this.c[i9].b && this.c[i9].d < i7) {
                        i7 = this.c[i9].d;
                        i8 = i9;
                    }
                }
                if (i8 == -1) {
                    break;
                }
                a aVar2 = this.c[i8];
                int i10 = aVar2.f - aVar2.e;
                int i11 = aVar2.h - aVar2.g;
                int i12 = aVar2.j - aVar2.i;
                if (i10 >= i11 && i10 >= i12) {
                    i5 = 0;
                }
                if (i11 >= i10 && i11 >= i12) {
                    i5 = 1;
                }
                if (i12 >= i10 && i12 >= i11) {
                    i5 = 2;
                }
                a(this.b, aVar2.a, aVar2.b, i5);
                a(this.b, aVar2.a, aVar2.b);
                b(this.b, aVar2.a, aVar2.b, i5);
                int i13 = aVar2.a;
                int i14 = 0;
                while (i13 <= aVar2.b - 1 && i14 < aVar2.c / 2) {
                    i14 += this.a[this.b[i13]];
                    i13++;
                }
                a aVar3 = new a();
                aVar3.a = aVar2.a;
                aVar3.b = i13 - 1;
                aVar3.c = i14;
                aVar3.d = aVar2.d + 1;
                a(aVar3);
                this.c[i8] = aVar3;
                a aVar4 = new a();
                aVar4.a = i13;
                aVar4.b = aVar2.b;
                aVar4.c = aVar2.c - i14;
                aVar4.d = aVar2.d + 1;
                a(aVar4);
                this.c[i6] = aVar4;
                i6++;
            }
            a(this.a, i6);
            int[] data2 = fastBitmap2.getData();
            for (int i15 = 0; i15 < data.length; i15++) {
                int iA2 = a(data[i15]);
                data2[i15] = (this.g[this.a[iA2]] & UnsignedBytes.MAX_VALUE) | ((this.e[this.a[iA2]] & UnsignedBytes.MAX_VALUE) << 16) | ((this.f[this.a[iA2]] & UnsignedBytes.MAX_VALUE) << 8);
            }
            fastBitmap.setImage(fastBitmap2);
            return;
        }
        throw new IllegalArgumentException("Median cut only works in RGB images.");
    }

    private final int a(int i) {
        return ((16252928 & i) >> 19) | ((63488 & i) >> 6) | ((i & 248) << 7);
    }

    private final int b(int i) {
        return (i & 31) << 3;
    }

    private final int c(int i) {
        return (i >> 2) & 248;
    }

    private final int d(int i) {
        return (i >> 7) & 248;
    }

    private void a(a aVar) {
        int i = 255;
        int i2 = 0;
        int i3 = 0;
        int i4 = 255;
        int i5 = 0;
        int i6 = 255;
        for (int i7 = aVar.a; i7 <= aVar.b; i7++) {
            int i8 = this.b[i7];
            int iB = b(i8);
            int iC = c(i8);
            int iD = d(i8);
            if (iB > i5) {
                i5 = iB;
            }
            if (iB < i6) {
                i6 = iB;
            }
            if (iC > i3) {
                i3 = iC;
            }
            if (iC < i4) {
                i4 = iC;
            }
            if (iD > i2) {
                i2 = iD;
            }
            if (iD < i) {
                i = iD;
            }
        }
        aVar.e = i6;
        aVar.f = i5;
        aVar.g = i4;
        aVar.h = i3;
        aVar.i = i;
        aVar.j = i2;
    }

    private void a(int[] iArr, int i) {
        int i2;
        int i3;
        this.e = new byte[256];
        this.f = new byte[256];
        this.g = new byte[256];
        for (int i4 = 0; i4 <= i - 1; i4++) {
            a aVar = this.c[i4];
            float fD = 0.0f;
            float fC = 0.0f;
            float fB = 0.0f;
            for (int i5 = aVar.a; i5 <= aVar.b; i5++) {
                int i6 = this.b[i5];
                fB += b(i6) * iArr[i6];
                fC += c(i6) * iArr[i6];
                fD += iArr[i6] * d(i6);
            }
            int i7 = (int) (fB / aVar.c);
            int i8 = (int) (fC / aVar.c);
            int i9 = (int) (fD / aVar.c);
            if (i7 == 248 && i8 == 248 && i9 == 248) {
                i9 = 255;
                i2 = 255;
                i3 = 255;
            } else {
                i2 = i8;
                i3 = i7;
            }
            this.e[i4] = (byte) i3;
            this.f[i4] = (byte) i2;
            this.g[i4] = (byte) i9;
        }
        for (int i10 = 0; i10 <= i - 1; i10++) {
            a aVar2 = this.c[i10];
            for (int i11 = aVar2.a; i11 <= aVar2.b; i11++) {
                iArr[this.b[i11]] = i10;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(int[] iArr, int i, int i2, int i3) {
        switch (i3) {
            case 0:
                while (i <= i2) {
                    int i4 = iArr[i];
                    iArr[i] = (i4 >> 5) | ((i4 & 31) << 10);
                    i++;
                }
                break;
            case 1:
                while (i <= i2) {
                    int i5 = iArr[i];
                    int i6 = (i5 >> 5) & 31;
                    iArr[i] = ((i5 >> 10) << 5) | (i6 << 10) | (i5 & 31);
                    i++;
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void b(int[] iArr, int i, int i2, int i3) {
        switch (i3) {
            case 0:
                while (i <= i2) {
                    int i4 = iArr[i];
                    iArr[i] = ((i4 & 1023) << 5) | (i4 >> 10);
                    i++;
                }
                break;
            case 1:
                while (i <= i2) {
                    int i5 = iArr[i];
                    iArr[i] = (((i5 >> 5) & 31) << 10) | ((i5 >> 10) << 5) | (i5 & 31);
                    i++;
                }
                break;
        }
    }

    private void a(int[] iArr, int i, int i2) {
        if (i2 > i) {
            int i3 = iArr[(i + i2) / 2];
            int i4 = i2;
            int i5 = i;
            while (i5 <= i4) {
                while (i5 < i2 && iArr[i5] < i3) {
                    i5++;
                }
                while (i4 > i && iArr[i4] > i3) {
                    i4--;
                }
                if (i5 <= i4) {
                    int i6 = iArr[i5];
                    iArr[i5] = iArr[i4];
                    iArr[i4] = i6;
                    i5++;
                    i4--;
                }
            }
            if (i < i4) {
                a(iArr, i, i4);
            }
            if (i5 < i2) {
                a(iArr, i5, i2);
            }
        }
    }

    class a {
        int a;
        int b;
        int c = 0;
        int d;
        int e;
        int f;
        int g;
        int h;
        int i;
        int j;

        a() {
        }

        public String toString() {
            return (((("lower=" + this.a + " upper=" + this.b) + " count=" + this.c + " level=" + this.d) + " rmin=" + this.e + " rmax=" + this.f) + " gmin=" + this.g + " gmax=" + this.h) + " bmin=" + this.i + " bmax=" + this.j;
        }
    }
}
