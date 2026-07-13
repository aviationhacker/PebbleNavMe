package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class UnsharpFilter extends GaussianFilter {
    private float a = 0.5f;
    private int b = 1;

    public UnsharpFilter() {
        this.radius = 2.0f;
    }

    public void setThreshold(int i) {
        this.b = i;
    }

    public int getThreshold() {
        return this.b;
    }

    public void setAmount(float f) {
        this.a = f;
    }

    public float getAmount() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public int[] filter(int[] iArr, int i, int i2) {
        int i3;
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        if (this.radius > 0.0f) {
            convolveAndTranspose(this.kernel, iArr, iArr3, i, i2, this.alpha, this.alpha && this.premultiplyAlpha, false, CLAMP_EDGES);
            convolveAndTranspose(this.kernel, iArr3, iArr, i2, i, this.alpha, false, this.alpha && this.premultiplyAlpha, CLAMP_EDGES);
        }
        float f = 4.0f * this.a;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i2) {
            int i6 = 0;
            while (true) {
                int i7 = i6;
                i3 = i4;
                if (i7 < i) {
                    int i8 = iArr[i3];
                    int iClamp = (i8 >> 16) & 255;
                    int iClamp2 = (i8 >> 8) & 255;
                    int iClamp3 = i8 & 255;
                    int i9 = iArr[i3];
                    int i10 = (i9 >> 16) & 255;
                    int i11 = (i9 >> 8) & 255;
                    int i12 = i9 & 255;
                    if (Math.abs(iClamp - i10) >= this.b) {
                        iClamp = PixelUtils.clamp((int) (((iClamp - i10) * (1.0f + f)) + i10));
                    }
                    if (Math.abs(iClamp2 - i11) >= this.b) {
                        iClamp2 = PixelUtils.clamp((int) (((iClamp2 - i11) * (1.0f + f)) + i11));
                    }
                    if (Math.abs(iClamp3 - i12) >= this.b) {
                        iClamp3 = PixelUtils.clamp((int) (((iClamp3 - i12) * (1.0f + f)) + i12));
                    }
                    iArr[i3] = (iClamp << 16) | (i8 & ViewCompat.MEASURED_STATE_MASK) | (iClamp2 << 8) | iClamp3;
                    i4 = i3 + 1;
                    i6 = i7 + 1;
                }
            }
            i5++;
            i4 = i3;
        }
        return iArr;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Unsharp Mask...";
    }
}
