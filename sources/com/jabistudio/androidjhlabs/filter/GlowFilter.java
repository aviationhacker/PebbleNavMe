package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class GlowFilter extends GaussianFilter {
    private float a = 0.5f;

    public GlowFilter() {
        this.radius = 2.0f;
    }

    public void setAmount(float f) {
        this.a = f;
    }

    public float getAmount() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        if (this.radius > 0.0f) {
            convolveAndTranspose(this.kernel, iArr, iArr3, i, i2, this.alpha, this.alpha && this.premultiplyAlpha, false, CLAMP_EDGES);
            convolveAndTranspose(this.kernel, iArr3, iArr, i2, i, this.alpha, false, this.alpha && this.premultiplyAlpha, CLAMP_EDGES);
        }
        float f = 4.0f * this.a;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4;
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = iArr[i5];
                int i8 = iArr[i5];
                iArr[i5] = (i7 & ViewCompat.MEASURED_STATE_MASK) | (PixelUtils.clamp((int) (((i7 >> 16) & 255) + (((i8 >> 16) & 255) * f))) << 16) | (PixelUtils.clamp((int) (((i7 >> 8) & 255) + (((i8 >> 8) & 255) * f))) << 8) | PixelUtils.clamp((int) ((i7 & 255) + ((i8 & 255) * f)));
                i5++;
            }
            i3++;
            i4 = i5;
        }
        return iArr;
    }

    @Override // com.jabistudio.androidjhlabs.filter.GaussianFilter, com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Glow...";
    }
}
