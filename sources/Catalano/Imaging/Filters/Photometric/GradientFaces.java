package Catalano.Imaging.Filters.Photometric;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.Matrix;
import Catalano.Math.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GradientFaces implements IPhotometricFilter {
    private double a;
    private double[][] b;
    private double[][] c;
    private boolean d;

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = d;
        a(d);
    }

    public boolean isUseEquation() {
        return this.d;
    }

    public void setUseEquation(boolean z) {
        this.d = z;
    }

    public GradientFaces() {
        this(0.75d);
    }

    public GradientFaces(double d) {
        this(d, false);
    }

    public GradientFaces(double d, boolean z) {
        this.d = true;
        setSigma(d);
        this.d = z;
    }

    private void a(double d) {
        int iFloor = (int) Math.floor(3.5d * d);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (iFloor * 2) + 1, (iFloor * 2) + 1);
        for (double[] dArr2 : dArr) {
            int i = -iFloor;
            int i2 = 0;
            while (i2 < dArr[0].length) {
                dArr2[i2] = i;
                i2++;
                i++;
            }
        }
        double[][] dArrTranspose = Matrix.Transpose(dArr);
        this.b = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i3 = 0; i3 < this.b.length; i3++) {
            for (int i4 = 0; i4 < this.b[0].length; i4++) {
                this.b[i3][i4] = (-2.0d) * dArr[i3][i4] * Math.exp((-((dArr[i3][i4] * dArr[i3][i4]) + (dArrTranspose[i3][i4] * dArrTranspose[i3][i4]))) / (2.0d * (d * d)));
            }
        }
        this.c = Matrix.Transpose(this.b);
    }

    @Override // Catalano.Imaging.Filters.Photometric.IPhotometricFilter
    public void applyInPlace(FastBitmap fastBitmap) {
        double d;
        double d2;
        int gray;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
        int length = (this.b.length - 1) / 2;
        double d3 = Double.MAX_VALUE;
        double dMax = -1.7976931348623157E308d;
        int i = 0;
        while (true) {
            d = d3;
            if (i >= height) {
                break;
            }
            int i2 = 0;
            double d4 = dMax;
            d3 = d;
            while (i2 < width) {
                double d5 = 0.0d;
                double gray2 = 0.0d;
                for (int i3 = 0; i3 < this.b.length; i3++) {
                    int i4 = i + (i3 - length);
                    for (int i5 = 0; i5 < this.b[0].length; i5++) {
                        int i6 = (i5 - length) + i2;
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            gray2 += this.b[i3][i5] * ((double) fastBitmap.getGray(i4, i6));
                            d2 = this.c[i3][i5];
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
                            gray2 += this.b[i3][i5] * ((double) fastBitmap.getGray(i7, i8));
                            d2 = this.c[i3][i5];
                            gray = fastBitmap.getGray(i7, i8);
                        }
                        d5 += ((double) gray) * d2;
                    }
                }
                dArr[i][i2] = Math.atan2(d5, gray2);
                double dMin = Math.min(d3, dArr[i][i2]);
                double dMax2 = Math.max(d4, dArr[i][i2]);
                i2++;
                d4 = dMax2;
                d3 = dMin;
            }
            i++;
            dMax = d4;
        }
        if (this.d) {
            double dMin2 = Double.MAX_VALUE;
            dMax = -1.7976931348623157E308d;
            for (int i9 = 0; i9 < dArr.length; i9++) {
                for (int i10 = 0; i10 < dArr[0].length; i10++) {
                    if (dArr[i9][i10] < 0.0d) {
                        dArr[i9][i10] = 6.283185307179586d - dArr[i9][i10];
                    } else {
                        double[] dArr2 = dArr[i9];
                        dArr2[i10] = dArr2[i10] + 6.283185307179586d;
                    }
                    dMin2 = Math.min(dMin2, dArr[i9][i10]);
                    dMax = Math.max(dMax, dArr[i9][i10]);
                }
            }
            d = dMin2;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11;
            if (i12 < height) {
                int i13 = 0;
                while (true) {
                    int i14 = i13;
                    if (i14 < width) {
                        fastBitmap.setGray(i12, i14, (int) Tools.Scale(d, dMax, 0.0d, 255.0d, dArr[i12][i14]));
                        i13 = i14 + 1;
                    }
                }
                i11 = i12 + 1;
            } else {
                return;
            }
        }
    }
}
