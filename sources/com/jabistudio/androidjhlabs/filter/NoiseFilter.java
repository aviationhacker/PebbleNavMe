package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class NoiseFilter extends PointFilter {
    public static final int GAUSSIAN = 0;
    public static final int UNIFORM = 1;
    private int a = 25;
    private int b = 1;
    private boolean c = false;
    private float d = 1.0f;
    private Random e = new Random();

    public void setAmount(int i) {
        this.a = i;
    }

    public int getAmount() {
        return this.a;
    }

    public void setDistribution(int i) {
        this.b = i;
    }

    public int getDistribution() {
        return this.b;
    }

    public void setMonochrome(boolean z) {
        this.c = z;
    }

    public boolean getMonochrome() {
        return this.c;
    }

    public void setDensity(float f) {
        this.d = f;
    }

    public float getDensity() {
        return this.d;
    }

    private int a(int i) {
        int iNextGaussian = ((int) ((this.b == 0 ? this.e.nextGaussian() : (2.0f * this.e.nextFloat()) - 1.0f) * ((double) this.a))) + i;
        if (iNextGaussian < 0) {
            return 0;
        }
        if (iNextGaussian > 255) {
            return 255;
        }
        return iNextGaussian;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int iA;
        int iA2;
        int iA3;
        if (this.e.nextFloat() <= this.d) {
            int i4 = i3 & ViewCompat.MEASURED_STATE_MASK;
            int i5 = (i3 >> 16) & 255;
            int i6 = (i3 >> 8) & 255;
            int i7 = i3 & 255;
            if (this.c) {
                int iNextGaussian = (int) ((this.b == 0 ? this.e.nextGaussian() : (2.0f * this.e.nextFloat()) - 1.0f) * ((double) this.a));
                iA = PixelUtils.clamp(i5 + iNextGaussian);
                iA2 = PixelUtils.clamp(i6 + iNextGaussian);
                iA3 = PixelUtils.clamp(iNextGaussian + i7);
            } else {
                iA = a(i5);
                iA2 = a(i6);
                iA3 = a(i7);
            }
            return (iA2 << 8) | (iA << 16) | i4 | iA3;
        }
        return i3;
    }

    public String toString() {
        return "Stylize/Add Noise...";
    }
}
