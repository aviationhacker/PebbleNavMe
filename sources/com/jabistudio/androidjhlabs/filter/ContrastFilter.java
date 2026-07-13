package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class ContrastFilter extends TransferFilter {
    private float a = 1.0f;
    private float b = 1.0f;

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected float transferFunction(float f) {
        return (((this.a * f) - 0.5f) * this.b) + 0.5f;
    }

    public void setBrightness(float f) {
        this.a = f;
        this.initialized = false;
    }

    public float getBrightness() {
        return this.a;
    }

    public void setContrast(float f) {
        this.b = f;
        this.initialized = false;
    }

    public float getContrast() {
        return this.b;
    }

    public String toString() {
        return "Colors/Contrast...";
    }
}
