package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class MedianFilter extends WholeImageFilter {
    private int a(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 9) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < 9) {
                int iAbs = Math.abs(iArr3[i3] - iArr3[i5]) + i6 + Math.abs(iArr[i3] - iArr[i5]) + Math.abs(iArr2[i3] - iArr2[i5]);
                i5++;
                i6 = iAbs;
            }
            if (i6 < i2) {
                i = i3;
            } else {
                i6 = i2;
                i = i4;
            }
            i3++;
            i4 = i;
            i2 = i6;
        }
        return i4;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4 = 0;
        int[] iArr2 = new int[9];
        int[] iArr3 = new int[9];
        int[] iArr4 = new int[9];
        int[] iArr5 = new int[9];
        int[] iArr6 = new int[i * i2];
        int i5 = 0;
        while (i5 < i2) {
            int i6 = 0;
            while (true) {
                int i7 = i6;
                i3 = i4;
                if (i7 < i) {
                    int i8 = 0;
                    for (int i9 = -1; i9 <= 1; i9++) {
                        int i10 = i5 + i9;
                        if (i10 >= 0 && i10 < i2) {
                            int i11 = i10 * i;
                            for (int i12 = -1; i12 <= 1; i12++) {
                                int i13 = i7 + i12;
                                if (i13 >= 0 && i13 < i) {
                                    int i14 = iArr[i13 + i11];
                                    iArr2[i8] = i14;
                                    iArr3[i8] = (i14 >> 16) & 255;
                                    iArr4[i8] = (i14 >> 8) & 255;
                                    iArr5[i8] = i14 & 255;
                                    i8++;
                                }
                            }
                        }
                    }
                    while (i8 < 9) {
                        iArr2[i8] = -16777216;
                        iArr5[i8] = 0;
                        iArr4[i8] = 0;
                        iArr3[i8] = 0;
                        i8++;
                    }
                    i4 = i3 + 1;
                    iArr6[i3] = iArr2[a(iArr3, iArr4, iArr5)];
                    i6 = i7 + 1;
                }
            }
            i5++;
            i4 = i3;
        }
        return iArr6;
    }

    public String toString() {
        return "Blur/Median";
    }
}
