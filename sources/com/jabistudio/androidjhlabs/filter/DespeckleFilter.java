package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class DespeckleFilter extends WholeImageFilter {
    private short a(short s, short s2, short s3) {
        short s4 = s < s2 ? (short) (s + 1) : s;
        if (s4 < s3) {
            s4 = (short) (s4 + 1);
        }
        if (s4 > s2) {
            s4 = (short) (s4 - 1);
        }
        if (s4 > s3) {
            return (short) (s4 - 1);
        }
        return s4;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        short sA;
        short sA2;
        short sA3;
        int i4 = 0;
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 3, i);
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 3, i);
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 3, i);
        int[] iArr2 = new int[i * i2];
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = iArr[i5];
            sArr[1][i5] = (short) ((i6 >> 16) & 255);
            sArr2[1][i5] = (short) ((i6 >> 8) & 255);
            sArr3[1][i5] = (short) (i6 & 255);
        }
        int i7 = 0;
        while (i7 < i2) {
            boolean z = i7 > 0 && i7 < i2 + (-1);
            int i8 = i4 + i;
            if (i7 < i2 - 1) {
                int i9 = 0;
                while (i9 < i) {
                    int i10 = i8 + 1;
                    int i11 = iArr[i8];
                    sArr[2][i9] = (short) ((i11 >> 16) & 255);
                    sArr2[2][i9] = (short) ((i11 >> 8) & 255);
                    sArr3[2][i9] = (short) (i11 & 255);
                    i9++;
                    i8 = i10;
                }
            }
            int i12 = 0;
            while (true) {
                int i13 = i12;
                i3 = i4;
                if (i13 < i) {
                    boolean z2 = i13 > 0 && i13 < i + (-1);
                    short sA4 = sArr[1][i13];
                    short sA5 = sArr2[1][i13];
                    short sA6 = sArr3[1][i13];
                    int i14 = i13 - 1;
                    int i15 = i13 + 1;
                    if (z) {
                        sA4 = a(sA4, sArr[0][i13], sArr[2][i13]);
                        sA5 = a(sA5, sArr2[0][i13], sArr2[2][i13]);
                        sA6 = a(sA6, sArr3[0][i13], sArr3[2][i13]);
                    }
                    if (z2) {
                        sA4 = a(sA4, sArr[1][i14], sArr[1][i15]);
                        sA5 = a(sA5, sArr2[1][i14], sArr2[1][i15]);
                        sA6 = a(sA6, sArr3[1][i14], sArr3[1][i15]);
                    }
                    if (z && z2) {
                        short sA7 = a(sA4, sArr[0][i14], sArr[2][i15]);
                        short sA8 = a(sA5, sArr2[0][i14], sArr2[2][i15]);
                        short sA9 = a(sA6, sArr3[0][i14], sArr3[2][i15]);
                        sA3 = a(sA7, sArr[2][i14], sArr[0][i15]);
                        sA2 = a(sA8, sArr2[2][i14], sArr2[0][i15]);
                        sA = a(sA9, sArr3[2][i14], sArr3[0][i15]);
                    } else {
                        sA = sA6;
                        sA2 = sA5;
                        sA3 = sA4;
                    }
                    iArr2[i3] = sA | (sA2 << 8) | (sA3 << 16) | (iArr[i3] & ViewCompat.MEASURED_STATE_MASK);
                    i4 = i3 + 1;
                    i12 = i13 + 1;
                }
            }
            short[] sArr4 = sArr[0];
            sArr[0] = sArr[1];
            sArr[1] = sArr[2];
            sArr[2] = sArr4;
            short[] sArr5 = sArr2[0];
            sArr2[0] = sArr2[1];
            sArr2[1] = sArr2[2];
            sArr2[2] = sArr5;
            short[] sArr6 = sArr3[0];
            sArr3[0] = sArr3[1];
            sArr3[1] = sArr3[2];
            sArr3[2] = sArr6;
            i7++;
            i4 = i3;
        }
        return iArr2;
    }

    public String toString() {
        return "Blur/Despeckle...";
    }
}
