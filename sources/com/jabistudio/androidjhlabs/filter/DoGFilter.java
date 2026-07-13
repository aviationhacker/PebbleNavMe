package com.jabistudio.androidjhlabs.filter;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class DoGFilter {
    private float a = 1.0f;
    private float b = 2.0f;
    private boolean c = true;
    private boolean d;

    public void setRadius1(float f) {
        this.a = f;
    }

    public float getRadius1() {
        return this.a;
    }

    public void setRadius2(float f) {
        this.b = f;
    }

    public float getRadius2() {
        return this.b;
    }

    public void setNormalize(boolean z) {
        this.c = z;
    }

    public boolean getNormalize() {
        return this.c;
    }

    public void setInvert(boolean z) {
        this.d = z;
    }

    public boolean getInvert() {
        return this.d;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            iArr2[i3] = iArr[i3];
        }
        int[] iArr3 = new int[i * i2];
        int[] iArr4 = new int[i * i2];
        int[] iArrCompose = compose(i, i2, new BoxBlurFilter(this.a, this.a, 3).filter(iArr2, i, i2), new BoxBlurFilter(this.b, this.b, 3).filter(iArr, i, i2), 1.0f);
        if (this.c && this.a != this.b) {
            int[] iArr5 = null;
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                int[] iArrA = a(iArrCompose, i4, i, iArr5);
                int i6 = 0;
                int i7 = i5;
                while (i6 < i) {
                    int i8 = iArrA[i6];
                    int i9 = (i8 >> 16) & 255;
                    int i10 = (i8 >> 8) & 255;
                    int i11 = i8 & 255;
                    if (i9 > i7) {
                        i7 = i9;
                    }
                    if (i10 > i7) {
                        i7 = i10;
                    }
                    if (i11 <= i7) {
                        i11 = i7;
                    }
                    i6++;
                    i7 = i11;
                }
                i4++;
                i5 = i7;
                iArr5 = iArrA;
            }
            int i12 = 0;
            while (i12 < i2) {
                int[] iArrA2 = a(iArrCompose, i12, i, iArr5);
                for (int i13 = 0; i13 < i; i13++) {
                    int i14 = iArrA2[i13];
                    int i15 = (i14 >> 16) & 255;
                    int i16 = (i14 >> 8) & 255;
                    int i17 = i14 & 255;
                    if (i5 != 0) {
                        iArrA2[i13] = (i14 & ViewCompat.MEASURED_STATE_MASK) | (((i15 * 255) / i5) << 16) | (((i16 * 255) / i5) << 8) | ((i17 * 255) / i5);
                    }
                }
                b(iArrCompose, i12, i, iArrA2);
                i12++;
                iArr5 = iArrA2;
            }
        }
        return this.d ? new InvertFilter().filter(iArrCompose, i, i2) : iArrCompose;
    }

    private int[] a(int[] iArr, int i, int i2, int[] iArr2) {
        int[] iArr3 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr3[i3] = iArr[(i2 * i) + i3];
        }
        return iArr3;
    }

    private void b(int[] iArr, int i, int i2, int[] iArr2) {
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[(i2 * i) + i3] = iArr2[i3];
        }
    }

    private int[] c(int[] iArr, int i, int i2, int[] iArr2) {
        int[] iArr3 = new int[i2 * 4];
        int i3 = i2 * i;
        for (int i4 = 0; i4 < i2 * 4; i4 += 4) {
            iArr3[i4] = Color.alpha(iArr[i3]);
            iArr3[i4 + 1] = Color.red(iArr[i3]);
            iArr3[i4 + 2] = Color.green(iArr[i3]);
            iArr3[i4 + 3] = Color.blue(iArr[i3]);
            i3++;
        }
        return iArr3;
    }

    private void d(int[] iArr, int i, int i2, int[] iArr2) {
        int i3 = i2 * i;
        for (int i4 = 0; i4 < i2 * 4; i4 += 4) {
            iArr[i3] = Color.argb(iArr2[i4], iArr2[i4 + 1], iArr2[i4 + 2], iArr2[i4 + 3]);
            i3++;
        }
    }

    public int[] compose(int i, int i2, int[] iArr, int[] iArr2, float f) {
        int[] iArrC = null;
        int[] iArr3 = new int[iArr.length];
        int i3 = 0 + i2;
        int[] iArrC2 = null;
        for (int i4 = 0; i4 < i3; i4++) {
            iArrC2 = c(iArr, i4, i, iArrC2);
            iArrC = c(iArr2, i4, i, iArrC);
            composeRGB(iArrC2, iArrC, f);
            d(iArr3, i4, i, iArrC);
        }
        return iArr3;
    }

    public void composeRGB(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        for (int i = 0; i < length; i += 4) {
            int i2 = iArr[i];
            int i3 = iArr2[i];
            int i4 = iArr[i + 1];
            int i5 = iArr2[i + 1];
            int i6 = iArr[i + 2];
            int i7 = iArr2[i + 2];
            int i8 = iArr[i + 3];
            int i9 = iArr2[i + 3];
            int i10 = i5 - i4;
            int i11 = i10 < 0 ? 0 : i10;
            int i12 = i7 - i6;
            int i13 = i12 < 0 ? 0 : i12;
            int i14 = i9 - i8;
            if (i14 < 0) {
                i14 = 0;
            }
            float f2 = (i2 * f) / 255.0f;
            float f3 = 1.0f - f2;
            iArr2[i] = (int) ((i2 * f) + (i3 * f3));
            iArr2[i + 1] = (int) ((i11 * f2) + (i5 * f3));
            iArr2[i + 2] = (int) ((i13 * f2) + (i7 * f3));
            iArr2[i + 3] = (int) ((i14 * f2) + (i9 * f3));
        }
    }

    public String toString() {
        return "Edges/Difference of Gaussians...";
    }
}
