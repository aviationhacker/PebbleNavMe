package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class HighPassFilter extends GaussianFilter {
    public HighPassFilter() {
        this.radius = 10.0f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        int[] iArr4 = new int[i * i2];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            iArr3[i3] = iArr[i3];
        }
        if (this.radius > 0.0f) {
            convolveAndTranspose(this.kernel, iArr, iArr4, i, i2, this.alpha, this.alpha && this.premultiplyAlpha, false, CLAMP_EDGES);
            convolveAndTranspose(this.kernel, iArr4, iArr, i2, i, this.alpha, false, this.alpha && this.premultiplyAlpha, CLAMP_EDGES);
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i5;
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = iArr3[i6];
                int i9 = iArr[i6];
                iArr[i6] = (i8 & ViewCompat.MEASURED_STATE_MASK) | ((((((i8 >> 16) & 255) + 255) - ((i9 >> 16) & 255)) / 2) << 16) | ((((((i8 >> 8) & 255) + 255) - ((i9 >> 8) & 255)) / 2) << 8) | ((((i8 & 255) + 255) - (i9 & 255)) / 2);
                i6++;
            }
            i4++;
            i5 = i6;
        }
        return iArr;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/High Pass...";
    }
}
