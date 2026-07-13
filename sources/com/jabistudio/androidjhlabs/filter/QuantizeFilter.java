package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class QuantizeFilter extends WholeImageFilter {
    protected static final int[] matrix = {0, 0, 0, 0, 0, 7, 3, 5, 1};
    private boolean b;
    private int a = 16;
    private int c = 256;
    private boolean d = true;

    public void setNumColors(int i) {
        this.c = Math.min(Math.max(i, 8), 256);
    }

    public int getNumColors() {
        return this.c;
    }

    public void setDither(boolean z) {
        this.b = z;
    }

    public boolean getDither() {
        return this.b;
    }

    public void setSerpentine(boolean z) {
        this.d = z;
    }

    public boolean getSerpentine() {
        return this.d;
    }

    public void quantize(int[] iArr, int[] iArr2, int i, int i2, int i3, boolean z, boolean z2) {
        int i4;
        int i5;
        int i6;
        int i7 = i * i2;
        OctTreeQuantizer octTreeQuantizer = new OctTreeQuantizer();
        octTreeQuantizer.setup(i3);
        octTreeQuantizer.addPixels(iArr, 0, i7);
        int[] iArrBuildColorTable = octTreeQuantizer.buildColorTable();
        if (!z) {
            for (int i8 = 0; i8 < i7; i8++) {
                iArr2[i8] = iArrBuildColorTable[octTreeQuantizer.getIndexForColor(iArr[i8])];
            }
            return;
        }
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i10 < i2) {
                boolean z3 = z2 && (i10 & 1) == 1;
                if (z3) {
                    i4 = ((i10 * i) + i) - 1;
                    i5 = -1;
                } else {
                    i4 = i10 * i;
                    i5 = 1;
                }
                int i11 = 0;
                int i12 = i4;
                while (i11 < i) {
                    int i13 = iArr[i12];
                    int i14 = iArrBuildColorTable[octTreeQuantizer.getIndexForColor(i13)];
                    iArr2[i12] = i14;
                    int i15 = ((i13 >> 16) & 255) - ((i14 >> 16) & 255);
                    int i16 = ((i13 >> 8) & 255) - ((i14 >> 8) & 255);
                    int i17 = (i13 & 255) - (i14 & 255);
                    int i18 = -1;
                    while (true) {
                        int i19 = i18;
                        if (i19 <= 1) {
                            int i20 = i19 + i10;
                            if (i20 >= 0 && i20 < i2) {
                                int i21 = -1;
                                while (true) {
                                    int i22 = i21;
                                    if (i22 <= 1) {
                                        int i23 = i22 + i11;
                                        if (i23 >= 0 && i23 < i) {
                                            if (z3) {
                                                i6 = matrix[(((i19 + 1) * 3) - i22) + 1];
                                            } else {
                                                i6 = matrix[((i19 + 1) * 3) + i22 + 1];
                                            }
                                            if (i6 != 0) {
                                                int i24 = z3 ? i12 - i22 : i12 + i22;
                                                int i25 = iArr[i24];
                                                iArr[i24] = PixelUtils.clamp(((i6 * i17) / this.a) + (i25 & 255)) | (PixelUtils.clamp(((i25 >> 16) & 255) + ((i15 * i6) / this.a)) << 16) | (PixelUtils.clamp(((i25 >> 8) & 255) + ((i16 * i6) / this.a)) << 8);
                                            }
                                        }
                                        i21 = i22 + 1;
                                    }
                                }
                            }
                            i18 = i19 + 1;
                        }
                    }
                    i11++;
                    i12 += i5;
                }
                i9 = i10 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int[] iArr2 = new int[i * i2];
        quantize(iArr, iArr2, i, i2, this.c, this.b, this.d);
        return iArr2;
    }

    public String toString() {
        return "Colors/Quantize...";
    }
}
