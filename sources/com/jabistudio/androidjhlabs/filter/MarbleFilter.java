package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.Noise;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class MarbleFilter extends TransformFilter {
    private float[] a;
    private float[] b;
    private float c = 4.0f;
    private float d = 4.0f;
    private float e = 1.0f;
    private float f = 1.0f;

    public MarbleFilter() {
        setEdgeAction(1);
    }

    public void setXScale(float f) {
        this.c = f;
    }

    public float getXScale() {
        return this.c;
    }

    public void setYScale(float f) {
        this.d = f;
    }

    public float getYScale() {
        return this.d;
    }

    public void setAmount(float f) {
        this.e = f;
    }

    public float getAmount() {
        return this.e;
    }

    public void setTurbulence(float f) {
        this.f = f;
    }

    public float getTurbulence() {
        return this.f;
    }

    private void a() {
        this.a = new float[256];
        this.b = new float[256];
        for (int i = 0; i < 256; i++) {
            float f = ((6.2831855f * i) / 256.0f) * this.f;
            this.a[i] = (float) (((double) (-this.d)) * Math.sin(f));
            this.b[i] = (float) (((double) this.d) * Math.cos(f));
        }
    }

    private int a(int i, int i2) {
        return PixelUtils.clamp((int) (127.0f * (1.0f + Noise.noise2(i / this.c, i2 / this.c))));
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        int iA = a(i, i2);
        fArr[0] = i + this.a[iA];
        fArr[1] = this.b[iA] + i2;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        a();
        return super.filter(iArr, i, i2);
    }

    public String toString() {
        return "Distort/Marble...";
    }
}
