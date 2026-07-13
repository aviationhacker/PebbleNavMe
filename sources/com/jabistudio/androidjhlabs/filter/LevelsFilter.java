package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class LevelsFilter extends WholeImageFilter {
    private int[][] a;
    private float b = 0.0f;
    private float c = 1.0f;
    private float d = 0.0f;
    private float e = 1.0f;

    public void setLowLevel(float f) {
        this.b = f;
    }

    public float getLowLevel() {
        return this.b;
    }

    public void setHighLevel(float f) {
        this.c = f;
    }

    public float getHighLevel() {
        return this.c;
    }

    public void setLowOutputLevel(float f) {
        this.d = f;
    }

    public float getLowOutputLevel() {
        return this.d;
    }

    public void setHighOutputLevel(float f) {
        this.e = f;
    }

    public float getHighOutputLevel() {
        return this.e;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        if (new Histogram(iArr, i, i2, 0, i).getNumSamples() > 0) {
            this.a = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 256);
            float f = this.b * 255.0f;
            float f2 = this.c * 255.0f;
            if (f == f2) {
                f2 += 1.0f;
            }
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= 3) {
                    break;
                }
                for (int i5 = 0; i5 < 256; i5++) {
                    this.a[i4][i5] = PixelUtils.clamp((int) (255.0f * (this.d + (((this.e - this.d) * (i5 - f)) / (f2 - f)))));
                }
                i3 = i4 + 1;
            }
        } else {
            this.a = (int[][]) null;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            for (int i8 = 0; i8 < i; i8++) {
                iArr[i6] = filterRGB(i8, i7, iArr[i6]);
                i6++;
            }
        }
        this.a = (int[][]) null;
        return iArr;
    }

    public int filterRGB(int i, int i2, int i3) {
        if (this.a != null) {
            return ((-16777216) & i3) | (this.a[0][(i3 >> 16) & 255] << 16) | (this.a[1][(i3 >> 8) & 255] << 8) | this.a[2][i3 & 255];
        }
        return i3;
    }

    public String toString() {
        return "Colors/Levels...";
    }
}
