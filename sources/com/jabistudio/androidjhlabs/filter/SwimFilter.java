package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.Noise;

/* JADX INFO: loaded from: classes.dex */
public class SwimFilter extends TransformFilter {
    private float a = 32.0f;
    private float b = 1.0f;
    private float c = 0.0f;
    private float d = 1.0f;
    private float e = 1.0f;
    private float f = 0.0f;
    private float g = 1.0f;
    private float h = 0.0f;
    private float i = 0.0f;
    private float j = 1.0f;

    public void setAmount(float f) {
        this.d = f;
    }

    public float getAmount() {
        return this.d;
    }

    public void setScale(float f) {
        this.a = f;
    }

    public float getScale() {
        return this.a;
    }

    public void setStretch(float f) {
        this.b = f;
    }

    public float getStretch() {
        return this.b;
    }

    public void setAngle(float f) {
        this.c = f;
        float fCos = (float) Math.cos(f);
        float fSin = (float) Math.sin(f);
        this.g = fCos;
        this.h = fSin;
        this.i = -fSin;
        this.j = fCos;
    }

    public float getAngle() {
        return this.c;
    }

    public void setTurbulence(float f) {
        this.e = f;
    }

    public float getTurbulence() {
        return this.e;
    }

    public void setTime(float f) {
        this.f = f;
    }

    public float getTime() {
        return this.f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = (this.g * i) + (this.h * i2);
        float f2 = (this.i * i) + (this.j * i2);
        float f3 = f / this.a;
        float f4 = f2 / (this.a * this.b);
        if (this.e == 1.0f) {
            fArr[0] = i + (this.d * Noise.noise3(f3 + 0.5f, f4, this.f));
            fArr[1] = (Noise.noise3(f3, f4 + 0.5f, this.f) * this.d) + i2;
            return;
        }
        fArr[0] = i + (this.d * Noise.turbulence3(f3 + 0.5f, f4, this.e, this.f));
        fArr[1] = (Noise.turbulence3(f3, f4 + 0.5f, this.e, this.f) * this.d) + i2;
    }

    public String toString() {
        return "Distort/Swim...";
    }
}
