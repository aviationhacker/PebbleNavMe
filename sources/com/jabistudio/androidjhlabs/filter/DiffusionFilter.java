package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class DiffusionFilter extends WholeImageFilter {
    private static final int[] a = {0, 0, 0, 0, 0, 7, 3, 5, 1};
    private int[] b;
    private int c = 16;
    private boolean d = true;
    private boolean e = true;
    private int f = 6;

    public DiffusionFilter() {
        setMatrix(a);
    }

    public void setSerpentine(boolean z) {
        this.d = z;
    }

    public boolean getSerpentine() {
        return this.d;
    }

    public void setColorDither(boolean z) {
        this.e = z;
    }

    public boolean getColorDither() {
        return this.e;
    }

    public void setMatrix(int[] iArr) {
        this.b = iArr;
        this.c = 0;
        for (int i : iArr) {
            this.c += i;
        }
    }

    public int[] getMatrix() {
        return this.b;
    }

    public void setLevels(int i) {
        this.f = i;
    }

    public int getLevels() {
        return this.f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4;
        int i5;
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[this.f];
        for (int i6 = 0; i6 < this.f; i6++) {
            iArr3[i6] = (i6 * 255) / (this.f - 1);
        }
        int[] iArr4 = new int[256];
        for (int i7 = 0; i7 < 256; i7++) {
            iArr4[i7] = (this.f * i7) / 256;
        }
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i9 < i2) {
                boolean z = this.d && (i9 & 1) == 1;
                if (z) {
                    i3 = ((i9 * i) + i) - 1;
                    i4 = -1;
                } else {
                    i3 = i9 * i;
                    i4 = 1;
                }
                int i10 = 0;
                int i11 = i3;
                while (i10 < i) {
                    int i12 = iArr[i11];
                    int i13 = (i12 >> 16) & 255;
                    int i14 = (i12 >> 8) & 255;
                    int i15 = i12 & 255;
                    if (!this.e) {
                        i15 = (i15 + (i14 + i13)) / 3;
                        i14 = i15;
                        i13 = i15;
                    }
                    int i16 = iArr3[iArr4[i13]];
                    int i17 = iArr3[iArr4[i14]];
                    int i18 = iArr3[iArr4[i15]];
                    iArr2[i11] = (i12 & ViewCompat.MEASURED_STATE_MASK) | (i16 << 16) | (i17 << 8) | i18;
                    int i19 = i13 - i16;
                    int i20 = i14 - i17;
                    int i21 = i15 - i18;
                    int i22 = -1;
                    while (true) {
                        int i23 = i22;
                        if (i23 <= 1) {
                            int i24 = i23 + i9;
                            if (i24 >= 0 && i24 < i2) {
                                int i25 = -1;
                                while (true) {
                                    int i26 = i25;
                                    if (i26 <= 1) {
                                        int i27 = i26 + i10;
                                        if (i27 >= 0 && i27 < i) {
                                            if (z) {
                                                i5 = this.b[(((i23 + 1) * 3) - i26) + 1];
                                            } else {
                                                i5 = this.b[((i23 + 1) * 3) + i26 + 1];
                                            }
                                            if (i5 != 0) {
                                                int i28 = z ? i11 - i26 : i11 + i26;
                                                int i29 = iArr[i28];
                                                iArr[i28] = PixelUtils.clamp(((i5 * i21) / this.c) + (i29 & 255)) | (iArr[i28] & ViewCompat.MEASURED_STATE_MASK) | (PixelUtils.clamp(((i29 >> 16) & 255) + ((i19 * i5) / this.c)) << 16) | (PixelUtils.clamp(((i29 >> 8) & 255) + ((i20 * i5) / this.c)) << 8);
                                            }
                                        }
                                        i25 = i26 + 1;
                                    }
                                }
                            }
                            i22 = i23 + 1;
                        }
                    }
                    i10++;
                    i11 += i4;
                }
                i8 = i9 + 1;
            } else {
                return iArr2;
            }
        }
    }

    public String toString() {
        return "Colors/Diffusion Dither...";
    }
}
