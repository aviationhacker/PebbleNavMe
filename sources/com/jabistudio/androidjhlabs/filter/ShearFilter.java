package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class ShearFilter extends TransformFilter {
    private float a = 0.0f;
    private float b = 0.0f;
    private float c = 0.0f;
    private float d = 0.0f;
    private float e = 0.0f;
    private float f = 0.0f;
    private boolean g = true;

    public void setResize(boolean z) {
        this.g = z;
    }

    public boolean isResize() {
        return this.g;
    }

    public void setXAngle(float f) {
        this.a = f;
        a();
    }

    public float getXAngle() {
        return this.a;
    }

    public void setYAngle(float f) {
        this.b = f;
        a();
    }

    public float getYAngle() {
        return this.b;
    }

    private void a() {
        this.c = (float) Math.sin(this.a);
        this.d = (float) Math.sin(this.b);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformSpace(Rect rect) {
        float fTan = (float) Math.tan(this.a);
        this.e = (-rect.bottom) * fTan;
        if (fTan < 0.0d) {
            fTan = -fTan;
        }
        rect.right = (int) ((fTan * rect.bottom) + rect.right + 0.999999f);
        float fTan2 = (float) Math.tan(this.b);
        this.f = (-rect.right) * fTan2;
        if (fTan2 < 0.0d) {
            fTan2 = -fTan2;
        }
        rect.bottom = (int) ((fTan2 * rect.right) + rect.bottom + 0.999999f);
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        fArr[0] = i + this.e + (i2 * this.c);
        fArr[1] = i2 + this.f + (i * this.d);
    }

    public String toString() {
        return "Distort/Shear...";
    }
}
