package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class BoxBlurFilter {
    private float a;
    private float b;
    private int c;
    private boolean d;

    public BoxBlurFilter() {
        this.c = 1;
        this.d = true;
    }

    public BoxBlurFilter(float f, float f2, int i) {
        this.c = 1;
        this.d = true;
        this.a = f;
        this.b = f2;
        this.c = i;
    }

    public void setPremultiplyAlpha(boolean z) {
        this.d = z;
    }

    public boolean getPremultiplyAlpha() {
        return this.d;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        if (this.d) {
            ImageMath.premultiply(iArr, 0, iArr.length);
        }
        for (int i3 = 0; i3 < this.c; i3++) {
            blur(iArr, iArr3, i, i2, this.a);
            blur(iArr3, iArr, i2, i, this.b);
        }
        blurFractional(iArr, iArr3, i, i2, this.a);
        blurFractional(iArr3, iArr, i2, i, this.b);
        if (this.d) {
            ImageMath.unpremultiply(iArr, 0, iArr.length);
        }
        return iArr;
    }

    public static void blur(int[] iArr, int[] iArr2, int i, int i2, float f) {
        int i3 = i - 1;
        int i4 = (int) f;
        int i5 = (i4 * 2) + 1;
        int[] iArr3 = new int[i5 * 256];
        for (int i6 = 0; i6 < i5 * 256; i6++) {
            iArr3[i6] = i6 / i5;
        }
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i7;
            if (i8 < i2) {
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = -i4; i14 <= i4; i14++) {
                    int i15 = iArr[ImageMath.clamp(i14, 0, i - 1) + i9];
                    i10 += (i15 >> 24) & 255;
                    i11 += (i15 >> 16) & 255;
                    i12 += (i15 >> 8) & 255;
                    i13 += i15 & 255;
                }
                int i16 = i11;
                int i17 = i10;
                int i18 = i8;
                int i19 = i13;
                int i20 = i12;
                int i21 = 0;
                while (i21 < i) {
                    iArr2[i18] = (iArr3[i17] << 24) | (iArr3[i16] << 16) | (iArr3[i20] << 8) | iArr3[i19];
                    int i22 = i21 + i4 + 1;
                    int i23 = i22 > i3 ? i3 : i22;
                    int i24 = i21 - i4;
                    if (i24 < 0) {
                        i24 = 0;
                    }
                    int i25 = iArr[i23 + i9];
                    int i26 = iArr[i24 + i9];
                    i17 += ((i25 >> 24) & 255) - ((i26 >> 24) & 255);
                    i16 += ((16711680 & i25) - (16711680 & i26)) >> 16;
                    i20 += ((65280 & i25) - (65280 & i26)) >> 8;
                    i21++;
                    i18 += i2;
                    i19 += (i25 & 255) - (i26 & 255);
                }
                i7 = i9 + i;
                i8++;
            } else {
                return;
            }
        }
    }

    public static void blurFractional(int[] iArr, int[] iArr2, int i, int i2, float f) {
        float f2 = f - ((int) f);
        float f3 = 1.0f / (1.0f + (2.0f * f2));
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            int i6 = i3;
            if (i5 < i2) {
                iArr2[i5] = iArr[0];
                int i7 = i5 + i2;
                for (int i8 = 1; i8 < i - 1; i8++) {
                    int i9 = i6 + i8;
                    int i10 = iArr[i9 - 1];
                    int i11 = iArr[i9];
                    int i12 = iArr[i9 + 1];
                    int i13 = (i10 >> 8) & 255;
                    int i14 = (i11 >> 24) & 255;
                    int i15 = (i11 >> 16) & 255;
                    int i16 = (i12 >> 24) & 255;
                    int i17 = (i12 >> 16) & 255;
                    int i18 = (i12 >> 8) & 255;
                    iArr2[i7] = ((int) ((((int) (((i12 & 255) + (i10 & 255)) * f2)) + (i11 & 255)) * f3)) | (((int) ((((int) ((((i10 >> 24) & 255) + i16) * f2)) + i14) * f3)) << 24) | (((int) ((((int) ((((i10 >> 16) & 255) + i17) * f2)) + i15) * f3)) << 16) | (((int) ((((int) ((i13 + i18) * f2)) + ((i11 >> 8) & 255)) * f3)) << 8);
                    i7 += i2;
                }
                iArr2[i7] = iArr[i - 1];
                i3 = i6 + i;
                i4 = i5 + 1;
            } else {
                return;
            }
        }
    }

    public void setHRadius(float f) {
        this.a = f;
    }

    public float getHRadius() {
        return this.a;
    }

    public void setVRadius(float f) {
        this.b = f;
    }

    public float getVRadius() {
        return this.b;
    }

    public void setRadius(float f) {
        this.b = f;
        this.a = f;
    }

    public float getRadius() {
        return this.a;
    }

    public void setIterations(int i) {
        this.c = i;
    }

    public int getIterations() {
        return this.c;
    }

    public String toString() {
        return "Blur/Box Blur...";
    }
}
