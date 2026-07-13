package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class AdaptiveContrastEnhancement implements IApplyInPlace {
    int a;
    double b;
    double c;
    double d;
    double e;

    public AdaptiveContrastEnhancement(int i, double d, double d2, double d3, double d4) {
        this.a = i;
        this.b = d;
        this.c = d2;
        this.e = d3;
        this.d = d4;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        double d;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(this.a);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            double dA = a(fastBitmap);
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    int i3 = 0;
                    int i4 = this.a * this.a;
                    int[] iArr = new int[i4];
                    double d2 = 0.0d;
                    double d3 = 0.0d;
                    int i5 = i - iA;
                    while (i5 <= i + iA) {
                        double d4 = d3;
                        double d5 = d2;
                        int i6 = i3;
                        double d6 = d4;
                        for (int i7 = i2 - iA; i7 <= i2 + iA; i7++) {
                            if (i5 >= 0 && i5 < height && i7 >= 0 && i7 < width) {
                                iArr[i6] = fastBitmap2.getGray(i5, i7);
                                d5 += (double) iArr[i6];
                                d6 += (double) (iArr[i6] * iArr[i6]);
                                i6++;
                            }
                        }
                        i5++;
                        i3 = i6;
                        d2 = d5;
                        d3 = d6;
                    }
                    double d7 = d2 / ((double) i4);
                    double d8 = (d3 / ((double) i4)) - (d7 * d7);
                    if (d8 != 0.0d) {
                        d = (dA / d8) * this.b;
                    } else {
                        d = this.d;
                    }
                    if (d > this.d) {
                        d = this.d;
                    }
                    if (d < this.e) {
                        d = this.e;
                    }
                    fastBitmap.setGray(i, i2, (int) ((d * (((double) fastBitmap2.getGray(i, i2)) - d7)) + (this.c * d7)));
                }
            }
            return;
        }
        try {
            throw new IllegalArgumentException("AdaptiveContrastEnhancement works only with grayscale.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private double a(FastBitmap fastBitmap) {
        int i = 0;
        for (int i2 = 0; i2 < fastBitmap.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < fastBitmap.getWidth()) {
                int gray = fastBitmap.getGray(i2, i3) + i;
                i3++;
                i = gray;
            }
        }
        return i / (fastBitmap.getWidth() * fastBitmap.getHeight());
    }

    private int a(int i) {
        return (i - 1) / 2;
    }
}
