package Catalano.Imaging.Tools;

import Catalano.Core.ArraysUtil;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Matrix;
import Catalano.Math.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class FastRadialSymmetryTransform implements IApplyInPlace {
    private int a;
    private float b;
    private int c;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(2, i);
    }

    public int getAlpha() {
        return this.c;
    }

    public void setAlpha(int i) {
        this.c = i;
    }

    public FastRadialSymmetryTransform() {
        this.a = 2;
        this.b = 8.0f;
        this.c = 1;
    }

    public FastRadialSymmetryTransform(int i) {
        this.a = 2;
        this.b = 8.0f;
        this.c = 1;
        setRadius(i);
    }

    public FastRadialSymmetryTransform(int i, int i2) {
        this.a = 2;
        this.b = 8.0f;
        this.c = 1;
        this.a = i;
        this.c = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            double[][] dArrA = a(fastBitmap, ArraysUtil.toDouble(ConvolutionKernel.SobelHorizontal));
            double[][] dArrA2 = a(fastBitmap, ArraysUtil.toDouble(ConvolutionKernel.SobelVertical));
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
            double[][] dArrB = b(dArrA, dArrA2);
            a(dArrA, dArrB);
            a(dArrA2, dArrB);
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= height) {
                    break;
                }
                int i3 = 1;
                for (int i4 = 0; i4 < width; i4++) {
                    iArr[i2][i4] = i3;
                    i3++;
                }
                i = i2 + 1;
            }
            int i5 = 0;
            int i6 = 1;
            while (true) {
                int i7 = i5;
                if (i7 >= height) {
                    break;
                }
                for (int i8 = 0; i8 < width; i8++) {
                    iArr2[i7][i8] = i6;
                }
                i6++;
                i5 = i7 + 1;
            }
            int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int[][] iArr6 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int i9 = 1;
            while (true) {
                int i10 = i9;
                if (i10 >= this.a) {
                    break;
                }
                double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
                double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
                int i11 = 0;
                while (true) {
                    int i12 = i11;
                    if (i12 >= height) {
                        break;
                    }
                    for (int i13 = 0; i13 < width; i13++) {
                        iArr3[i12][i13] = iArr[i12][i13] + ((int) Math.round(((double) i10) * dArrA2[i12][i13]));
                        iArr5[i12][i13] = iArr[i12][i13] - ((int) Math.round(((double) i10) * dArrA2[i12][i13]));
                        if (iArr3[i12][i13] < 1) {
                            iArr3[i12][i13] = 1;
                        }
                        if (iArr5[i12][i13] < 1) {
                            iArr5[i12][i13] = 1;
                        }
                        if (iArr3[i12][i13] > width) {
                            iArr3[i12][i13] = width;
                        }
                        if (iArr5[i12][i13] > width) {
                            iArr5[i12][i13] = width;
                        }
                    }
                    i11 = i12 + 1;
                }
                int i14 = 0;
                while (true) {
                    int i15 = i14;
                    if (i15 >= height) {
                        break;
                    }
                    for (int i16 = 0; i16 < width; i16++) {
                        iArr4[i15][i16] = iArr2[i15][i16] + ((int) Math.round(((double) i10) * dArrA[i15][i16]));
                        iArr6[i15][i16] = iArr2[i15][i16] - ((int) Math.round(((double) i10) * dArrA[i15][i16]));
                        if (iArr4[i15][i16] < 1) {
                            iArr4[i15][i16] = 1;
                        }
                        if (iArr6[i15][i16] < 1) {
                            iArr6[i15][i16] = 1;
                        }
                        if (iArr4[i15][i16] > height) {
                            iArr4[i15][i16] = height;
                        }
                        if (iArr6[i15][i16] > height) {
                            iArr6[i15][i16] = height;
                        }
                    }
                    i14 = i15 + 1;
                }
                int i17 = 0;
                while (true) {
                    int i18 = i17;
                    if (i18 >= height) {
                        break;
                    }
                    for (int i19 = 0; i19 < width; i19++) {
                        double[] dArr4 = dArr3[iArr4[i18][i19] - 1];
                        int i20 = iArr3[i18][i19] - 1;
                        dArr4[i20] = dArr4[i20] + 1.0d;
                        double[] dArr5 = dArr3[iArr6[i18][i19] - 1];
                        int i21 = iArr5[i18][i19] - 1;
                        dArr5[i21] = dArr5[i21] - 1.0d;
                        double[] dArr6 = dArr2[iArr4[i18][i19] - 1];
                        int i22 = iArr3[i18][i19] - 1;
                        dArr6[i22] = dArr6[i22] + dArrB[i18][i19];
                        double[] dArr7 = dArr2[iArr6[i18][i19] - 1];
                        int i23 = iArr5[i18][i19] - 1;
                        dArr7[i23] = dArr7[i23] - dArrB[i18][i19];
                    }
                    i17 = i18 + 1;
                }
                if (i10 == 1) {
                    this.b = 8.0f;
                } else {
                    this.b = 9.9f;
                }
                for (int i24 = 0; i24 < dArr3.length; i24++) {
                    for (int i25 = 0; i25 < dArr3[0].length; i25++) {
                        if (dArr3[i24][i25] > this.b) {
                            dArr3[i24][i25] = this.b;
                        }
                        if (dArr3[i24][i25] < (-this.b)) {
                            dArr3[i24][i25] = -this.b;
                        }
                    }
                }
                double[][] dArr8 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
                int i26 = 0;
                while (true) {
                    int i27 = i26;
                    if (i27 >= height) {
                        break;
                    }
                    for (int i28 = 0; i28 < width; i28++) {
                        dArr8[i27][i28] = (dArr2[i27][i28] / ((double) this.b)) * Math.pow(Math.abs(dArr3[i27][i28]) / ((double) this.b), this.c);
                    }
                    i26 = i27 + 1;
                }
                double[][] dArrC = c(dArr8, Matrix.Multiply(a(this.a, 0.25d * ((double) this.a)), this.a));
                int i29 = 0;
                while (true) {
                    int i30 = i29;
                    if (i30 < height) {
                        for (int i31 = 0; i31 < width; i31++) {
                            double[] dArr9 = dArr[i30];
                            dArr9[i31] = dArr9[i31] + dArrC[i30][i31];
                        }
                        i29 = i30 + 1;
                    }
                }
                i9 = i10 + 1;
            }
            int i32 = 0;
            while (true) {
                int i33 = i32;
                if (i33 >= height) {
                    break;
                }
                for (int i34 = 0; i34 < width; i34++) {
                    double[] dArr10 = dArr[i33];
                    dArr10[i34] = dArr10[i34] / ((double) this.a);
                }
                i32 = i33 + 1;
            }
            double dMin = Matrix.Min(dArr);
            double dMax = Matrix.Max(dArr);
            int i35 = 0;
            while (true) {
                int i36 = i35;
                if (i36 < height) {
                    int i37 = 0;
                    while (true) {
                        int i38 = i37;
                        if (i38 < width) {
                            dArr[i36][i38] = Tools.Scale(dMin, dMax, 0.0d, 255.0d, dArr[i36][i38]);
                            i37 = i38 + 1;
                        }
                    }
                    i35 = i36 + 1;
                } else {
                    fastBitmap.matrixToImage(dArr);
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Fast Radial Symmetry Transform only works in grayscale images.");
        }
    }

    private double[][] a(int i, double d) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i);
        double d2 = 0.0d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            for (int i3 = 0; i3 < dArr[0].length; i3++) {
                double dExp = Math.exp((-((i2 * i2) + (i3 * i3))) / Math.pow(2.0d * d, 2.0d));
                dArr[i2][i3] = dExp;
                d2 += dExp;
            }
        }
        for (double[] dArr2 : dArr) {
            for (int i4 = 0; i4 < dArr[0].length; i4++) {
                dArr2[i4] = dArr2[i4] / d2;
            }
        }
        return dArr;
    }

    private void a(double[][] dArr, double[][] dArr2) {
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                double[] dArr3 = dArr[i];
                dArr3[i2] = dArr3[i2] / dArr2[i][i2];
            }
        }
    }

    private double[][] b(double[][] dArr, double[][] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr3[i][i2] = ((double) ((float) Math.sqrt((dArr[i][i2] * dArr[i][i2]) + (dArr2[i][i2] * dArr2[i][i2])))) + 2.2204E-16d;
            }
        }
        return dArr3;
    }

    private double[][] c(double[][] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        int iA = a(dArr2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                int i3 = 0;
                for (int i4 = 0; i4 < dArr2.length; i4++) {
                    int i5 = i + (i4 - iA);
                    int i6 = 0;
                    while (i6 < dArr2[0].length) {
                        int i7 = (i6 - iA) + i2;
                        if (i5 >= 0 && i5 < length && i7 >= 0 && i7 < length2) {
                            i3 = (int) (((double) i3) + (dArr2[i4][i6] * dArr[i5][i7]));
                        }
                        i6++;
                        i3 = i3;
                    }
                }
                dArr3[i][i2] = i3;
            }
        }
        return dArr3;
    }

    private double[][] a(FastBitmap fastBitmap, double[][] dArr) {
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
        int iA = a(dArr);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int gray = 0;
                for (int i3 = 0; i3 < dArr.length; i3++) {
                    int i4 = i + (i3 - iA);
                    int i5 = 0;
                    while (i5 < dArr[0].length) {
                        int i6 = (i5 - iA) + i2;
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            gray = (int) (((double) gray) + (dArr[i3][i5] * ((double) fastBitmap.getGray(i4, i6))));
                        }
                        i5++;
                        gray = gray;
                    }
                }
                dArr2[i][i2] = gray;
            }
        }
        return dArr2;
    }

    private int a(double[][] dArr) {
        return (dArr[0].length - 1) / 2;
    }
}
