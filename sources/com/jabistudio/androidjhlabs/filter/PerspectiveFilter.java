package com.jabistudio.androidjhlabs.filter;

import android.graphics.PointF;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class PerspectiveFilter extends TransformFilter {
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    private float F;
    private boolean G;
    private boolean H;
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private float z;

    public PerspectiveFilter() {
        this(0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f);
    }

    public PerspectiveFilter(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.H = false;
        unitSquareToQuad(f, f2, f3, f4, f5, f6, f7, f8);
    }

    public void setClip(boolean z) {
        this.H = z;
    }

    public boolean getClip() {
        return this.H;
    }

    public void setCorners(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        unitSquareToQuad(f, f2, f3, f4, f5, f6, f7, f8);
        this.G = true;
    }

    public void unitSquareToQuad(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
        this.g = f7;
        this.h = f8;
        this.i = f3 - f5;
        this.j = f4 - f6;
        this.k = f7 - f5;
        this.l = f8 - f6;
        this.m = ((f - f3) + f5) - f7;
        this.n = ((f2 - f4) + f6) - f8;
        if (this.m == 0.0f && this.n == 0.0f) {
            this.x = f3 - f;
            this.A = f5 - f3;
            this.D = f;
            this.y = f4 - f2;
            this.B = f6 - f4;
            this.E = f2;
            this.C = 0.0f;
            this.z = 0.0f;
        } else {
            this.z = ((this.m * this.l) - (this.k * this.n)) / ((this.i * this.l) - (this.j * this.k));
            this.C = ((this.i * this.n) - (this.j * this.m)) / ((this.i * this.l) - (this.j * this.k));
            this.x = (f3 - f) + (this.z * f3);
            this.A = (f7 - f) + (this.C * f7);
            this.D = f;
            this.y = (f4 - f2) + (this.z * f4);
            this.B = (f8 - f2) + (this.C * f8);
            this.E = f2;
        }
        this.F = 1.0f;
        this.G = false;
    }

    public void quadToUnitSquare(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        unitSquareToQuad(f, f2, f3, f4, f5, f6, f7, f8);
        float f9 = (this.B * this.F) - (this.E * this.C);
        float f10 = (this.E * this.z) - (this.y * this.F);
        float f11 = (this.y * this.C) - (this.B * this.z);
        float f12 = (this.D * this.C) - (this.A * this.F);
        float f13 = (this.x * this.F) - (this.D * this.z);
        float f14 = (this.A * this.z) - (this.x * this.C);
        float f15 = (this.A * this.E) - (this.D * this.B);
        float f16 = (this.D * this.y) - (this.x * this.E);
        float f17 = 1.0f / ((this.x * this.B) - (this.A * this.y));
        this.x = f9 * f17;
        this.A = f12 * f17;
        this.D = f15 * f17;
        this.y = f10 * f17;
        this.B = f13 * f17;
        this.E = f16 * f17;
        this.z = f11 * f17;
        this.C = f14 * f17;
        this.F = 1.0f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.o = (this.B * this.F) - (this.E * this.C);
        this.p = (this.D * this.C) - (this.A * this.F);
        this.q = (this.A * this.E) - (this.D * this.B);
        this.r = (this.E * this.z) - (this.y * this.F);
        this.s = (this.x * this.F) - (this.D * this.z);
        this.t = (this.D * this.y) - (this.x * this.E);
        this.u = (this.y * this.C) - (this.B * this.z);
        this.v = (this.A * this.z) - (this.x * this.C);
        this.w = (this.x * this.B) - (this.A * this.y);
        if (!this.G) {
            float f = 1.0f / i;
            float f2 = 1.0f / i2;
            this.o *= f;
            this.r *= f;
            this.u = f * this.u;
            this.p *= f2;
            this.s *= f2;
            this.v *= f2;
        }
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformSpace(Rect rect) {
        if (this.G) {
            rect.left = (int) Math.min(Math.min(this.a, this.c), Math.min(this.e, this.g));
            rect.top = (int) Math.min(Math.min(this.b, this.d), Math.min(this.f, this.h));
            rect.right = ((int) Math.max(Math.max(this.a, this.c), Math.max(this.e, this.g))) - rect.left;
            rect.bottom = ((int) Math.max(Math.max(this.b, this.d), Math.max(this.f, this.h))) - rect.top;
            return;
        }
        if (!this.H) {
            float fWidth = rect.width();
            float fHeight = rect.height();
            Rect rect2 = new Rect();
            PointF point2D = getPoint2D(new PointF(0.0f, 0.0f), null);
            PointF point2D2 = getPoint2D(new PointF(fWidth, fHeight), null);
            rect2.left = (int) point2D.x;
            rect2.top = (int) point2D.y;
            rect2.right = (int) point2D2.x;
            rect2.bottom = (int) point2D2.y;
            rect.set(rect2);
        }
    }

    public PointF getPoint2D(PointF pointF, PointF pointF2) {
        if (pointF2 == null) {
            pointF2 = new PointF();
        }
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = 1.0f / (((this.z * f) + (this.C * f2)) + this.F);
        pointF2.set(((this.x * f) + (this.A * f2) + this.D) * f3, ((f * this.y) + (f2 * this.B) + this.E) * f3);
        return pointF2;
    }

    public float getOriginX() {
        return this.a - ((int) Math.min(Math.min(this.a, this.c), Math.min(this.e, this.g)));
    }

    public float getOriginY() {
        return this.b - ((int) Math.min(Math.min(this.b, this.d), Math.min(this.f, this.h)));
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        fArr[0] = (this.originalSpace.right * (((this.o * i) + (this.p * i2)) + this.q)) / (((this.u * i) + (this.v * i2)) + this.w);
        fArr[1] = (this.originalSpace.bottom * (((this.r * i) + (this.s * i2)) + this.t)) / (((this.u * i) + (this.v * i2)) + this.w);
    }

    public String toString() {
        return "Distort/Perspective...";
    }
}
