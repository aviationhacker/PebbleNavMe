package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class Kernel {
    private int a;
    private int b;
    private float[] c;

    public Kernel(int i, int i2, float[] fArr) {
        this.a = i;
        this.b = i2;
        this.c = fArr;
    }

    public int getWidth() {
        return this.a;
    }

    public int getHeight() {
        return this.b;
    }

    public float[] getKernelData(float[] fArr) {
        return this.c;
    }
}
