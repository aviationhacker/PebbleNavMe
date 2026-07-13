package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Matrix;
import Catalano.Math.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class PeronaMalikAnisotropicDiffusion implements IApplyInPlace {
    private int a;
    private double b;
    private double c;
    private Diffusion d;

    public enum Diffusion {
        HighContrastEdges,
        WideRegions
    }

    public int getIterations() {
        return this.a;
    }

    public void setIterations(int i) {
        this.a = i;
    }

    public double getKappa() {
        return this.b;
    }

    public void setKappa(double d) {
        this.b = d;
    }

    public double getLambda() {
        return this.c;
    }

    public void setLambda(double d) {
        this.c = d;
    }

    public Diffusion getDiffusion() {
        return this.d;
    }

    public void setDiffusion(Diffusion diffusion) {
        this.d = diffusion;
    }

    public PeronaMalikAnisotropicDiffusion() {
        this(20);
    }

    public PeronaMalikAnisotropicDiffusion(int i) {
        this(i, 10.0d, 0.25d, Diffusion.HighContrastEdges);
    }

    public PeronaMalikAnisotropicDiffusion(int i, double d, double d2, Diffusion diffusion) {
        this.a = i;
        this.b = d;
        this.c = d2;
        this.d = diffusion;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            double[][] matrixGrayAsDouble = fastBitmap.toMatrixGrayAsDouble();
            int length = matrixGrayAsDouble.length;
            int length2 = matrixGrayAsDouble[0].length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
            double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
            for (int i = 0; i < this.a; i++) {
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr[0][i2] = -matrixGrayAsDouble[0][i2];
                }
                for (int i3 = 1; i3 < length; i3++) {
                    for (int i4 = 0; i4 < length2; i4++) {
                        dArr[i3][i4] = matrixGrayAsDouble[i3 - 1][i4] - matrixGrayAsDouble[i3][i4];
                    }
                }
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    if (i6 >= length - 1) {
                        break;
                    }
                    for (int i7 = 0; i7 < length2; i7++) {
                        dArr2[i6][i7] = matrixGrayAsDouble[i6 + 1][i7] - matrixGrayAsDouble[i6][i7];
                    }
                    i5 = i6 + 1;
                }
                for (int i8 = 0; i8 < length2; i8++) {
                    dArr2[length - 1][i8] = -matrixGrayAsDouble[length - 1][i8];
                }
                for (int i9 = 0; i9 < length; i9++) {
                    for (int i10 = 0; i10 < length2 - 1; i10++) {
                        dArr3[i9][i10] = matrixGrayAsDouble[i9][i10 + 1] - matrixGrayAsDouble[i9][i10];
                    }
                }
                for (int i11 = 0; i11 < length; i11++) {
                    dArr3[i11][length2 - 1] = -matrixGrayAsDouble[i11][length2 - 1];
                }
                for (int i12 = 0; i12 < length; i12++) {
                    for (int i13 = 1; i13 < length2; i13++) {
                        dArr4[i12][i13] = matrixGrayAsDouble[i12][i13 - 1] - matrixGrayAsDouble[i12][i13];
                    }
                }
                for (int i14 = 0; i14 < length; i14++) {
                    dArr4[i14][0] = -matrixGrayAsDouble[i14][0];
                }
                if (this.d == Diffusion.HighContrastEdges) {
                    for (int i15 = 0; i15 < length; i15++) {
                        for (int i16 = 0; i16 < length2; i16++) {
                            matrixGrayAsDouble[i15][i16] = (((Math.exp(-Math.pow(dArr[i15][i16] / this.b, 2.0d)) * dArr[i15][i16]) + (Math.exp(-Math.pow(dArr2[i15][i16] / this.b, 2.0d)) * dArr2[i15][i16]) + (dArr3[i15][i16] * Math.exp(-Math.pow(dArr3[i15][i16] / this.b, 2.0d))) + (dArr4[i15][i16] * Math.exp(-Math.pow(dArr4[i15][i16] / this.b, 2.0d)))) * this.c) + matrixGrayAsDouble[i15][i16];
                        }
                    }
                } else {
                    for (int i17 = 0; i17 < length; i17++) {
                        for (int i18 = 0; i18 < length2; i18++) {
                            matrixGrayAsDouble[i17][i18] = ((((1.0d / (1.0d + Math.pow(dArr[i17][i18] / this.b, 2.0d))) * dArr[i17][i18]) + ((1.0d / (1.0d + Math.pow(dArr2[i17][i18] / this.b, 2.0d))) * dArr2[i17][i18]) + (dArr3[i17][i18] * (1.0d / (1.0d + Math.pow(dArr3[i17][i18] / this.b, 2.0d)))) + (dArr4[i17][i18] * (1.0d / (1.0d + Math.pow(dArr4[i17][i18] / this.b, 2.0d))))) * this.c) + matrixGrayAsDouble[i17][i18];
                        }
                    }
                }
            }
            double dMin = Matrix.Min(matrixGrayAsDouble);
            double dMax = Matrix.Max(matrixGrayAsDouble);
            for (int i19 = 0; i19 < length; i19++) {
                int i20 = 0;
                while (true) {
                    int i21 = i20;
                    if (i21 < length2) {
                        fastBitmap.setGray(i19, i21, (int) Tools.Scale(dMin, dMax, 0.0d, 255.0d, matrixGrayAsDouble[i19][i21]));
                        i20 = i21 + 1;
                    }
                }
            }
            return;
        }
        throw new IllegalArgumentException("Perona-Malik only works in grayscale images.");
    }
}
