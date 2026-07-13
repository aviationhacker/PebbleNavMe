package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class RGBAdjustFilter extends PointFilter {
    public float bFactor;
    public float gFactor;
    public float rFactor;

    public RGBAdjustFilter() {
        this(0.0f, 0.0f, 0.0f);
    }

    public RGBAdjustFilter(float f, float f2, float f3) {
        this.rFactor = 1.0f + f;
        this.gFactor = 1.0f + f2;
        this.bFactor = 1.0f + f3;
        this.canFilterIndexColorModel = true;
    }

    public void setRFactor(float f) {
        this.rFactor = 1.0f + f;
    }

    public float getRFactor() {
        return this.rFactor - 1.0f;
    }

    public void setGFactor(float f) {
        this.gFactor = 1.0f + f;
    }

    public float getGFactor() {
        return this.gFactor - 1.0f;
    }

    public void setBFactor(float f) {
        this.bFactor = 1.0f + f;
    }

    public float getBFactor() {
        return this.bFactor - 1.0f;
    }

    public int[] getLUT() {
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[i] = filterRGB(0, 0, (i << 24) | (i << 16) | (i << 8) | i);
        }
        return iArr;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return ((-16777216) & i3) | (PixelUtils.clamp((int) (((i3 >> 16) & 255) * this.rFactor)) << 16) | (PixelUtils.clamp((int) (((i3 >> 8) & 255) * this.gFactor)) << 8) | PixelUtils.clamp((int) ((i3 & 255) * this.bFactor));
    }

    public String toString() {
        return "Colors/Adjust RGB...";
    }
}
