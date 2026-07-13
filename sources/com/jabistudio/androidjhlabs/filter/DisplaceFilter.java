package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class DisplaceFilter extends TransformFilter {
    private float a = 1.0f;
    private int[] b;
    private int[] c;
    private int d;
    private int e;

    public void setAmount(float f) {
        this.a = f;
    }

    public float getAmount() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.d = i;
        this.e = i2;
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[this.d * this.e];
        for (int i3 = 0; i3 < iArr3.length; i3++) {
            iArr3[i3] = iArr[i3];
        }
        this.b = new int[this.d * this.e];
        this.c = new int[this.d * this.e];
        int i4 = 0;
        for (int i5 = 0; i5 < this.e; i5++) {
            int i6 = 0;
            while (i6 < this.d) {
                int i7 = iArr3[i4];
                iArr3[i4] = ((i7 & 255) + (((i7 >> 16) & 255) + ((i7 >> 8) & 255))) / 8;
                i6++;
                i4++;
            }
        }
        int i8 = 0;
        for (int i9 = 0; i9 < this.e; i9++) {
            int i10 = (((this.e + i9) - 1) % this.e) * this.d;
            int i11 = i9 * this.d;
            int i12 = ((i9 + 1) % this.e) * this.d;
            int i13 = 0;
            while (i13 < this.d) {
                int i14 = ((this.d + i13) - 1) % this.d;
                int i15 = (i13 + 1) % this.d;
                this.b[i8] = ((((iArr3[i14 + i10] + iArr3[i14 + i11]) + iArr3[i14 + i12]) - iArr3[i15 + i10]) - iArr3[i15 + i11]) - iArr3[i15 + i12];
                this.c[i8] = ((((iArr3[i14 + i12] + iArr3[i13 + i12]) + iArr3[i15 + i12]) - iArr3[i14 + i10]) - iArr3[i13 + i10]) - iArr3[i15 + i10];
                i13++;
                i8++;
            }
        }
        int[] iArrFilter = super.filter(iArr, i, i2);
        this.c = null;
        this.b = null;
        return iArrFilter;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float f = i;
        float f2 = i2;
        int i3 = ((i2 % this.e) * this.d) + (i % this.d);
        fArr[0] = i + (this.a * this.b[i3]);
        fArr[1] = (this.c[i3] * this.a) + i2;
    }

    public String toString() {
        return "Distort/Displace...";
    }
}
