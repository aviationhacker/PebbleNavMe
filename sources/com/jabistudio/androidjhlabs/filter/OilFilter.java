package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class OilFilter extends WholeImageFilter {
    private int a = 3;
    private int b = 256;

    public void setRange(int i) {
        this.a = i;
    }

    public int getRange() {
        return this.a;
    }

    public void setLevels(int i) {
        this.b = i;
    }

    public int getLevels() {
        return this.b;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4 = 0;
        int[] iArr2 = new int[this.b];
        int[] iArr3 = new int[this.b];
        int[] iArr4 = new int[this.b];
        int[] iArr5 = new int[this.b];
        int[] iArr6 = new int[this.b];
        int[] iArr7 = new int[this.b];
        int[] iArr8 = new int[i * i2];
        int i5 = 0;
        while (i5 < i2) {
            int i6 = 0;
            while (true) {
                int i7 = i6;
                i3 = i4;
                if (i7 < i) {
                    for (int i8 = 0; i8 < this.b; i8++) {
                        iArr7[i8] = 0;
                        iArr6[i8] = 0;
                        iArr5[i8] = 0;
                        iArr4[i8] = 0;
                        iArr3[i8] = 0;
                        iArr2[i8] = 0;
                    }
                    for (int i9 = -this.a; i9 <= this.a; i9++) {
                        int i10 = i5 + i9;
                        if (i10 >= 0 && i10 < i2) {
                            int i11 = i10 * i;
                            for (int i12 = -this.a; i12 <= this.a; i12++) {
                                int i13 = i7 + i12;
                                if (i13 >= 0 && i13 < i) {
                                    int i14 = iArr[i13 + i11];
                                    int i15 = (i14 >> 16) & 255;
                                    int i16 = (i14 >> 8) & 255;
                                    int i17 = i14 & 255;
                                    int i18 = (this.b * i15) / 256;
                                    int i19 = (this.b * i16) / 256;
                                    int i20 = (this.b * i17) / 256;
                                    iArr5[i18] = i15 + iArr5[i18];
                                    iArr6[i19] = iArr6[i19] + i16;
                                    iArr7[i20] = i17 + iArr7[i20];
                                    iArr2[i18] = iArr2[i18] + 1;
                                    iArr3[i19] = iArr3[i19] + 1;
                                    iArr4[i20] = iArr4[i20] + 1;
                                }
                            }
                        }
                    }
                    int i21 = 0;
                    int i22 = 0;
                    int i23 = 0;
                    for (int i24 = 1; i24 < this.b; i24++) {
                        if (iArr2[i24] > iArr2[i21]) {
                            i21 = i24;
                        }
                        if (iArr3[i24] > iArr3[i22]) {
                            i22 = i24;
                        }
                        if (iArr4[i24] > iArr4[i23]) {
                            i23 = i24;
                        }
                    }
                    iArr8[i3] = ((iArr5[i21] / iArr2[i21]) << 16) | (iArr[i3] & ViewCompat.MEASURED_STATE_MASK) | ((iArr6[i22] / iArr3[i22]) << 8) | (iArr7[i23] / iArr4[i23]);
                    i4 = i3 + 1;
                    i6 = i7 + 1;
                }
            }
            i5++;
            i4 = i3;
        }
        return iArr8;
    }

    public String toString() {
        return "Stylize/Oil...";
    }
}
