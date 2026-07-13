package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ContourFilter extends WholeImageFilter {
    private float a = 5.0f;
    private float b = 1.0f;
    private float c = 0.0f;
    private int d = ViewCompat.MEASURED_STATE_MASK;

    public void setLevels(float f) {
        this.a = f;
    }

    public float getLevels() {
        return this.a;
    }

    public void setScale(float f) {
        this.b = f;
    }

    public float getScale() {
        return this.b;
    }

    public void setOffset(float f) {
        this.c = f;
    }

    public float getOffset() {
        return this.c;
    }

    public void setContourColor(int i) {
        this.d = i;
    }

    public int getContourColor() {
        return this.d;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4 = 0;
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 3, i);
        int[] iArr2 = new int[i * i2];
        short[] sArr2 = new short[256];
        int i5 = (int) ((this.c * 256.0f) / this.a);
        for (int i6 = 0; i6 < 256; i6++) {
            sArr2[i6] = (short) PixelUtils.clamp((int) (((255.0d * Math.floor((this.a * (i6 + i5)) / 256.0f)) / ((double) (this.a - 1.0f))) - ((double) i5)));
        }
        for (int i7 = 0; i7 < i; i7++) {
            sArr[1][i7] = (short) PixelUtils.brightness(iArr[i7]);
        }
        int i8 = 0;
        while (i8 < i2) {
            boolean z = i8 > 0 && i8 < i2 + (-1);
            int i9 = i4 + i;
            if (i8 < i2 - 1) {
                int i10 = 0;
                while (i10 < i) {
                    sArr[2][i10] = (short) PixelUtils.brightness(iArr[i9]);
                    i10++;
                    i9++;
                }
            }
            int i11 = 0;
            while (true) {
                int i12 = i11;
                i3 = i4;
                if (i12 < i) {
                    boolean z2 = i12 > 0 && i12 < i + (-1);
                    int i13 = i12 - 1;
                    int i14 = i12 + 1;
                    int iAbs = 0;
                    if (z && z2) {
                        short s = sArr[0][i13];
                        short s2 = sArr[0][i12];
                        short s3 = sArr[1][i13];
                        short s4 = sArr[1][i12];
                        short s5 = sArr2[s];
                        short s6 = sArr2[s2];
                        short s7 = sArr2[s3];
                        short s8 = sArr2[s4];
                        if (s5 != s6 || s5 != s7 || s6 != s8 || s7 != s8) {
                            iAbs = (int) (this.b * (Math.abs(s - s3) + Math.abs(s - s2) + Math.abs(s2 - s4) + Math.abs(s3 - s4)));
                            if (iAbs > 255) {
                                iAbs = 255;
                            }
                        }
                    }
                    if (iAbs != 0) {
                        iArr2[i3] = PixelUtils.combinePixels(iArr[i3], this.d, 1, iAbs);
                    } else {
                        iArr2[i3] = iArr[i3];
                    }
                    i4 = i3 + 1;
                    i11 = i12 + 1;
                }
            }
            short[] sArr3 = sArr[0];
            sArr[0] = sArr[1];
            sArr[1] = sArr[2];
            sArr[2] = sArr3;
            i8++;
            i4 = i3;
        }
        return iArr2;
    }
}
