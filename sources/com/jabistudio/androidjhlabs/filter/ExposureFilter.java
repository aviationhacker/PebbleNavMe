package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class ExposureFilter extends TransferFilter {
    private float a = 1.0f;

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected float transferFunction(float f) {
        return 1.0f - ((float) Math.exp((-f) * this.a));
    }

    public void setExposure(float f) {
        this.a = f;
        this.initialized = false;
    }

    public float getExposure() {
        return this.a;
    }

    public String toString() {
        return "Colors/Exposure...";
    }
}
