package com.jabistudio.androidjhlabs.filter;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class PinchFilter extends TransformFilter {
    private float a = 0.0f;
    private float b = 0.5f;
    private float c = 0.5f;
    private float d = 100.0f;
    private float e = 0.5f;
    private float f = 0.0f;
    private float g;
    private float h;
    private float i;
    private float j;

    public void setAngle(float f) {
        this.a = f;
    }

    public float getAngle() {
        return this.a;
    }

    public void setCentreX(float f) {
        this.b = f;
    }

    public float getCentreX() {
        return this.b;
    }

    public void setCentreY(float f) {
        this.c = f;
    }

    public float getCentreY() {
        return this.c;
    }

    public void setCentre(PointF pointF) {
        this.b = pointF.x;
        this.c = pointF.y;
    }

    public PointF getCentre() {
        return new PointF(this.b, this.c);
    }

    public void setRadius(float f) {
        this.d = f;
    }

    public float getRadius() {
        return this.d;
    }

    public void setAmount(float f) {
        this.e = f;
    }

    public float getAmount() {
        return this.e;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.i = i;
        this.j = i2;
        this.g = this.i * this.b;
        this.h = this.j * this.c;
        if (this.d == 0.0f) {
            this.d = Math.min(this.g, this.h);
        }
        this.f = this.d * this.d;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i - this.g;
        float f2 = i2 - this.h;
        float f3 = (f * f) + (f2 * f2);
        if (f3 > this.f || f3 == 0.0f) {
            fArr[0] = i;
            fArr[1] = i2;
            return;
        }
        float fSqrt = (float) Math.sqrt(f3 / this.f);
        float fPow = (float) Math.pow(Math.sin(1.5707963267948966d * ((double) fSqrt)), -this.e);
        float f4 = f * fPow;
        float f5 = f2 * fPow;
        float f6 = 1.0f - fSqrt;
        float f7 = f6 * this.a * f6;
        float fSin = (float) Math.sin(f7);
        float fCos = (float) Math.cos(f7);
        fArr[0] = (this.g + (fCos * f4)) - (fSin * f5);
        fArr[1] = (f4 * fSin) + this.h + (f5 * fCos);
    }

    public String toString() {
        return "Distort/Pinch...";
    }
}
