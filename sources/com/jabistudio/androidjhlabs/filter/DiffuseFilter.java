package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class DiffuseFilter extends TransformFilter {
    private float[] a;
    private float[] b;
    private float c = 4.0f;

    public DiffuseFilter() {
        setEdgeAction(1);
    }

    public void setScale(float f) {
        this.c = f;
    }

    public float getScale() {
        return this.c;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        int iRandom = (int) (Math.random() * 255.0d);
        float fRandom = (float) Math.random();
        fArr[0] = i + (this.a[iRandom] * fRandom);
        fArr[1] = (this.b[iRandom] * fRandom) + i2;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.a = new float[256];
        this.b = new float[256];
        for (int i3 = 0; i3 < 256; i3++) {
            float f = (6.2831855f * i3) / 256.0f;
            this.a[i3] = (float) (((double) this.c) * Math.sin(f));
            this.b[i3] = (float) (((double) this.c) * Math.cos(f));
        }
        return super.filter(iArr, i, i2);
    }

    public String toString() {
        return "Distort/Diffuse...";
    }
}
