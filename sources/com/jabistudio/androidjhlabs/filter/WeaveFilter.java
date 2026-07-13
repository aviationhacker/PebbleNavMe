package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class WeaveFilter extends PointFilter {
    private float a = 16.0f;
    private float b = 16.0f;
    private float c = 6.0f;
    private float d = 6.0f;
    private int e = 4;
    private int f = 4;
    private int g = -32640;
    private int h = -8355585;
    private boolean i = true;
    private boolean j = false;
    private boolean k = true;
    public int[][] matrix = {new int[]{0, 1, 0, 1}, new int[]{1, 0, 1, 0}, new int[]{0, 1, 0, 1}, new int[]{1, 0, 1, 0}};

    public void setXGap(float f) {
        this.c = f;
    }

    public void setXWidth(float f) {
        this.a = f;
    }

    public float getXWidth() {
        return this.a;
    }

    public void setYWidth(float f) {
        this.b = f;
    }

    public float getYWidth() {
        return this.b;
    }

    public float getXGap() {
        return this.c;
    }

    public void setYGap(float f) {
        this.d = f;
    }

    public float getYGap() {
        return this.d;
    }

    public void setCrossings(int[][] iArr) {
        this.matrix = iArr;
    }

    public int[][] getCrossings() {
        return this.matrix;
    }

    public void setUseImageColors(boolean z) {
        this.i = z;
    }

    public boolean getUseImageColors() {
        return this.i;
    }

    public void setRoundThreads(boolean z) {
        this.j = z;
    }

    public boolean getRoundThreads() {
        return this.j;
    }

    public void setShadeCrossings(boolean z) {
        this.k = z;
    }

    public boolean getShadeCrossings() {
        return this.k;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        float fAbs;
        float fAbs2;
        float fSmoothStep;
        float fSmoothStep2;
        int iMixColors;
        int i4 = (int) (i + this.a + (this.c / 2.0f));
        int i5 = (int) (i2 + this.b + (this.d / 2.0f));
        float fMod = ImageMath.mod(i4, this.a + this.c);
        float fMod2 = ImageMath.mod(i5, this.b + this.d);
        int i6 = (int) (i4 / (this.a + this.c));
        int i7 = (int) (i5 / (this.b + this.d));
        boolean z = fMod < this.a;
        boolean z2 = fMod2 < this.b;
        if (this.j) {
            fAbs2 = (Math.abs((this.a / 2.0f) - fMod) / this.a) / 2.0f;
            fAbs = (Math.abs((this.b / 2.0f) - fMod2) / this.b) / 2.0f;
        } else {
            fAbs = 0.0f;
            fAbs2 = 0.0f;
        }
        if (this.k) {
            fSmoothStep2 = ImageMath.smoothStep(this.a / 2.0f, (this.a / 2.0f) + this.c, Math.abs((this.a / 2.0f) - fMod));
            fSmoothStep = ImageMath.smoothStep(this.b / 2.0f, (this.b / 2.0f) + this.d, Math.abs((this.b / 2.0f) - fMod2));
        } else {
            fSmoothStep = 0.0f;
            fSmoothStep2 = 0.0f;
        }
        if (this.i) {
            iMixColors = i3;
        } else {
            iMixColors = this.g;
            i3 = this.h;
        }
        int i8 = i6 % this.f;
        int i9 = i7 % this.e;
        int i10 = this.matrix[i9][i8];
        if (z) {
            if (z2) {
                if (i10 != 1) {
                    iMixColors = i3;
                }
                if (i10 != 1) {
                    fAbs2 = fAbs;
                }
                return ImageMath.mixColors(2.0f * fAbs2, iMixColors, ViewCompat.MEASURED_STATE_MASK);
            }
            if (this.k) {
                if (i10 != this.matrix[(i7 + 1) % this.e][i8]) {
                    if (i10 == 0) {
                        fSmoothStep = 1.0f - fSmoothStep;
                    }
                    iMixColors = ImageMath.mixColors(0.5f * fSmoothStep, iMixColors, ViewCompat.MEASURED_STATE_MASK);
                } else if (i10 == 0) {
                    iMixColors = ImageMath.mixColors(0.5f, iMixColors, ViewCompat.MEASURED_STATE_MASK);
                }
            }
            return ImageMath.mixColors(2.0f * fAbs2, iMixColors, ViewCompat.MEASURED_STATE_MASK);
        }
        if (z2) {
            if (this.k) {
                if (i10 != this.matrix[i9][(i6 + 1) % this.f]) {
                    if (i10 == 1) {
                        fSmoothStep2 = 1.0f - fSmoothStep2;
                    }
                    i3 = ImageMath.mixColors(0.5f * fSmoothStep2, i3, ViewCompat.MEASURED_STATE_MASK);
                } else if (i10 == 1) {
                    i3 = ImageMath.mixColors(0.5f, i3, ViewCompat.MEASURED_STATE_MASK);
                }
            }
            return ImageMath.mixColors(2.0f * fAbs, i3, ViewCompat.MEASURED_STATE_MASK);
        }
        return 0;
    }

    public String toString() {
        return "Texture/Weave...";
    }
}
