package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class BlockFilter {
    private int a;

    public BlockFilter() {
        this.a = 2;
    }

    public BlockFilter(int i) {
        this.a = 2;
        this.a = i;
    }

    public void setBlockSize(int i) {
        this.a = i;
    }

    public int getBlockSize() {
        return this.a;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[this.a * this.a];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = 0;
            while (i4 < i) {
                int iMin = Math.min(this.a, i - i4);
                int iMin2 = Math.min(this.a, i2 - i3);
                int i5 = iMin * iMin2;
                PixelUtils.getRGB(iArr, i4, i3, iMin, iMin2, i, iArr3);
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < iMin2; i10++) {
                    for (int i11 = 0; i11 < iMin; i11++) {
                        int i12 = iArr3[i9];
                        i6 += (i12 >> 16) & 255;
                        i7 += (i12 >> 8) & 255;
                        i8 += i12 & 255;
                        i9++;
                    }
                }
                int i13 = ((i6 / i5) << 16) | ((i7 / i5) << 8) | (i8 / i5);
                int i14 = 0;
                for (int i15 = 0; i15 < iMin2; i15++) {
                    for (int i16 = 0; i16 < iMin; i16++) {
                        iArr3[i14] = (iArr3[i14] & ViewCompat.MEASURED_STATE_MASK) | i13;
                        i14++;
                    }
                }
                PixelUtils.setRGB(iArr2, i4, i3, iMin, iMin2, i, iArr3);
                i4 += this.a;
            }
            i3 += this.a;
        }
        return iArr2;
    }

    public String toString() {
        return "Pixellate/Mosaic...";
    }
}
