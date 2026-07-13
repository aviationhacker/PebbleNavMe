package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Median implements IApplyInPlace {
    private int a;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public Median() {
        this.a = 1;
    }

    public Median(int i) {
        this.a = 1;
        this.a = Math.max(1, i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(this.a);
        int i = iA * iA;
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    int i4 = 0;
                    int i5 = 0;
                    while (i5 < iA) {
                        int i6 = i2 + (i5 - this.a);
                        int i7 = i4;
                        for (int i8 = 0; i8 < iA; i8++) {
                            int i9 = (i8 - this.a) + i3;
                            if (i6 >= 0 && i6 < height && i9 >= 0 && i9 < width) {
                                iArr[i7] = fastBitmap2.getGray(i6, i9);
                                i7++;
                            }
                        }
                        i5++;
                        i4 = i7;
                    }
                    Arrays.sort(iArr, 0, i4);
                    fastBitmap.setGray(i2, i3, iArr[i4 / 2]);
                }
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[i];
            int[] iArr3 = new int[i];
            int[] iArr4 = new int[i];
            for (int i10 = 0; i10 < height; i10++) {
                for (int i11 = 0; i11 < width; i11++) {
                    int i12 = 0;
                    int i13 = 0;
                    while (i13 < iA) {
                        int i14 = i10 + (i13 - this.a);
                        int i15 = i12;
                        for (int i16 = 0; i16 < iA; i16++) {
                            int i17 = (i16 - this.a) + i11;
                            if (i14 >= 0 && i14 < height && i17 >= 0 && i17 < width) {
                                iArr2[i15] = fastBitmap2.getRed(i14, i17);
                                iArr3[i15] = fastBitmap2.getGreen(i14, i17);
                                iArr4[i15] = fastBitmap2.getBlue(i14, i17);
                                i15++;
                            }
                        }
                        i13++;
                        i12 = i15;
                    }
                    Arrays.sort(iArr2, 0, i12);
                    Arrays.sort(iArr3, 0, i12);
                    Arrays.sort(iArr4, 0, i12);
                    int i18 = i12 / 2;
                    fastBitmap.setRGB(i10, i11, iArr2[i18], iArr3[i18], iArr4[i18]);
                }
            }
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
