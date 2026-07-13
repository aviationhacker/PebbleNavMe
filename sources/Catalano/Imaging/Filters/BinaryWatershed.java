package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.DistanceTransform;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class BinaryWatershed implements IApplyInPlace {
    private final int[] a;
    private final int[] b;
    private int[] c;
    private final float d;
    private int e;
    private int f;
    private int g;
    private DistanceTransform.Distance h;
    private float i;

    public BinaryWatershed() {
        this.a = new int[]{0, 1, 1, 1, 0, -1, -1, -1};
        this.b = new int[]{-1, -1, 0, 1, 1, 1, 0, -1};
        this.d = 1.4142135f;
        this.h = DistanceTransform.Distance.Euclidean;
        this.i = 0.5f;
    }

    public BinaryWatershed(float f) {
        this.a = new int[]{0, 1, 1, 1, 0, -1, -1, -1};
        this.b = new int[]{-1, -1, 0, 1, 1, 1, 0, -1};
        this.d = 1.4142135f;
        this.h = DistanceTransform.Distance.Euclidean;
        this.i = 0.5f;
        this.i = f;
    }

    public BinaryWatershed(float f, DistanceTransform.Distance distance) {
        this.a = new int[]{0, 1, 1, 1, 0, -1, -1, -1};
        this.b = new int[]{-1, -1, 0, 1, 1, 1, 0, -1};
        this.d = 1.4142135f;
        this.h = DistanceTransform.Distance.Euclidean;
        this.i = 0.5f;
        this.i = f;
        this.h = distance;
    }

    public BinaryWatershed(DistanceTransform.Distance distance) {
        this.a = new int[]{0, 1, 1, 1, 0, -1, -1, -1};
        this.b = new int[]{-1, -1, 0, 1, 1, 1, 0, -1};
        this.d = 1.4142135f;
        this.h = DistanceTransform.Distance.Euclidean;
        this.i = 0.5f;
        this.h = distance;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("Watershed only works in grayscale (binary) images");
        }
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        DistanceTransform distanceTransform = new DistanceTransform(this.h);
        float[][] fArrCompute = distanceTransform.Compute(fastBitmap);
        float[] fArr = new float[fArrCompute.length * fArrCompute[0].length];
        int i = 0;
        for (int i2 = 0; i2 < fastBitmap.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < fastBitmap.getWidth()) {
                fArr[i] = fArrCompute[i2][i3];
                i3++;
                i++;
            }
        }
        a(fArrCompute[0].length);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight(), FastBitmap.ColorSpace.Grayscale);
        long[] jArrA = a(fArrCompute, fArr, fastBitmap2, 0.0f, distanceTransform.getMaximumDistance(), -808080.0d);
        a(fArr, fastBitmap2, jArrA, this.i, 0.7778175f);
        FastBitmap fastBitmapA = a(fArrCompute, fastBitmap2, distanceTransform.getMaximumDistance(), -808080.0d);
        a(fastBitmapA, fastBitmap2, jArrA);
        b(fastBitmapA);
        c(fastBitmapA);
        fastBitmap.setImage(fastBitmapA);
    }

    private void a(int i) {
        int i2 = 1;
        int i3 = 0;
        do {
            i3++;
            i2 *= 2;
        } while (i2 < i);
        this.e = i2 - 1;
        this.f = this.e ^ (-1);
        this.g = i3;
        this.c = new int[]{-i, (-i) + 1, 1, i + 1, i, i - 1, -1, (-i) - 1};
    }

    private long[] a(float[][] fArr, float[] fArr2, FastBitmap fastBitmap, float f, float f2, double d) {
        boolean z;
        int[] data = fastBitmap.getData();
        int i = 0;
        int i2 = 0;
        while (i2 < fArr.length) {
            int length = (fArr[0].length * i2) + 0;
            int i3 = i;
            int i4 = 0;
            while (i4 < fArr[0].length) {
                float f3 = fArr[i2][i4];
                float fA = a(i4, i2, fArr2, fArr[0].length, fArr.length);
                if (f3 != f && i4 != 0 && i4 != fArr[0].length - 1 && i2 != 0 && i2 != fArr.length - 1 && f3 >= d) {
                    boolean z2 = (i2 == 0 || i2 == fArr.length + (-1) || i4 == 0 || i4 == fArr[0].length + (-1)) ? false : true;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= 8) {
                            z = true;
                            break;
                        }
                        if (z2 || a(i4, i2, i5, fArr[0].length, fArr.length)) {
                            float f4 = fArr[this.b[i5] + i2][this.a[i5] + i4];
                            float fA2 = a(i4 + this.a[i5], i2 + this.b[i5], fArr2, fArr[0].length, fArr.length);
                            if (f4 > f3 && fA2 > fA) {
                                z = false;
                                break;
                            }
                        }
                        i5++;
                    }
                    if (z) {
                        data[length] = 1;
                        i3++;
                    }
                }
                i4++;
                length++;
            }
            i2++;
            i = i3;
        }
        float f5 = (float) (2.0E9d / ((double) (f2 - f)));
        long[] jArr = new long[i];
        int i6 = 0;
        int i7 = 0;
        while (i7 < fArr.length) {
            int length2 = (fArr[0].length * i7) + 0;
            int i8 = i6;
            int i9 = 0;
            while (i9 < fArr[0].length) {
                if (data[length2] == 1) {
                    jArr[i8] = (((long) ((int) ((a(i9, i7, fArr2, fArr[0].length, fArr.length) - f) * f5))) << 32) | ((long) length2);
                    i8++;
                }
                i9++;
                length2++;
            }
            i7++;
            i6 = i8;
        }
        Arrays.sort(jArr);
        return jArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(float[] r34, Catalano.Imaging.FastBitmap r35, long[] r36, float r37, float r38) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.BinaryWatershed.a(float[], Catalano.Imaging.FastBitmap, long[], float, float):void");
    }

    private FastBitmap a(float[][] fArr, FastBitmap fastBitmap, float f, double d) {
        int length = fArr[0].length;
        int length2 = fArr.length;
        int[] data = fastBitmap.getData();
        double d2 = 1.0d - ((((double) f) - 1.0d) * 0.001975284584980237d);
        double d3 = 253.0d / (((double) f) - 1.0d);
        if (d3 > 1.0d) {
            d3 = 1.0d;
        }
        FastBitmap fastBitmap2 = new FastBitmap(length, length2, FastBitmap.ColorSpace.Grayscale);
        int[] data2 = fastBitmap2.getData();
        int i = 0;
        for (float[] fArr2 : fArr) {
            int i2 = 0;
            while (i2 < length) {
                float f2 = fArr2[i2];
                if (f2 < 0.5d) {
                    data2[i] = 0;
                } else if ((data[i] & 8) != 0) {
                    data2[i] = -1;
                } else {
                    long jRound = Math.round((((double) f2) - d2) * d3) + 1;
                    if (jRound < 1) {
                        data2[i] = 1;
                    } else if (jRound <= 254) {
                        data2[i] = (byte) (jRound & 255);
                    } else {
                        data2[i] = -2;
                    }
                }
                i2++;
                i++;
            }
        }
        return fastBitmap2;
    }

    private void a(FastBitmap fastBitmap, FastBitmap fastBitmap2, long[] jArr) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int[] data = fastBitmap.getData();
        int[] data2 = fastBitmap2.getData();
        int[] iArr = new int[width * height];
        for (int length = jArr.length - 1; length >= 0; length--) {
            int i = (int) jArr[length];
            if ((data2[i] & 72) == 0) {
                int i2 = (data[i] & 255) + 1;
                iArr[0] = i;
                data2[i] = data2[i] | 2;
                boolean z = false;
                int i3 = i2;
                int i4 = 1;
                int i5 = 1;
                while (!z && i3 > 0) {
                    int i6 = i3 - 1;
                    boolean z2 = z;
                    int i7 = 0;
                    int i8 = i5;
                    while (true) {
                        int i9 = iArr[i7];
                        int i10 = i9 % width;
                        int i11 = i9 / width;
                        boolean z3 = (i11 == 0 || i11 == height + (-1) || i10 == 0 || i10 == width + (-1)) ? false : true;
                        int i12 = i8;
                        for (int i13 = 0; i13 < 8; i13++) {
                            int i14 = i9 + this.c[i13];
                            if ((z3 || a(i10, i11, i13, width, height)) && (data2[i14] & 2) == 0) {
                                if ((data2[i14] & 8) != 0 || ((data2[i14] & 64) != 0 && (data[i14] & 255) >= i6)) {
                                    z = true;
                                    break;
                                } else if ((data[i14] & 255) >= i6 && (data2[i14] & 64) == 0) {
                                    iArr[i12] = i14;
                                    i12++;
                                    data2[i14] = data2[i14] | 2;
                                }
                            }
                        }
                        z = z2;
                        if (z) {
                            i4 = i5;
                            i3 = i6;
                            i5 = i12;
                            break;
                        }
                        int i15 = i7 + 1;
                        if (i15 >= i12) {
                            i4 = i5;
                            i3 = i6;
                            i5 = i12;
                            break;
                        } else {
                            z2 = z;
                            i7 = i15;
                            i8 = i12;
                        }
                    }
                }
                for (int i16 = 0; i16 < i5; i16++) {
                    int i17 = iArr[i16];
                    data2[i17] = data2[i17] & (-3);
                }
                for (int i18 = 0; i18 < i4; i18++) {
                    int i19 = iArr[i18];
                    data[i19] = (byte) i3;
                    data2[i19] = data2[i19] | 64;
                }
            }
        }
    }

    private boolean b(FastBitmap fastBitmap) {
        int i;
        int i2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int[] data = fastBitmap.getData();
        int[] values = new ImageStatistics(fastBitmap).getHistogramGray().getValues();
        int[] iArr = new int[((width * height) - values[0]) - values[255]];
        int i3 = 0;
        int[] iArr2 = new int[256];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < 255; i6++) {
            iArr2[i6] = i5;
            i5 += values[i6];
            if (values[i6] > 0) {
                i4 = i6;
            }
            if (values[i6] > i3) {
                i3 = values[i6];
            }
        }
        int[] iArr3 = new int[i4 + 1];
        int i7 = 0;
        for (int i8 = 0; i8 < height; i8++) {
            int i9 = 0;
            while (i9 < width) {
                int i10 = data[i7] & 255;
                if (i10 > 0 && i10 < 255) {
                    iArr[iArr2[i10] + iArr3[i10]] = (i8 << this.g) | i9;
                    iArr3[i10] = iArr3[i10] + 1;
                }
                i9++;
                i7++;
            }
        }
        int[] iArr4 = new int[Math.min(i3, ((width * height) + 2) / 3)];
        int[] iArrA = a();
        int[] iArr5 = {7, 3, 1, 5, 0, 4, 2, 6};
        for (int i11 = i4; i11 >= 1; i11--) {
            int i12 = values[i11];
            int i13 = 0;
            while (i12 > 0 && i13 < 8) {
                int i14 = 0;
                while (true) {
                    int i15 = i14;
                    int i16 = i13;
                    int iA = a(iArr5[i15 % 8], fastBitmap, iArrA, iArr2[i11], i12, iArr, iArr4);
                    i12 -= iA;
                    int i17 = iA > 0 ? 0 : i16;
                    i14 = i15 + 1;
                    if (i12 <= 0) {
                        i13 = i17;
                        break;
                    }
                    i13 = i17 + 1;
                    if (i17 < 8) {
                    }
                }
            }
            if (i12 > 0 && i11 > 1) {
                int i18 = i11;
                while (true) {
                    i = i18 - 1;
                    if (i <= 1 || values[i] != 0) {
                        break;
                    }
                    i18 = i;
                }
                if (i > 0) {
                    int i19 = 0;
                    int i20 = iArr2[i] + values[i];
                    int i21 = iArr2[i11];
                    while (i19 < i12) {
                        int i22 = iArr[i21];
                        int i23 = i22 & this.e;
                        int i24 = (this.f & i22) >> this.g;
                        int i25 = i23 + (i24 * width);
                        boolean z = false;
                        if (i23 == 0 || i24 == 0 || i23 == width - 1 || i24 == height - 1) {
                            z = true;
                        } else {
                            int i26 = 0;
                            while (true) {
                                if (i26 >= 8) {
                                    break;
                                }
                                if (!a(i23, i24, i26, width, height) || data[this.c[i26] + i25] != 0) {
                                    i26++;
                                } else {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        if (z) {
                            i2 = i20 + 1;
                            iArr[i20] = i22;
                        } else {
                            i2 = i20;
                        }
                        i19++;
                        i21++;
                        i20 = i2;
                    }
                    values[i] = i20 - iArr2[i];
                }
            }
        }
        return true;
    }

    private int a(int i, FastBitmap fastBitmap, int[] iArr, int i2, int i3, int[] iArr2, int[] iArr3) {
        int i4;
        int i5;
        int width = fastBitmap.getWidth();
        int i6 = width - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] data = fastBitmap.getData();
        int i7 = 0;
        int i8 = 0;
        int i9 = i2;
        int i10 = 0;
        while (i10 < i3) {
            int i11 = iArr2[i9];
            int i12 = i11 & this.e;
            int i13 = (this.f & i11) >> this.g;
            int i14 = i12 + (i13 * width);
            int i15 = 0;
            if (i13 > 0 && (data[i14 - width] & 255) == 255) {
                i15 = 1;
            }
            if (i12 < i6 && i13 > 0 && (data[(i14 - width) + 1] & 255) == 255) {
                i15 ^= 2;
            }
            if (i12 < i6 && (data[i14 + 1] & 255) == 255) {
                i15 ^= 4;
            }
            if (i12 < i6 && i13 < height && (data[i14 + width + 1] & 255) == 255) {
                i15 ^= 8;
            }
            if (i13 < height && (data[i14 + width] & 255) == 255) {
                i15 ^= 16;
            }
            if (i12 > 0 && i13 < height && (data[(i14 + width) - 1] & 255) == 255) {
                i15 ^= 32;
            }
            if (i12 > 0 && (data[i14 - 1] & 255) == 255) {
                i15 ^= 64;
            }
            if (i12 > 0 && i13 > 0 && (data[(i14 - width) - 1] & 255) == 255) {
                i15 ^= 128;
            }
            int i16 = 1 << i;
            if ((iArr[i15] & i16) == i16) {
                iArr3[i7] = i14;
                int i17 = i8;
                i5 = i7 + 1;
                i4 = i17;
            } else {
                i4 = i8 + 1;
                iArr2[i8 + i2] = i11;
                i5 = i7;
            }
            i10++;
            i9++;
            i7 = i5;
            i8 = i4;
        }
        for (int i18 = 0; i18 < i7; i18++) {
            data[iArr3[i18]] = -1;
        }
        return i7;
    }

    private int[] a() {
        int[] iArr = new int[256];
        boolean[] zArr = new boolean[8];
        for (int i = 0; i < 256; i++) {
            int i2 = 1;
            int i3 = 0;
            while (i3 < 8) {
                zArr[i3] = (i & i2) == i2;
                i3++;
                i2 *= 2;
            }
            int i4 = 1;
            for (int i5 = 0; i5 < 8; i5++) {
                if (zArr[(i5 + 4) % 8]) {
                    iArr[i] = iArr[i] | i4;
                }
                i4 *= 2;
            }
            for (int i6 = 0; i6 < 8; i6 += 2) {
                if (zArr[i6]) {
                    zArr[(i6 + 1) % 8] = true;
                    zArr[(i6 + 7) % 8] = true;
                }
            }
            int i7 = 0;
            for (int i8 = 0; i8 < 8; i8++) {
                if (zArr[i8] != zArr[(i8 + 1) % 8]) {
                    i7++;
                }
            }
            if (i7 >= 4) {
                iArr[i] = 0;
            }
        }
        return iArr;
    }

    private boolean a(int i, int i2, int i3, int i4, int i5) {
        int i6 = i4 - 1;
        int i7 = i5 - 1;
        switch (i3) {
            case 0:
                return i2 > 0;
            case 1:
                return i < i6 && i2 > 0;
            case 2:
                return i < i6;
            case 3:
                return i < i6 && i2 < i7;
            case 4:
                return i2 < i7;
            case 5:
                return i > 0 && i2 < i7;
            case 6:
                return i > 0;
            case 7:
                return i > 0 && i2 > 0;
            default:
                return false;
        }
    }

    private float a(int i, int i2, float[] fArr, int i3, int i4) {
        float fMin;
        int i5 = i3 - 1;
        int i6 = i4 - 1;
        int i7 = i + (i2 * i3);
        float f = fArr[i7];
        if (i == 0 || i2 == 0 || i == i5 || i2 == i6 || f == 0.0f) {
            return f;
        }
        float f2 = f + 0.70710677f;
        int i8 = 0;
        boolean z = false;
        while (i8 < 4) {
            float f3 = fArr[this.c[i8] + i7];
            float f4 = fArr[this.c[(i8 + 4) % 8] + i7];
            if (f >= f3 && f >= f4) {
                z = true;
                fMin = (f4 + f3) / 2.0f;
            } else {
                fMin = Math.min(f3, f4);
            }
            float f5 = fMin + (i8 % 2 == 0 ? 1.0f : 1.4142135f);
            if (f2 <= f5) {
                f5 = f2;
            }
            i8++;
            f2 = f5;
        }
        return !z ? f : f2;
    }

    private static void c(FastBitmap fastBitmap) {
        int[] data = fastBitmap.getData();
        int height = fastBitmap.getHeight() * fastBitmap.getWidth();
        for (int i = 0; i < height; i++) {
            if ((data[i] & 255) < 255) {
                data[i] = 0;
            }
        }
    }
}
