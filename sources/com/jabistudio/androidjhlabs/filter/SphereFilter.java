package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class SphereFilter extends TransformFilter {
    private float a = 0.0f;
    private float b = 0.0f;
    private float c = 0.0f;
    private float d = 0.0f;
    private float e = 0.5f;
    private float f = 0.5f;
    private float g = 1.5f;
    private float h;
    private float i;

    public SphereFilter() {
        setEdgeAction(1);
        setRadius(100.0f);
    }

    public void setRefractionIndex(float f) {
        this.g = f;
    }

    public float getRefractionIndex() {
        return this.g;
    }

    public void setRadius(float f) {
        this.a = f;
        this.b = f;
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
        this.h = i * this.e;
        this.i = i2 * this.f;
        if (this.a == 0.0f) {
            this.a = i / 2;
        }
        if (this.b == 0.0f) {
            this.b = i2 / 2;
        }
        this.c = this.a * this.a;
        this.d = this.b * this.b;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i - this.h;
        float f2 = i2 - this.i;
        if (f2 * f2 >= this.d - ((this.d * (f * f)) / this.c)) {
            fArr[0] = i;
            fArr[1] = i2;
            return;
        }
        float f3 = 1.0f / this.g;
        float fSqrt = (float) Math.sqrt(((1.0f - (r2 / this.c)) - (r3 / this.d)) * this.a * this.b);
        float f4 = fSqrt * fSqrt;
        float fAcos = (float) Math.acos(((double) f) / Math.sqrt(r2 + f4));
        fArr[0] = i - (((float) Math.tan((1.5707964f - fAcos) - ((float) Math.asin(Math.sin(1.5707964f - fAcos) * ((double) f3))))) * fSqrt);
        float fAcos2 = (float) Math.acos(((double) f2) / Math.sqrt(r3 + f4));
        fArr[1] = i2 - (((float) Math.tan((1.5707964f - fAcos2) - ((float) Math.asin(Math.sin(1.5707964f - fAcos2) * ((double) f3))))) * fSqrt);
    }

    public String toString() {
        return "Distort/Sphere...";
    }
}
