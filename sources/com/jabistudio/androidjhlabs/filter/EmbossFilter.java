package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class EmbossFilter extends WholeImageFilter {
    private float a = 2.3561945f;
    private float b = 0.5235988f;
    private boolean c = false;
    private float d = 3.0f;

    public void setAzimuth(float f) {
        this.a = f;
    }

    public float getAzimuth() {
        return this.a;
    }

    public void setElevation(float f) {
        this.b = f;
    }

    public float getElevation() {
        return this.b;
    }

    public void setBumpHeight(float f) {
        this.d = 3.0f * f;
    }

    public float getBumpHeight() {
        return this.d / 3.0f;
    }

    public void setEmboss(boolean z) {
        this.c = z;
    }

    public boolean getEmboss() {
        return this.c;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int iSqrt;
        int i3;
        int i4 = 0;
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            iArr3[i5] = PixelUtils.brightness(iArr[i5]);
        }
        int iCos = (int) (Math.cos(this.a) * Math.cos(this.b) * 255.89999389648438d);
        int iSin = (int) (Math.sin(this.a) * Math.cos(this.b) * 255.89999389648438d);
        int iSin2 = (int) (Math.sin(this.b) * 255.89999389648438d);
        int i6 = (int) (1530.0f / this.d);
        int i7 = i6 * i6;
        int i8 = i6 * iSin2;
        int i9 = 0;
        int i10 = 0;
        while (i10 < i2) {
            int i11 = i9 + i;
            int i12 = i11;
            int i13 = i9;
            int i14 = i4;
            int i15 = i11 + i;
            for (int i16 = 0; i16 < i; i16++) {
                if (i10 == 0 || i10 >= i2 - 2 || i16 == 0 || i16 >= i - 2) {
                    iSqrt = iSin2;
                } else {
                    int i17 = ((((iArr3[i13 - 1] + iArr3[i12 - 1]) + iArr3[i15 - 1]) - iArr3[i13 + 1]) - iArr3[i12 + 1]) - iArr3[i15 + 1];
                    int i18 = ((((iArr3[i15 - 1] + iArr3[i15]) + iArr3[i15 + 1]) - iArr3[i13 - 1]) - iArr3[i13]) - iArr3[i13 + 1];
                    if (i17 == 0 && i18 == 0) {
                        iSqrt = iSin2;
                    } else {
                        int i19 = (i17 * iCos) + (i18 * iSin) + i8;
                        if (i19 < 0) {
                            iSqrt = 0;
                        } else {
                            iSqrt = (int) (((double) i19) / Math.sqrt(((i17 * i17) + (i18 * i18)) + i7));
                        }
                    }
                }
                if (this.c) {
                    int i20 = iArr[i14];
                    int i21 = (-16777216) & i20;
                    int i22 = (((i20 >> 16) & 255) * iSqrt) >> 8;
                    int i23 = (((i20 >> 8) & 255) * iSqrt) >> 8;
                    int i24 = (iSqrt * (i20 & 255)) >> 8;
                    i3 = i14 + 1;
                    iArr2[i14] = i24 | i21 | (i22 << 16) | (i23 << 8);
                } else {
                    iArr2[i14] = iSqrt | (-16777216) | (iSqrt << 16) | (iSqrt << 8);
                    i3 = i14 + 1;
                }
                i13++;
                i12++;
                i15++;
                i14 = i3;
            }
            i9 += i;
            i10++;
            i4 = i14;
        }
        return iArr2;
    }

    public String toString() {
        return "Stylize/Emboss...";
    }
}
