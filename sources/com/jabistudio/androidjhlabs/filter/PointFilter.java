package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public abstract class PointFilter {
    private int a;
    private int b;
    protected boolean canFilterIndexColorModel = false;

    public abstract int filterRGB(int i, int i2, int i3);

    public int[] filter(int[] iArr, int i, int i2) {
        this.a = i;
        this.b = i2;
        setDimensions(this.a, this.b);
        int[] iArr2 = new int[this.a];
        int[] iArr3 = new int[this.a * this.b];
        for (int i3 = 0; i3 < this.b; i3++) {
            int i4 = 0;
            for (int i5 = this.a * i3; i5 < (this.a * i3) + this.a; i5++) {
                iArr2[i4] = iArr[i5];
                i4++;
            }
            for (int i6 = 0; i6 < this.a; i6++) {
                iArr2[i6] = filterRGB(i6, i3, iArr2[i6]);
            }
            int i7 = 0;
            for (int i8 = this.a * i3; i8 < (this.a * i3) + this.a; i8++) {
                iArr3[i8] = iArr2[i7];
                i7++;
            }
        }
        return iArr3;
    }

    public void setDimensions(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}
