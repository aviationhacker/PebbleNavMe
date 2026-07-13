package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class SeparableConvolution implements IApplyInPlace {
    private int a;
    private int b;
    private double[] c;
    private double[] d;
    private boolean e;

    public boolean isReplicate() {
        return this.e;
    }

    public void setReplicate(boolean z) {
        this.e = z;
    }

    public SeparableConvolution() {
        this.e = false;
    }

    public SeparableConvolution(double[] dArr, double[] dArr2) {
        this.e = false;
        this.c = dArr;
        this.d = dArr2;
    }

    public SeparableConvolution(double[] dArr, double[] dArr2, boolean z) {
        this.e = false;
        this.c = dArr;
        this.d = dArr2;
        this.e = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.a = fastBitmap.getWidth();
        this.b = fastBitmap.getHeight();
        int length = (this.c.length - 1) / 2;
        if (fastBitmap.isGrayscale()) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.a);
            for (int i = 0; i < this.b; i++) {
                for (int i2 = 0; i2 < this.a; i2++) {
                    double gray = 0.0d;
                    for (int i3 = 0; i3 < this.c.length; i3++) {
                        int i4 = (i2 - length) + i3;
                        if (i4 >= 0 && i4 < this.a) {
                            gray += this.c[i3] * ((double) fastBitmap.getGray(i, i4));
                        } else if (this.e) {
                            int i5 = (i2 + i3) - length;
                            if (i5 < 0) {
                                i5 = 0;
                            }
                            if (i5 >= this.a) {
                                i5 = this.a - 1;
                            }
                            gray += this.c[(this.c.length - i3) - 1] * ((double) fastBitmap.getGray(i, i5));
                        }
                    }
                    dArr[i][i2] = gray;
                }
            }
            for (int i6 = 0; i6 < this.b; i6++) {
                for (int i7 = 0; i7 < this.a; i7++) {
                    double d = 0.0d;
                    for (int i8 = 0; i8 < this.c.length; i8++) {
                        int i9 = (i6 - length) + i8;
                        if (i9 >= 0 && i9 < this.b) {
                            d += this.d[i8] * dArr[i9][i7];
                        } else if (this.e) {
                            int i10 = (i6 + i8) - length;
                            if (i10 < 0) {
                                i10 = 0;
                            }
                            if (i10 >= this.b) {
                                i10 = this.b - 1;
                            }
                            d += this.d[i8] * dArr[i10][i7];
                        }
                    }
                    if (d < 0.0d) {
                        d = 0.0d;
                    }
                    if (d > 255.0d) {
                        d = 255.0d;
                    }
                    fastBitmap.setGray(i6, i7, (int) d);
                }
            }
            return;
        }
        double[][][] dArr2 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.a, 3);
        for (int i11 = 0; i11 < this.b; i11++) {
            for (int i12 = 0; i12 < this.a; i12++) {
                double blue = 0.0d;
                double green = 0.0d;
                double red = 0.0d;
                for (int i13 = 0; i13 < this.c.length; i13++) {
                    int i14 = (i12 - length) + i13;
                    if (i14 >= 0 && i14 < this.a) {
                        red += this.c[i13] * ((double) fastBitmap.getRed(i11, i14));
                        green += this.c[i13] * ((double) fastBitmap.getGreen(i11, i14));
                        blue += this.c[i13] * ((double) fastBitmap.getBlue(i11, i14));
                    } else if (this.e) {
                        int i15 = (i12 + i13) - length;
                        if (i15 < 0) {
                            i15 = 0;
                        }
                        if (i15 >= this.a) {
                            i15 = this.a - 1;
                        }
                        red += this.c[(this.c.length - i13) - 1] * ((double) fastBitmap.getRed(i11, i15));
                        green += this.c[(this.c.length - i13) - 1] * ((double) fastBitmap.getGreen(i11, i15));
                        blue += this.c[(this.c.length - i13) - 1] * ((double) fastBitmap.getBlue(i11, i15));
                    }
                }
                dArr2[i11][i12][0] = red;
                dArr2[i11][i12][1] = green;
                dArr2[i11][i12][2] = blue;
            }
        }
        for (int i16 = 0; i16 < this.b; i16++) {
            for (int i17 = 0; i17 < this.a; i17++) {
                double d2 = 0.0d;
                double d3 = 0.0d;
                double d4 = 0.0d;
                for (int i18 = 0; i18 < this.d.length; i18++) {
                    int i19 = (i16 - length) + i18;
                    if (i19 >= 0 && i19 < this.b) {
                        d4 += this.d[i18] * dArr2[i19][i17][0];
                        d3 += this.d[i18] * dArr2[i19][i17][1];
                        d2 += this.d[i18] * dArr2[i19][i17][2];
                    } else if (this.e) {
                        int i20 = (i16 + i18) - length;
                        if (i20 < 0) {
                            i20 = 0;
                        }
                        if (i20 >= this.b) {
                            i20 = this.b - 1;
                        }
                        d4 += this.d[i18] * dArr2[i20][i17][0];
                        d3 += this.d[i18] * dArr2[i20][i17][1];
                        d2 += this.d[i18] * dArr2[i20][i17][2];
                    }
                }
                if (d4 < 0.0d) {
                    d4 = 0.0d;
                }
                double d5 = d4 > 255.0d ? 255.0d : d4;
                if (d3 < 0.0d) {
                    d3 = 0.0d;
                }
                double d6 = d3 > 255.0d ? 255.0d : d3;
                if (d2 < 0.0d) {
                    d2 = 0.0d;
                }
                if (d2 > 255.0d) {
                    d2 = 255.0d;
                }
                fastBitmap.setRGB(i16, i17, (int) d5, (int) d6, (int) d2);
            }
        }
    }
}
