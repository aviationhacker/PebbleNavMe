package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class ReduceNoiseFilter extends WholeImageFilter {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039 A[PHI: r0 r1
  0x0039: PHI (r0v6 int) = (r0v1 int), (r0v10 int) binds: [B:5:0x000d, B:10:0x0018] A[DONT_GENERATE, DONT_INLINE]
  0x0039: PHI (r1v2 int) = (r1v1 int), (r1v6 int) binds: [B:5:0x000d, B:10:0x0018] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(int[] r9) {
        /*
            r8 = this;
            r2 = 0
            r6 = 4
            r0 = 2147483647(0x7fffffff, float:NaN)
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2
            r1 = r2
        L9:
            r5 = 9
            if (r2 >= r5) goto L28
            if (r2 == r6) goto L39
            r5 = r9[r2]
            if (r5 >= r0) goto L16
            r0 = r9[r2]
            r1 = r2
        L16:
            r5 = r9[r2]
            if (r5 <= r3) goto L39
            r3 = r9[r2]
            r4 = r1
            r1 = r0
            r0 = r3
            r3 = r2
        L20:
            int r2 = r2 + 1
            r7 = r0
            r0 = r1
            r1 = r4
            r4 = r3
            r3 = r7
            goto L9
        L28:
            r2 = r9[r6]
            if (r2 >= r0) goto L2f
            r0 = r9[r1]
        L2e:
            return r0
        L2f:
            r0 = r9[r6]
            if (r0 <= r3) goto L36
            r0 = r9[r4]
            goto L2e
        L36:
            r0 = r9[r6]
            goto L2e
        L39:
            r7 = r3
            r3 = r4
            r4 = r1
            r1 = r0
            r0 = r7
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jabistudio.androidjhlabs.filter.ReduceNoiseFilter.a(int[]):int");
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4;
        int i5 = 0;
        int[] iArr2 = new int[9];
        int[] iArr3 = new int[9];
        int[] iArr4 = new int[9];
        int[] iArr5 = new int[i * i2];
        int i6 = 0;
        while (i6 < i2) {
            int i7 = 0;
            while (true) {
                int i8 = i7;
                i3 = i5;
                if (i8 < i) {
                    int i9 = 0;
                    int i10 = iArr[i3];
                    int i11 = (i10 >> 16) & 255;
                    int i12 = (i10 >> 8) & 255;
                    int i13 = i10 & 255;
                    int i14 = -1;
                    while (i14 <= 1) {
                        int i15 = i6 + i14;
                        if (i15 >= 0 && i15 < i2) {
                            int i16 = i15 * i;
                            i4 = i9;
                            int i17 = -1;
                            while (i17 <= 1) {
                                int i18 = i8 + i17;
                                if (i18 >= 0 && i18 < i) {
                                    int i19 = iArr[i18 + i16];
                                    iArr2[i4] = (i19 >> 16) & 255;
                                    iArr3[i4] = (i19 >> 8) & 255;
                                    iArr4[i4] = i19 & 255;
                                } else {
                                    iArr2[i4] = i11;
                                    iArr3[i4] = i12;
                                    iArr4[i4] = i13;
                                }
                                i17++;
                                i4++;
                            }
                        } else {
                            i4 = i9;
                            int i20 = -1;
                            while (i20 <= 1) {
                                iArr2[i4] = i11;
                                iArr3[i4] = i12;
                                iArr4[i4] = i13;
                                i20++;
                                i4++;
                            }
                        }
                        i14++;
                        i9 = i4;
                    }
                    iArr5[i3] = (iArr[i3] & ViewCompat.MEASURED_STATE_MASK) | (a(iArr2) << 16) | (a(iArr3) << 8) | a(iArr4);
                    i5 = i3 + 1;
                    i7 = i8 + 1;
                }
            }
            i6++;
            i5 = i3;
        }
        return iArr5;
    }

    public String toString() {
        return "Blur/Smooth";
    }
}
