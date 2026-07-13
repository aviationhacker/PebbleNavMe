package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class KaleidoscopeFilter extends TransformFilter {
    private float a = 0.0f;
    private float b = 0.0f;
    private float c = 0.5f;
    private float d = 0.5f;
    private int e = 3;
    private float f = 0.0f;
    private float g;
    private float h;

    public KaleidoscopeFilter() {
        setEdgeAction(1);
    }

    public void setSides(int i) {
        this.e = i;
    }

    public int getSides() {
        return this.e;
    }

    public void setAngle(float f) {
        this.a = f;
    }

    public float getAngle() {
        return this.a;
    }

    public void setAngle2(float f) {
        this.b = f;
    }

    public float getAngle2() {
        return this.b;
    }

    public void setCentreX(float f) {
        this.c = f;
    }

    public float getCentreX() {
        return this.c;
    }

    public void setCentreY(float f) {
        this.d = f;
    }

    public float getCentreY() {
        return this.d;
    }

    public void setCentre(float f, float f2) {
        this.c = f;
        this.d = f2;
    }

    public float[] getCentre() {
        return new float[]{this.c, this.d};
    }

    public void setRadius(float f) {
        this.f = f;
    }

    public float getRadius() {
        return this.f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.g = i * this.c;
        this.h = i2 * this.d;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        double d = i - this.g;
        double d2 = i2 - this.h;
        double dSqrt = Math.sqrt((d * d) + (d2 * d2));
        double dTriangle = ImageMath.triangle((float) ((((Math.atan2(d2, d) - ((double) this.a)) - ((double) this.b)) / 3.141592653589793d) * ((double) this.e) * 0.5d));
        if (this.f != 0.0f) {
            double dCos = ((double) this.f) / Math.cos(dTriangle);
            dSqrt = ((double) ImageMath.triangle((float) (dSqrt / dCos))) * dCos;
        }
        double d3 = dTriangle + ((double) this.a);
        fArr[0] = (float) (((double) this.g) + (Math.cos(d3) * dSqrt));
        fArr[1] = (float) ((dSqrt * Math.sin(d3)) + ((double) this.h));
    }

    public String toString() {
        return "Distort/Kaleidoscope...";
    }
}
