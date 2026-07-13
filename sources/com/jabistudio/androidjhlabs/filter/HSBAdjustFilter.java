package com.jabistudio.androidjhlabs.filter;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class HSBAdjustFilter extends PointFilter {
    private float a;
    private float b;
    private float c;
    private float[] d;

    public HSBAdjustFilter() {
        this(0.0f, 0.0f, 0.0f);
    }

    public HSBAdjustFilter(float f, float f2, float f3) {
        this.d = new float[3];
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.canFilterIndexColorModel = true;
    }

    public void setHFactor(float f) {
        this.a = f;
    }

    public float getHFactor() {
        return this.a;
    }

    public void setSFactor(float f) {
        this.b = f;
    }

    public float getSFactor() {
        return this.b;
    }

    public void setBFactor(float f) {
        this.c = f;
    }

    public float getBFactor() {
        return this.c;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int i4 = (-16777216) & i3;
        Color.RGBToHSV((i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, this.d);
        float[] fArr = this.d;
        fArr[0] = fArr[0] + this.a;
        while (this.d[0] < 0.0f) {
            float[] fArr2 = this.d;
            fArr2[0] = (float) (((double) fArr2[0]) + 6.283185307179586d);
        }
        float[] fArr3 = this.d;
        fArr3[1] = fArr3[1] + this.b;
        if (this.d[1] < 0.0f) {
            this.d[1] = 0.0f;
        } else if (this.d[1] > 1.0d) {
            this.d[1] = 1.0f;
        }
        float[] fArr4 = this.d;
        fArr4[2] = fArr4[2] + this.c;
        if (this.d[2] < 0.0f) {
            this.d[2] = 0.0f;
        } else if (this.d[2] > 1.0d) {
            this.d[2] = 1.0f;
        }
        return i4 | (Color.HSVToColor(this.d) & ViewCompat.MEASURED_SIZE_MASK);
    }

    public String toString() {
        return "Colors/Adjust HSB...";
    }
}
