package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class MidPoint implements IApplyInPlace {
    private int a;

    public MidPoint() {
        this.a = 1;
    }

    public MidPoint(int i) {
        this.a = 1;
        this.a = i < 1 ? 1 : i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        int iA = a(this.a);
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    int i3 = 0;
                    int i4 = 255;
                    int i5 = 0;
                    while (i5 < iA) {
                        int i6 = i + (i5 - this.a);
                        int iMin = i4;
                        int iMax = i3;
                        for (int i7 = 0; i7 < iA; i7++) {
                            int i8 = (i7 - this.a) + i2;
                            if (i6 >= 0 && i6 < height && i8 >= 0 && i8 < width) {
                                iMax = Math.max(iMax, fastBitmap2.getGray(i6, i8));
                                iMin = Math.min(iMin, fastBitmap2.getGray(i6, i8));
                            }
                        }
                        i5++;
                        i3 = iMax;
                        i4 = iMin;
                    }
                    fastBitmap.setGray(i, i2, (i3 + i4) / 2);
                }
            }
            return;
        }
        for (int i9 = 0; i9 < height; i9++) {
            for (int i10 = 0; i10 < width; i10++) {
                int i11 = 0;
                int i12 = 255;
                int i13 = 0;
                int iMin2 = 255;
                int i14 = 0;
                int i15 = 255;
                int i16 = 0;
                while (i13 < iA) {
                    int i17 = i9 + (i13 - this.a);
                    int iMin3 = i12;
                    int iMax2 = i14;
                    int iMax3 = i16;
                    int i18 = i15;
                    int iMax4 = i11;
                    int iMin4 = i18;
                    for (int i19 = 0; i19 < iA; i19++) {
                        int i20 = (i19 - this.a) + i10;
                        if (i17 >= 0 && i17 < height && i20 >= 0 && i20 < width) {
                            iMax3 = Math.max(iMax3, fastBitmap2.getRed(i17, i20));
                            iMax2 = Math.max(iMax2, fastBitmap2.getGreen(i17, i20));
                            iMax4 = Math.max(iMax4, fastBitmap2.getBlue(i17, i20));
                            iMin4 = Math.min(iMin4, fastBitmap2.getRed(i17, i20));
                            iMin2 = Math.min(iMin2, fastBitmap2.getGreen(i17, i20));
                            iMin3 = Math.min(iMin3, fastBitmap2.getBlue(i17, i20));
                        }
                    }
                    i13++;
                    i16 = iMax3;
                    i14 = iMax2;
                    i12 = iMin3;
                    int i21 = iMin4;
                    i11 = iMax4;
                    i15 = i21;
                }
                fastBitmap.setRGB(i9, i10, (i16 + i15) / 2, (i14 + iMin2) / 2, (i11 + i12) / 2);
            }
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
