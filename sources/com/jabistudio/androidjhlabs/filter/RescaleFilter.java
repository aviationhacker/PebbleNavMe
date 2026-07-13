package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class RescaleFilter extends TransferFilter {
    private float a;

    public RescaleFilter() {
        this.a = 1.0f;
    }

    public RescaleFilter(float f) {
        this.a = 1.0f;
        this.a = f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected float transferFunction(float f) {
        return this.a * f;
    }

    public void setScale(float f) {
        this.a = f;
        this.initialized = false;
    }

    public float getScale() {
        return this.a;
    }

    public String toString() {
        return "Colors/Rescale...";
    }
}
