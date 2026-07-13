package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Variance implements IApplyInPlace {
    private int a = 2;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public Variance() {
    }

    public Variance(int i) {
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
                        double gray = 0.0d;
                        int i5 = 0;
                        for (int i6 = i2 - this.a; i6 <= this.a + i2; i6++) {
                            int i7 = i4 - this.a;
                            while (i7 <= this.a + i4) {
                                if (i6 >= 0 && i6 < height && i7 >= 0 && i7 < width) {
                                    gray += (double) fastBitmap2.getGray(i6, i7);
                                    i5++;
                                }
                                i7++;
                                i5 = i5;
                                gray = gray;
                            }
                        }
                        double d = gray / ((double) i5);
                        double dPow = 0.0d;
                        for (int i8 = i2 - this.a; i8 <= this.a + i2; i8++) {
                            int i9 = i4 - this.a;
                            while (i9 <= this.a + i4) {
                                if (i8 >= 0 && i8 < height && i9 >= 0 && i9 < width) {
                                    dPow += Math.pow(((double) fastBitmap2.getGray(i8, i9)) - d, 2.0d);
                                }
                                i9++;
                                dPow = dPow;
                            }
                        }
                        double d2 = dPow / ((double) (i5 - 1));
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
            for (int i10 = 0; i10 < height; i10++) {
                for (int i11 = 0; i11 < width; i11++) {
                    double red = 0.0d;
                    double green = 0.0d;
                    double blue = 0.0d;
                    int i12 = 0;
                    for (int i13 = i10 - this.a; i13 <= this.a + i10; i13++) {
                        int i14 = i11 - this.a;
                        while (i14 <= this.a + i11) {
                            if (i13 >= 0 && i13 < height && i14 >= 0 && i14 < width) {
                                red += (double) fastBitmap2.getRed(i13, i14);
                                green += (double) fastBitmap2.getGreen(i13, i14);
                                blue += (double) fastBitmap2.getBlue(i13, i14);
                                i12++;
                            }
                            double d3 = red;
                            i14++;
                            i12 = i12;
                            blue = blue;
                            green = green;
                            red = d3;
                        }
                    }
                    double d4 = red / ((double) i12);
                    double d5 = green / ((double) i12);
                    double d6 = blue / ((double) i12);
                    double dPow2 = 0.0d;
                    double dPow3 = 0.0d;
                    double dPow4 = 0.0d;
                    for (int i15 = i10 - this.a; i15 <= this.a + i10; i15++) {
                        int i16 = i11 - this.a;
                        while (i16 <= this.a + i11) {
                            if (i15 >= 0 && i15 < height && i16 >= 0 && i16 < width) {
                                dPow4 += Math.pow(((double) fastBitmap2.getRed(i15, i16)) - d4, 2.0d);
                                dPow3 += Math.pow(((double) fastBitmap2.getGreen(i15, i16)) - d5, 2.0d);
                                dPow2 += Math.pow(((double) fastBitmap2.getBlue(i15, i16)) - d6, 2.0d);
                            }
                            i16++;
                            dPow2 = dPow2;
                            dPow3 = dPow3;
                            dPow4 = dPow4;
                        }
                    }
                    double d7 = dPow4 / ((double) (i12 - 1));
                    double d8 = dPow3 / ((double) (i12 - 1));
                    double d9 = dPow2 / ((double) (i12 - 1));
                    if (d7 < 0.0d) {
                        d7 = 0.0d;
                    }
                    if (d8 < 0.0d) {
                        d8 = 0.0d;
                    }
                    if (d9 < 0.0d) {
                        d9 = 0.0d;
                    }
                    double d10 = d7 > 255.0d ? 255.0d : d7;
                    double d11 = d8 > 255.0d ? 255.0d : d8;
                    if (d9 > 255.0d) {
                        d9 = 255.0d;
                    }
                    fastBitmap.setRGB(i10, i11, (int) d10, (int) d11, (int) d9);
                }
            }
        }
    }
}
