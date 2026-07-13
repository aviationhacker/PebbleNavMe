package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class CircleFilter extends TransformFilter {
    private float a = 10.0f;
    private float b = 20.0f;
    private float c = 0.0f;
    private float d = 3.1415927f;
    private float e = 0.5f;
    private float f = 0.5f;
    private float g;
    private float h;
    private float i;
    private float j;

    public CircleFilter() {
        setEdgeAction(0);
    }

    public void setHeight(float f) {
        this.b = f;
    }

    public float getHeight() {
        return this.b;
    }

    public void setAngle(float f) {
        this.c = f;
    }

    public float getAngle() {
        return this.c;
    }

    public void setSpreadAngle(float f) {
        this.d = f;
    }

    public float getSpreadAngle() {
        return this.d;
    }

    public void setRadius(float f) {
        this.a = f;
    }

    public float getRadius() {
        return this.a;
    }

    public void setCentreX(float f) {
        this.e = f;
    }

    public float getCentreX() {
        return this.e;
    }

    public void setCentreY(float f) {
        this.f = f;
    }

    public float getCentreY() {
        return this.f;
    }

    public void setCentre(float f, float f2) {
        this.e = f;
        this.f = f2;
    }

    public float[] getCentre() {
        return new float[]{this.e, this.f};
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.i = i;
        this.j = i2;
        this.g = this.i * this.e;
        this.h = this.j * this.f;
        this.i -= 1.0f;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i - this.g;
        float f2 = i2 - this.h;
        float fAtan2 = ((float) Math.atan2(-f2, -f)) + this.c;
        float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        fArr[0] = (ImageMath.mod(fAtan2, 6.2831855f) * this.i) / (this.d + 1.0E-5f);
        fArr[1] = (1.0f - ((fSqrt - this.a) / (this.b + 1.0E-5f))) * this.j;
    }

    public String toString() {
        return "Distort/Circle...";
    }
}
