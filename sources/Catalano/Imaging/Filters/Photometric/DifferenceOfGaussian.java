package Catalano.Imaging.Filters.Photometric;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.HistogramAdjust;
import Catalano.Math.Functions.Gaussian;
import Catalano.Math.Matrix;
import Catalano.Math.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class DifferenceOfGaussian implements IPhotometricFilter {
    private double a;
    private double b;
    private boolean c;

    public DifferenceOfGaussian() {
        this(1.0d, 2.0d);
    }

    public DifferenceOfGaussian(double d, double d2) {
        this(d, d2, true);
    }

    public DifferenceOfGaussian(double d, double d2, boolean z) {
        this.a = 1.4d;
        this.b = 1.4d;
        this.c = true;
        this.a = d;
        this.b = d2;
        this.c = z;
    }

    @Override // Catalano.Imaging.Filters.Photometric.IPhotometricFilter
    public void applyInPlace(FastBitmap fastBitmap) {
        int iCeil = (((int) Math.ceil(3.0d * this.a)) * 2) + 1;
        Gaussian gaussian = new Gaussian(this.a);
        double[][] dArrKernel2D = gaussian.Kernel2D(iCeil);
        int iCeil2 = (((int) Math.ceil(3.0d * this.b)) * 2) + 1;
        gaussian.setSigma(this.b);
        double[][] dArrKernel2D2 = gaussian.Kernel2D(iCeil2);
        if (fastBitmap.isGrayscale()) {
            double[][] dArrSubtract = Matrix.Subtract(a(fastBitmap, dArrKernel2D), a(fastBitmap, dArrKernel2D2));
            double dMax = -1.7976931348623157E308d;
            double d = Double.MAX_VALUE;
            int i = 0;
            while (i < dArrSubtract.length) {
                double dMin = d;
                for (int i2 = 0; i2 < dArrSubtract[0].length; i2++) {
                    dMin = Math.min(dMin, dArrSubtract[i][i2]);
                    dMax = Math.max(dMax, dArrSubtract[i][i2]);
                }
                i++;
                d = dMin;
            }
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= dArrSubtract.length) {
                    break;
                }
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    if (i6 < dArrSubtract[0].length) {
                        fastBitmap.setGray(i4, i6, (int) Tools.Scale(d, dMax, 0.0d, 255.0d, dArrSubtract[i4][i6]));
                        i5 = i6 + 1;
                    }
                }
                i3 = i4 + 1;
            }
            if (this.c) {
                new HistogramAdjust().applyInPlace(fastBitmap);
                return;
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            double[][][] dArrB = b(fastBitmap, dArrKernel2D);
            double[][][] dArrB2 = b(fastBitmap, dArrKernel2D2);
            for (int i7 = 0; i7 < dArrB.length; i7++) {
                for (int i8 = 0; i8 < dArrB[0].length; i8++) {
                    dArrB[i7][i8][0] = dArrB[i7][i8][0] - dArrB2[i7][i8][0];
                    dArrB[i7][i8][1] = dArrB[i7][i8][1] - dArrB2[i7][i8][1];
                    dArrB[i7][i8][2] = dArrB[i7][i8][2] - dArrB2[i7][i8][2];
                }
            }
            double d2 = -1.7976931348623157E308d;
            double d3 = -1.7976931348623157E308d;
            double d4 = -1.7976931348623157E308d;
            double d5 = Double.MAX_VALUE;
            double d6 = Double.MAX_VALUE;
            double d7 = Double.MAX_VALUE;
            int i9 = 0;
            while (i9 < dArrB.length) {
                double dMax2 = d4;
                double dMax3 = d2;
                double dMin2 = d5;
                double dMin3 = d6;
                double dMax4 = d3;
                double dMin4 = d7;
                for (int i10 = 0; i10 < dArrB[0].length; i10++) {
                    dMin4 = Math.min(dMin4, dArrB[i9][i10][0]);
                    dMin3 = Math.min(dMin3, dArrB[i9][i10][1]);
                    dMin2 = Math.min(dMin2, dArrB[i9][i10][2]);
                    dMax3 = Math.max(dMax3, dArrB[i9][i10][0]);
                    dMax2 = Math.max(dMax2, dArrB[i9][i10][1]);
                    dMax4 = Math.max(dMax4, dArrB[i9][i10][2]);
                }
                i9++;
                d4 = dMax2;
                d5 = dMin2;
                d6 = dMin3;
                d7 = dMin4;
                d3 = dMax4;
                d2 = dMax3;
            }
            int i11 = 0;
            while (true) {
                int i12 = i11;
                if (i12 >= dArrB.length) {
                    break;
                }
                int i13 = 0;
                while (true) {
                    int i14 = i13;
                    if (i14 < dArrB[0].length) {
                        fastBitmap.setRGB(i12, i14, (int) Tools.Scale(d7, d2, 0.0d, 255.0d, dArrB[i12][i14][0]), (int) Tools.Scale(d6, d4, 0.0d, 255.0d, dArrB[i12][i14][1]), (int) Tools.Scale(d5, d3, 0.0d, 255.0d, dArrB[i12][i14][2]));
                        i13 = i14 + 1;
                    }
                }
                i11 = i12 + 1;
            }
            if (this.c) {
                new HistogramAdjust().applyInPlace(fastBitmap);
            }
        }
    }

    private double[][] a(FastBitmap fastBitmap, double[][] dArr) {
        double gray;
        double gray2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
        int length = (dArr.length - 1) / 2;
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                double d = 0.0d;
                for (int i3 = 0; i3 < dArr.length; i3++) {
                    int i4 = i + (i3 - length);
                    int i5 = 0;
                    while (i5 < dArr[0].length) {
                        int i6 = (i5 - length) + i2;
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            gray2 = dArr[i3][i5];
                            gray = fastBitmap.getGray(i4, i6);
                        } else {
                            int i7 = (i + i3) - length;
                            int i8 = (i2 + i5) - length;
                            if (i7 < 0) {
                                i7 = 0;
                            }
                            if (i7 >= height) {
                                i7 = height - 1;
                            }
                            if (i8 < 0) {
                                i8 = 0;
                            }
                            if (i8 >= width) {
                                i8 = width - 1;
                            }
                            gray = dArr[i3][i5];
                            gray2 = fastBitmap.getGray(i7, i8);
                        }
                        i5++;
                        d = (gray2 * gray) + d;
                    }
                }
                dArr2[i][i2] = d;
            }
        }
        return dArr2;
    }

    private double[][][] b(FastBitmap fastBitmap, double[][] dArr) {
        double red;
        double green;
        double d;
        int blue;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double[][][] dArr2 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, height, width, 3);
        int length = (dArr.length - 1) / 2;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < height) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 < width) {
                        double d2 = 0.0d;
                        double d3 = 0.0d;
                        double d4 = 0.0d;
                        for (int i5 = 0; i5 < dArr.length; i5++) {
                            int i6 = i2 + (i5 - length);
                            int i7 = 0;
                            while (i7 < dArr[0].length) {
                                int i8 = (i7 - length) + i4;
                                if (i6 >= 0 && i6 < height && i8 >= 0 && i8 < width) {
                                    red = (dArr[i5][i7] * ((double) fastBitmap.getRed(i6, i8))) + d4;
                                    green = (dArr[i5][i7] * ((double) fastBitmap.getGreen(i6, i8))) + d3;
                                    d = dArr[i5][i7];
                                    blue = fastBitmap.getBlue(i6, i8);
                                } else {
                                    int i9 = (i2 + i5) - length;
                                    int i10 = (i4 + i7) - length;
                                    if (i9 < 0) {
                                        i9 = 0;
                                    }
                                    int i11 = i9 >= height ? height - 1 : i9;
                                    if (i10 < 0) {
                                        i10 = 0;
                                    }
                                    if (i10 >= width) {
                                        i10 = width - 1;
                                    }
                                    red = (dArr[i5][i7] * ((double) fastBitmap.getRed(i11, i10))) + d4;
                                    green = (dArr[i5][i7] * ((double) fastBitmap.getGreen(i11, i10))) + d3;
                                    d = dArr[i5][i7];
                                    blue = fastBitmap.getBlue(i11, i10);
                                }
                                i7++;
                                d2 = (d * ((double) blue)) + d2;
                                d3 = green;
                                d4 = red;
                            }
                        }
                        dArr2[i2][i4][0] = d4;
                        dArr2[i2][i4][1] = d3;
                        dArr2[i2][i4][2] = d2;
                        i3 = i4 + 1;
                    }
                }
                i = i2 + 1;
            } else {
                return dArr2;
            }
        }
    }
}
