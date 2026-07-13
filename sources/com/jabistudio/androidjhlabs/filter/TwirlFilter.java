package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class TwirlFilter extends TransformFilter {
    private float a = 0.0f;
    private float b = 0.5f;
    private float c = 0.5f;
    private float d = 100.0f;
    private float e = 0.0f;
    private float f;
    private float g;

    public TwirlFilter() {
        setEdgeAction(1);
    }

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

    public void setCentre(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    public float[] getCentre() {
        return new float[]{this.b, this.c};
    }

    public void setRadius(float f) {
        this.d = f;
    }

    public float getRadius() {
        return this.d;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.f = i * this.b;
        this.g = i2 * this.c;
        if (this.d == 0.0f) {
            this.d = Math.min(this.f, this.g);
        }
        this.e = this.d * this.d;
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i - this.f;
        float f2 = i2 - this.g;
        float f3 = (f * f) + (f2 * f2);
        if (f3 > this.e) {
            fArr[0] = i;
            fArr[1] = i2;
            return;
        }
        float fSqrt = (float) Math.sqrt(f3);
        float fAtan2 = ((float) Math.atan2(f2, f)) + ((this.a * (this.d - fSqrt)) / this.d);
        fArr[0] = this.f + (((float) Math.cos(fAtan2)) * fSqrt);
        fArr[1] = (((float) Math.sin(fAtan2)) * fSqrt) + this.g;
    }

    public String toString() {
        return "Distort/Twirl...";
    }
}
