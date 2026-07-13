package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class FastVariance implements IApplyInPlace {
    private int a = 2;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public FastVariance() {
    }

    public FastVariance(int i) {
        setRadius(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= height) {
                    break;
                }
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 < width) {
                        int i5 = 0;
                        double d = 0.0d;
                        double gray = 0.0d;
                        for (int i6 = i2 - this.a; i6 <= this.a + i2; i6++) {
                            int i7 = i4 - this.a;
                            while (i7 <= this.a + i4) {
                                if (i6 >= 0 && i6 < height && i7 >= 0 && i7 < width) {
                                    i5++;
                                    double gray2 = ((double) fastBitmap2.getGray(i6, i7)) - d;
                                    d += gray2 / ((double) i5);
                                    gray += gray2 * (((double) fastBitmap2.getGray(i6, i7)) - d);
                                }
                                i7++;
                                i5 = i5;
                            }
                        }
                        double d2 = gray / ((double) (i5 - 1));
                        if (d2 < 0.0d) {
                            d2 = 0.0d;
                        }
                        if (d2 > 255.0d) {
                            d2 = 255.0d;
                        }
                        fastBitmap.setGray(i2, i4, (int) d2);
                        i3 = i4 + 1;
                    }
                }
                i = i2 + 1;
            }
        }
        if (fastBitmap.isRGB()) {
            for (int i8 = 0; i8 < height; i8++) {
                for (int i9 = 0; i9 < width; i9++) {
                    int i10 = 0;
                    double d3 = 0.0d;
                    double d4 = 0.0d;
                    double d5 = 0.0d;
                    double red = 0.0d;
                    double green = 0.0d;
                    double blue = 0.0d;
                    for (int i11 = i8 - this.a; i11 <= this.a + i8; i11++) {
                        int i12 = i9 - this.a;
                        while (i12 <= this.a + i9) {
                            if (i11 >= 0 && i11 < height && i12 >= 0 && i12 < width) {
                                i10++;
                                double red2 = ((double) fastBitmap2.getRed(i11, i12)) - d3;
                                double green2 = ((double) fastBitmap2.getGreen(i11, i12)) - d4;
                                double blue2 = ((double) fastBitmap2.getBlue(i11, i12)) - d5;
                                d3 += red2 / ((double) i10);
                                d4 += green2 / ((double) i10);
                                d5 += blue2 / ((double) i10);
                                red += red2 * (((double) fastBitmap2.getRed(i11, i12)) - d3);
                                green += (((double) fastBitmap2.getGreen(i11, i12)) - d4) * green2;
                                blue += (((double) fastBitmap2.getBlue(i11, i12)) - d5) * blue2;
                            }
                            i12++;
                            i10 = i10;
                        }
                    }
                    double d6 = red / ((double) (i10 - 1));
                    double d7 = green / ((double) (i10 - 1));
                    double d8 = blue / ((double) (i10 - 1));
                    if (d6 < 0.0d) {
                        d6 = 0.0d;
                    }
                    if (d7 < 0.0d) {
                        d7 = 0.0d;
                    }
                    if (d8 < 0.0d) {
                        d8 = 0.0d;
                    }
                    double d9 = d6 > 255.0d ? 255.0d : d6;
                    double d10 = d7 > 255.0d ? 255.0d : d7;
                    if (d8 > 255.0d) {
                        d8 = 255.0d;
                    }
                    fastBitmap.setRGB(i8, i9, (int) d9, (int) d10, (int) d8);
                }
            }
        }
    }
}
