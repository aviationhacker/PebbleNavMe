package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class PolarFilter extends TransformFilter {
    public static final int INVERT_IN_CIRCLE = 2;
    public static final int POLAR_TO_RECT = 1;
    public static final int RECT_TO_POLAR = 0;
    private int a;
    private float b;
    private float c;
    private float d;
    private float e;
    private float f;

    public PolarFilter() {
        this(0);
    }

    public PolarFilter(int i) {
        this.a = i;
        setEdgeAction(1);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.b = i;
        this.c = i2;
        this.d = this.b / 2.0f;
        this.e = this.c / 2.0f;
        this.f = Math.max(this.e, this.d);
        return super.filter(iArr, i, i2);
    }

    public void setType(int i) {
        this.a = i;
    }

    public int getType() {
        return this.a;
    }

    private float a(float f) {
        return f * f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f;
        float fSqrt;
        float fAtan;
        switch (this.a) {
            case 0:
                if (i >= this.d) {
                    if (i2 > this.e) {
                        fAtan = 3.1415927f - ((float) Math.atan((i - this.d) / (i2 - this.e)));
                        fSqrt = (float) Math.sqrt(a(i - this.d) + a(i2 - this.e));
                    } else if (i2 < this.e) {
                        fAtan = (float) Math.atan((i - this.d) / (this.e - i2));
                        fSqrt = (float) Math.sqrt(a(i - this.d) + a(this.e - i2));
                    } else {
                        fAtan = 1.5707964f;
                        fSqrt = i - this.d;
                    }
                } else if (i >= this.d) {
                    fSqrt = 0.0f;
                    fAtan = 0.0f;
                } else if (i2 < this.e) {
                    fAtan = 6.2831855f - ((float) Math.atan((this.d - i) / (this.e - i2)));
                    fSqrt = (float) Math.sqrt(a(this.d - i) + a(this.e - i2));
                } else if (i2 > this.e) {
                    fAtan = 3.1415927f + ((float) Math.atan((this.d - i) / (i2 - this.e)));
                    fSqrt = (float) Math.sqrt(a(this.d - i) + a(i2 - this.e));
                } else {
                    fAtan = 4.712389f;
                    fSqrt = this.d - i;
                }
                float fAbs = ((float) i) != this.d ? Math.abs((i2 - this.e) / (i - this.d)) : 0.0f;
                if (fAbs > this.c / this.b) {
                    float f2 = this.e / fAbs;
                } else if (i == this.d) {
                    float f3 = this.e;
                } else {
                    float f4 = fAbs * this.d;
                }
                fArr[0] = (this.b - 1.0f) - (fAtan * ((this.b - 1.0f) / 6.2831855f));
                fArr[1] = (fSqrt * this.c) / this.f;
                break;
            case 1:
                float f5 = (i / this.b) * 6.2831855f;
                if (f5 >= 4.712389f) {
                    f = 6.2831855f - f5;
                } else if (f5 >= 3.1415927f) {
                    f = f5 - 3.1415927f;
                } else {
                    f = f5 >= 1.5707964f ? 3.1415927f - f5 : f5;
                }
                float fTan = (float) Math.tan(f);
                float f6 = fTan != 0.0f ? 1.0f / fTan : 0.0f;
                if (f6 > this.c / this.b) {
                    float f7 = this.e / f6;
                } else if (f == 0.0f) {
                    float f8 = this.e;
                } else {
                    float f9 = this.d * f6;
                }
                float f10 = this.f * (i2 / this.c);
                float fSin = (-f10) * ((float) Math.sin(f));
                float fCos = ((float) Math.cos(f)) * f10;
                if (f5 >= 4.712389f) {
                    fArr[0] = this.d - fSin;
                    fArr[1] = this.e - fCos;
                } else if (f5 >= 3.141592653589793d) {
                    fArr[0] = this.d - fSin;
                    fArr[1] = fCos + this.e;
                } else if (f5 >= 1.5707963267948966d) {
                    fArr[0] = this.d + fSin;
                    fArr[1] = fCos + this.e;
                } else {
                    fArr[0] = this.d + fSin;
                    fArr[1] = this.e - fCos;
                }
                break;
            case 2:
                float f11 = i - this.d;
                float f12 = i2 - this.e;
                float f13 = (f11 * f11) + (f12 * f12);
                fArr[0] = ((f11 * (this.d * this.d)) / f13) + this.d;
                fArr[1] = this.e + ((f12 * (this.e * this.e)) / f13);
                break;
        }
    }

    public String toString() {
        return "Distort/Polar Coordinates...";
    }
}
