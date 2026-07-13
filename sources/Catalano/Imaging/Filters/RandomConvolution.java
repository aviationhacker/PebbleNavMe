package Catalano.Imaging.Filters;

import Catalano.Core.DoubleRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Random;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class RandomConvolution implements IApplyInPlace {
    private int a;
    private DoubleRange b;
    private double[][] c;
    private boolean d;
    private boolean e;

    public double[][] getKernel() {
        return this.c;
    }

    public void setKernel(double[][] dArr) {
        this.c = dArr;
        this.e = false;
    }

    public boolean isReplicate() {
        return this.d;
    }

    public void setReplicate(boolean z) {
        this.d = z;
    }

    public RandomConvolution() {
        this(3);
    }

    public RandomConvolution(int i) {
        this(i, new DoubleRange(-2.5d, 2.5d));
    }

    public RandomConvolution(int i, DoubleRange doubleRange) {
        this(i, doubleRange, true);
    }

    public RandomConvolution(int i, DoubleRange doubleRange, boolean z) {
        this.d = false;
        this.e = true;
        this.a = i;
        this.b = doubleRange;
        this.d = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        Random random = new Random(System.currentTimeMillis());
        if (this.e) {
            this.c = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.a, this.a);
            for (int i = 0; i < this.c.length; i++) {
                for (int i2 = 0; i2 < this.c[0].length; i2++) {
                    this.c[i][i2] = random.nextDouble(this.b.getMin(), this.b.getMax());
                }
            }
        }
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        int iA = a(this.c);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < height) {
                    int i5 = 0;
                    while (true) {
                        int i6 = i5;
                        if (i6 < width) {
                            double gray = 0.0d;
                            double d = 0.0d;
                            for (int i7 = 0; i7 < this.c.length; i7++) {
                                int i8 = i4 + (i7 - iA);
                                for (int i9 = 0; i9 < this.c[0].length; i9++) {
                                    int i10 = (i9 - iA) + i6;
                                    if (i8 >= 0 && i8 < height && i10 >= 0 && i10 < width) {
                                        gray += ((double) fastBitmap2.getGray(i8, i10)) * this.c[i7][i9];
                                        d += this.c[i7][i9];
                                    } else if (this.d) {
                                        int i11 = (i4 + i7) - iA;
                                        int i12 = (i6 + i9) - iA;
                                        if (i11 < 0) {
                                            i11 = 0;
                                        }
                                        if (i11 >= height) {
                                            i11 = height - 1;
                                        }
                                        if (i12 < 0) {
                                            i12 = 0;
                                        }
                                        if (i12 >= width) {
                                            i12 = width - 1;
                                        }
                                        gray += ((double) fastBitmap2.getGray(i11, i12)) * this.c[i7][i9];
                                        d += this.c[i7][i9];
                                    }
                                }
                            }
                            double d2 = d != 0.0d ? gray / d : gray;
                            if (d2 > 255.0d) {
                                d2 = 255.0d;
                            }
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            fastBitmap.setGray(i4, i6, (int) d2);
                            i5 = i6 + 1;
                        }
                    }
                    i3 = i4 + 1;
                } else {
                    return;
                }
            }
        } else {
            for (int i13 = 0; i13 < height; i13++) {
                for (int i14 = 0; i14 < width; i14++) {
                    double blue = 0.0d;
                    double green = 0.0d;
                    double red = 0.0d;
                    double d3 = 0.0d;
                    for (int i15 = 0; i15 < this.c.length; i15++) {
                        int i16 = i13 + (i15 - iA);
                        for (int i17 = 0; i17 < this.c[0].length; i17++) {
                            int i18 = (i17 - iA) + i14;
                            if (i16 >= 0 && i16 < height && i18 >= 0 && i18 < width) {
                                red += this.c[i15][i17] * ((double) fastBitmap2.getRed(i16, i18));
                                green += this.c[i15][i17] * ((double) fastBitmap2.getGreen(i16, i18));
                                blue += ((double) fastBitmap2.getBlue(i16, i18)) * this.c[i15][i17];
                                d3 += this.c[i15][i17];
                            } else if (this.d) {
                                int i19 = (i13 + i15) - iA;
                                int i20 = (i14 + i17) - iA;
                                if (i19 < 0) {
                                    i19 = 0;
                                }
                                if (i19 >= height) {
                                    i19 = height - 1;
                                }
                                if (i20 < 0) {
                                    i20 = 0;
                                }
                                if (i20 >= width) {
                                    i20 = width - 1;
                                }
                                red += this.c[i15][i17] * ((double) fastBitmap2.getRed(i19, i20));
                                green += this.c[i15][i17] * ((double) fastBitmap2.getGreen(i19, i20));
                                blue += ((double) fastBitmap2.getBlue(i19, i20)) * this.c[i15][i17];
                                d3 += this.c[i15][i17];
                            }
                        }
                    }
                    if (d3 != 0.0d) {
                        red /= d3;
                        green /= d3;
                        blue /= d3;
                    }
                    if (red > 255.0d) {
                        red = 255.0d;
                    }
                    if (green > 255.0d) {
                        green = 255.0d;
                    }
                    if (blue > 255.0d) {
                        blue = 255.0d;
                    }
                    double d4 = red < 0.0d ? 0.0d : red;
                    double d5 = green < 0.0d ? 0.0d : green;
                    if (blue < 0.0d) {
                        blue = 0.0d;
                    }
                    fastBitmap.setRGB(i13, i14, (int) d4, (int) d5, (int) blue);
                }
            }
        }
    }

    private int a(double[][] dArr) {
        return (dArr[0].length - 1) / 2;
    }
}
