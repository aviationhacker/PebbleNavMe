package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class WaterFilter extends TransformFilter {
    private float a = 16.0f;
    private float b = 10.0f;
    private float c = 0.0f;
    private float d = 0.5f;
    private float e = 0.5f;
    private float f = 50.0f;
    private float g = 0.0f;
    private float h;
    private float i;

    public WaterFilter() {
        setEdgeAction(1);
    }

    public void setWavelength(float f) {
        this.a = f;
    }

    public float getWavelength() {
        return this.a;
    }

    public void setAmplitude(float f) {
        this.b = f;
    }

    public float getAmplitude() {
        return this.b;
    }

    public void setPhase(float f) {
        this.c = f;
    }

    public float getPhase() {
        return this.c;
    }

    public void setCentreX(float f) {
        this.d = f;
    }

    public float getCentreX() {
        return this.d;
    }

    public void setCentreY(float f) {
        this.e = f;
    }

    public float getCentreY() {
        return this.e;
    }

    public void setCentre(float f, float f2) {
        this.d = f;
        this.e = f2;
    }

    public float[] getCentre() {
        return new float[]{this.d, this.e};
    }

    public void setRadius(float f) {
        this.f = f;
    }

    public float getRadius() {
        return this.f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.h = i * this.d;
        this.i = i2 * this.e;
        if (this.f == 0.0f) {
            this.f = Math.min(this.h, this.i);
        }
        this.g = this.f * this.f;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i - this.h;
        float f2 = i2 - this.i;
        float f3 = (f * f) + (f2 * f2);
        if (f3 > this.g) {
            fArr[0] = i;
            fArr[1] = i2;
            return;
        }
        float fSqrt = (float) Math.sqrt(f3);
        float fSin = this.b * ((float) Math.sin(((fSqrt / this.a) * 6.2831855f) - this.c)) * ((this.f - fSqrt) / this.f);
        if (fSqrt != 0.0f) {
            fSin *= this.a / fSqrt;
        }
        fArr[0] = (f * fSin) + i;
        fArr[1] = (fSin * f2) + i2;
    }

    public String toString() {
        return "Distort/Water Ripples...";
    }
}
