package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class StampFilter extends PointFilter {
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    private int f;
    private int g;

    public StampFilter() {
        this(0.5f);
    }

    public StampFilter(float f) {
        this.b = 0.0f;
        this.c = 5.0f;
        this.f = -1;
        this.g = ViewCompat.MEASURED_STATE_MASK;
        setThreshold(f);
    }

    public void setRadius(float f) {
        this.c = f;
    }

    public float getRadius() {
        return this.c;
    }

    public void setThreshold(float f) {
        this.a = f;
    }

    public float getThreshold() {
        return this.a;
    }

    public void setSoftness(float f) {
        this.b = f;
    }

    public float getSoftness() {
        return this.b;
    }

    public void setWhite(int i) {
        this.f = i;
    }

    public int getWhite() {
        return this.f;
    }

    public void setBlack(int i) {
        this.g = i;
    }

    public int getBlack() {
        return this.g;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArrFilter = new GaussianFilter((int) this.c).filter(iArr, i, i2);
        this.d = (this.a - (this.b * 0.5f)) * 765.0f;
        this.e = (this.a + (this.b * 0.5f)) * 765.0f;
        return super.filter(iArrFilter, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int i4 = (-16777216) & i3;
        return ImageMath.mixColors(ImageMath.smoothStep(this.d, this.e, ((i3 >> 16) & 255) + ((i3 >> 8) & 255) + (i3 & 255)), this.g, this.f);
    }

    public String toString() {
        return "Stylize/Stamp...";
    }
}
