package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Maximum implements IApplyInPlace {
    private int a;

    public Maximum() {
        this.a = 1;
    }

    public Maximum(int i) {
        this.a = 1;
        this.a = i < 1 ? 1 : i;
    }

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
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
                    int i4 = 0;
                    while (i4 < iA) {
                        int i5 = i + (i4 - this.a);
                        int iMax = i3;
                        for (int i6 = 0; i6 < iA; i6++) {
                            int i7 = (i6 - this.a) + i2;
                            if (i5 >= 0 && i5 < height && i7 >= 0 && i7 < width) {
                                iMax = Math.max(iMax, fastBitmap2.getGray(i5, i7));
                            }
                        }
                        i4++;
                        i3 = iMax;
                    }
                    fastBitmap.setGray(i, i2, i3);
                }
            }
        }
        if (fastBitmap.isRGB()) {
            for (int i8 = 0; i8 < height; i8++) {
                for (int i9 = 0; i9 < width; i9++) {
                    int i10 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    while (i11 < iA) {
                        int i14 = i8 + (i11 - this.a);
                        int iMax2 = i10;
                        int i15 = i12;
                        int iMax3 = i13;
                        int iMax4 = i15;
                        for (int i16 = 0; i16 < iA; i16++) {
                            int i17 = (i16 - this.a) + i9;
                            if (i14 >= 0 && i14 < height && i17 >= 0 && i17 < width) {
                                iMax3 = Math.max(iMax4, fastBitmap2.getRed(i14, i17));
                                iMax4 = Math.max(iMax4, fastBitmap2.getGreen(i14, i17));
                                iMax2 = Math.max(iMax2, fastBitmap2.getBlue(i14, i17));
                            }
                        }
                        i11++;
                        i10 = iMax2;
                        int i18 = iMax4;
                        i13 = iMax3;
                        i12 = i18;
                    }
                    fastBitmap.setRGB(i8, i9, i13, i12, i10);
                }
            }
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
