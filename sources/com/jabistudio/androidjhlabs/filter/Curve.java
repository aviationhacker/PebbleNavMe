package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class Curve {
    public float[] x;
    public float[] y;

    public Curve() {
        this.x = new float[]{0.0f, 1.0f};
        this.y = new float[]{0.0f, 1.0f};
    }

    public Curve(Curve curve) {
        this.x = (float[]) curve.x.clone();
        this.y = (float[]) curve.y.clone();
    }

    public int addKnot(float f, float f2) {
        int i;
        int length = this.x.length;
        float[] fArr = new float[length + 1];
        float[] fArr2 = new float[length + 1];
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (i2 < length) {
            if (i4 != -1 || this.x[i2] <= f) {
                int i5 = i3;
                i3 = i4;
                i = i5;
            } else {
                fArr[i3] = f;
                fArr2[i3] = f2;
                i = i3 + 1;
            }
            fArr[i] = this.x[i2];
            fArr2[i] = this.y[i2];
            int i6 = i + 1;
            i2++;
            i4 = i3;
            i3 = i6;
        }
        if (i4 == -1) {
            fArr[i3] = f;
            fArr2[i3] = f2;
        } else {
            i3 = i4;
        }
        this.x = fArr;
        this.y = fArr2;
        return i3;
    }

    public void removeKnot(int i) {
        int i2 = 0;
        int length = this.x.length;
        if (length > 2) {
            float[] fArr = new float[length - 1];
            float[] fArr2 = new float[length - 1];
            int i3 = 0;
            while (i3 < length - 1) {
                if (i3 == i) {
                    i2++;
                }
                fArr[i3] = this.x[i2];
                fArr2[i3] = this.y[i2];
                i3++;
                i2++;
            }
            this.x = fArr;
            this.y = fArr2;
        }
    }

    protected int[] makeTable() {
        int length = this.x.length;
        float[] fArr = new float[length + 2];
        float[] fArr2 = new float[length + 2];
        System.arraycopy(this.x, 0, fArr, 1, length);
        System.arraycopy(this.y, 0, fArr2, 1, length);
        fArr[0] = fArr[1];
        fArr2[0] = fArr2[1];
        fArr[length + 1] = fArr[length];
        fArr2[length + 1] = fArr2[length];
        int[] iArr = new int[256];
        for (int i = 0; i < 1024; i++) {
            float f = i / 1024.0f;
            iArr[ImageMath.clamp((int) ((ImageMath.spline(f, fArr.length, fArr) * 255.0f) + 0.5f), 0, 255)] = ImageMath.clamp((int) ((ImageMath.spline(f, fArr.length, fArr2) * 255.0f) + 0.5f), 0, 255);
        }
        return iArr;
    }
}
