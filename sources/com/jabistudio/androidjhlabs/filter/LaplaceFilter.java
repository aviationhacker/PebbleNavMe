package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class LaplaceFilter {
    private void a(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            iArr[i] = ((i2 & 255) + (((i2 >> 16) & 255) + ((i2 >> 8) & 255))) / 3;
        }
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i];
        int[] iArrA = a(iArr, 0, i);
        int[] iArrA2 = a(iArr, 0, i);
        a(iArrA);
        a(iArrA2);
        int[] iArr4 = iArrA2;
        int i3 = 0;
        int[] iArrA3 = null;
        while (i3 < i2) {
            if (i3 < i2 - 1) {
                iArrA3 = a(iArr, i3 + 1, i);
                a(iArrA3);
            }
            iArr3[i - 1] = -16777216;
            iArr3[0] = -16777216;
            int i4 = 1;
            while (true) {
                int i5 = i4;
                if (i5 < i - 1) {
                    int i6 = iArr4[i5 - 1];
                    int i7 = iArrA[i5];
                    int i8 = iArrA3[i5];
                    int i9 = iArr4[i5 + 1];
                    int i10 = iArr4[i5];
                    int iMax = (int) (Math.max(Math.max(Math.max(i6, i7), Math.max(i8, i9)) - i10, i10 - Math.min(Math.min(i6, i7), Math.min(i8, i9))) * 0.5f);
                    if (((((iArrA[i5 - 1] + iArrA[i5]) + iArrA[i5 + 1]) + iArr4[i5 - 1]) - (iArr4[i5] * 8)) + iArr4[i5 + 1] + iArrA3[i5 - 1] + iArrA3[i5] + iArrA3[i5 + 1] <= 0) {
                        iMax += 128;
                    }
                    iArr3[i5] = iMax;
                    i4 = i5 + 1;
                }
            }
            a(iArr2, i3, i, iArr3);
            i3++;
            int[] iArr5 = iArrA;
            iArrA = iArr4;
            iArr4 = iArrA3;
            iArrA3 = iArr5;
        }
        int[] iArrA4 = a(iArr2, 0, i);
        int i11 = 0;
        int[] iArrA5 = a(iArr2, 0, i);
        while (i11 < i2) {
            if (i11 < i2 - 1) {
                iArrA3 = a(iArr2, i11 + 1, i);
            }
            iArr3[i - 1] = -16777216;
            iArr3[0] = -16777216;
            int i12 = 1;
            while (true) {
                int i13 = i12;
                if (i13 < i - 1) {
                    int i14 = iArrA5[i13];
                    if (i14 > 128 || (iArrA4[i13 - 1] <= 128 && iArrA4[i13] <= 128 && iArrA4[i13 + 1] <= 128 && iArrA5[i13 - 1] <= 128 && iArrA5[i13 + 1] <= 128 && iArrA3[i13 - 1] <= 128 && iArrA3[i13] <= 128 && iArrA3[i13 + 1] <= 128)) {
                        i14 = 0;
                    } else if (i14 >= 128) {
                        i14 -= 128;
                    }
                    iArr3[i13] = i14 | (-16777216) | (i14 << 16) | (i14 << 8);
                    i12 = i13 + 1;
                }
            }
            a(iArr2, i11, i, iArr3);
            i11++;
            int[] iArr6 = iArrA4;
            iArrA4 = iArrA5;
            iArrA5 = iArrA3;
            iArrA3 = iArr6;
        }
        return iArr2;
    }

    private int[] a(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i2];
        int i3 = 0;
        for (int i4 = i * i2; i4 < (i * i2) + i2; i4++) {
            iArr2[i3] = iArr[i4];
            i3++;
        }
        return iArr2;
    }

    private void a(int[] iArr, int i, int i2, int[] iArr2) {
        int i3 = 0;
        for (int i4 = i * i2; i4 < (i * i2) + i2; i4++) {
            iArr[i4] = iArr2[i3];
            i3++;
        }
    }

    public String toString() {
        return "Edges/Laplace...";
    }
}
