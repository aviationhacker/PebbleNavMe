package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class MinimumFilter extends WholeImageFilter {
    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3 = 0;
        int[] iArr2 = new int[i * i2];
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            int i6 = i3;
            while (i5 < i) {
                int iCombinePixels = -1;
                for (int i7 = -1; i7 <= 1; i7++) {
                    int i8 = i4 + i7;
                    if (i8 >= 0 && i8 < i2) {
                        int i9 = i8 * i;
                        for (int i10 = -1; i10 <= 1; i10++) {
                            int i11 = i5 + i10;
                            if (i11 >= 0 && i11 < i) {
                                iCombinePixels = PixelUtils.combinePixels(iCombinePixels, iArr[i11 + i9], 2);
                            }
                        }
                    }
                }
                iArr2[i6] = iCombinePixels;
                i5++;
                i6++;
            }
            i4++;
            i3 = i6;
        }
        return iArr2;
    }

    public String toString() {
        return "Blur/Minimum";
    }
}
