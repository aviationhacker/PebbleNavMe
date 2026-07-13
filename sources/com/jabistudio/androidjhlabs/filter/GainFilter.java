package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class GainFilter extends TransferFilter {
    private float a = 0.5f;
    private float b = 0.5f;

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected float transferFunction(float f) {
        return ImageMath.bias(ImageMath.gain(f, this.a), this.b);
    }

    public void setGain(float f) {
        this.a = f;
        this.initialized = false;
    }

    public float getGain() {
        return this.a;
    }

    public void setBias(float f) {
        this.b = f;
        this.initialized = false;
    }

    public float getBias() {
        return this.b;
    }

    public String toString() {
        return "Colors/Gain...";
    }
}
