package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class GammaFilter extends TransferFilter {
    private float a;
    private float b;
    private float c;

    public GammaFilter() {
        this(1.0f);
    }

    public GammaFilter(float f) {
        this(f, f, f);
    }

    public GammaFilter(float f, float f2, float f3) {
        setGamma(f, f2, f3);
    }

    public void setGamma(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.initialized = false;
    }

    public void setGamma(float f) {
        setGamma(f, f, f);
    }

    public float getGamma() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected void initialize() {
        this.rTable = a(this.a);
        if (this.b == this.a) {
            this.gTable = this.rTable;
        } else {
            this.gTable = a(this.b);
        }
        if (this.c == this.a) {
            this.bTable = this.rTable;
        } else if (this.c == this.b) {
            this.bTable = this.gTable;
        } else {
            this.bTable = a(this.c);
        }
    }

    private int[] a(float f) {
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            int iPow = (int) ((Math.pow(((double) i) / 255.0d, 1.0d / ((double) f)) * 255.0d) + 0.5d);
            if (iPow > 255) {
                iPow = 255;
            }
            iArr[i] = iPow;
        }
        return iArr;
    }

    public String toString() {
        return "Colors/Gamma...";
    }
}
