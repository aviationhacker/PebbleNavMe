package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class HalftoneFilter {
    private float a = 0.1f;
    private boolean b;
    private boolean c;
    private int[] d;
    private int e;
    private int f;

    public void setSoftness(float f) {
        this.a = f;
    }

    public float getSoftness() {
        return this.a;
    }

    public void setMask(int[] iArr) {
        this.d = iArr;
    }

    public int[] getMask() {
        return this.d;
    }

    public void setMaskWidth(int i) {
        this.e = i;
    }

    public void setMaskHeight(int i) {
        this.f = i;
    }

    public void setInvert(boolean z) {
        this.b = z;
    }

    public boolean getInvert() {
        return this.b;
    }

    public void setMonochrome(boolean z) {
        this.c = z;
    }

    public boolean getMonochrome() {
        return this.c;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        if (this.d == null) {
            return iArr2;
        }
        int i3 = this.e;
        int i4 = this.f;
        float f = 255.0f * this.a;
        int[] iArr3 = new int[i];
        int[] iArr4 = new int[i3];
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= i2) {
                return iArr2;
            }
            PixelUtils.getLineRGB(iArr, i6, i, iArr3);
            PixelUtils.getLineRGB(this.d, i6 % i4, i3, iArr4);
            int i7 = 0;
            while (true) {
                int i8 = i7;
                if (i8 < i) {
                    int i9 = iArr4[i8 % i3];
                    int i10 = iArr3[i8];
                    if (this.b) {
                        i9 ^= ViewCompat.MEASURED_SIZE_MASK;
                    }
                    if (this.c) {
                        int iBrightness = PixelUtils.brightness(i9);
                        int iBrightness2 = PixelUtils.brightness(i10);
                        int iSmoothStep = (int) ((1.0f - ImageMath.smoothStep(iBrightness2 - f, iBrightness2 + f, iBrightness)) * 255.0f);
                        iArr3[i8] = iSmoothStep | (i10 & ViewCompat.MEASURED_STATE_MASK) | (iSmoothStep << 16) | (iSmoothStep << 8);
                    } else {
                        int i11 = (i10 >> 16) & 255;
                        int i12 = (i10 >> 8) & 255;
                        int i13 = i10 & 255;
                        iArr3[i8] = ((int) ((1.0f - ImageMath.smoothStep(i13 - f, i13 + f, i9 & 255)) * 255.0f)) | (i10 & ViewCompat.MEASURED_STATE_MASK) | (((int) ((1.0f - ImageMath.smoothStep(i11 - f, i11 + f, (i9 >> 16) & 255)) * 255.0f)) << 16) | (((int) ((1.0f - ImageMath.smoothStep(i12 - f, i12 + f, (i9 >> 8) & 255)) * 255.0f)) << 8);
                    }
                    i7 = i8 + 1;
                }
            }
            PixelUtils.setLineRGB(iArr2, i6, i, iArr3);
            i5 = i6 + 1;
        }
    }

    public String toString() {
        return "Stylize/Halftone...";
    }
}
