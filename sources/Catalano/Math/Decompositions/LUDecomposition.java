package Catalano.Math.Decompositions;

import Catalano.Math.Matrix;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class LUDecomposition implements Serializable {
    private double[][] a;
    private int b;
    private int c;
    private int d;
    private int[] e;

    public LUDecomposition(double[][] dArr) {
        this.a = (double[][]) dArr.clone();
        this.b = dArr.length;
        this.c = dArr[0].length;
        this.e = new int[this.b];
        for (int i = 0; i < this.b; i++) {
            this.e[i] = i;
        }
        this.d = 1;
        double[] dArr2 = new double[this.b];
        for (int i2 = 0; i2 < this.c; i2++) {
            for (int i3 = 0; i3 < this.b; i3++) {
                dArr2[i3] = this.a[i3][i2];
            }
            for (int i4 = 0; i4 < this.b; i4++) {
                double[] dArr3 = this.a[i4];
                int iMin = Math.min(i4, i2);
                double d = 0.0d;
                for (int i5 = 0; i5 < iMin; i5++) {
                    d += dArr3[i5] * dArr2[i5];
                }
                double d2 = dArr2[i4] - d;
                dArr2[i4] = d2;
                dArr3[i2] = d2;
            }
            int i6 = i2;
            for (int i7 = i2 + 1; i7 < this.b; i7++) {
                if (Math.abs(dArr2[i7]) > Math.abs(dArr2[i6])) {
                    i6 = i7;
                }
            }
            if (i6 != i2) {
                for (int i8 = 0; i8 < this.c; i8++) {
                    double d3 = this.a[i6][i8];
                    this.a[i6][i8] = this.a[i2][i8];
                    this.a[i2][i8] = d3;
                }
                int i9 = this.e[i6];
                this.e[i6] = this.e[i2];
                this.e[i2] = i9;
                this.d = -this.d;
            }
            if (i2 < this.b && this.a[i2][i2] != 0.0d) {
                for (int i10 = i2 + 1; i10 < this.b; i10++) {
                    double[] dArr4 = this.a[i10];
                    dArr4[i2] = dArr4[i2] / this.a[i2][i2];
                }
            }
        }
    }

    public boolean isNonsingular() {
        for (int i = 0; i < this.c; i++) {
            if (this.a[i][i] == 0.0d) {
                return false;
            }
        }
        return true;
    }

    public double[][] inverse() {
        return solve(Matrix.Identity(this.b, this.b));
    }

    public double[][] getL() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.c);
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.c; i2++) {
                if (i > i2) {
                    dArr[i][i2] = this.a[i][i2];
                } else if (i == i2) {
                    dArr[i][i2] = 1.0d;
                } else {
                    dArr[i][i2] = 0.0d;
                }
            }
        }
        return dArr;
    }

    public double[][] getU() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.c, this.c);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.c; i2++) {
                if (i <= i2) {
                    dArr[i][i2] = this.a[i][i2];
                } else {
                    dArr[i][i2] = 0.0d;
                }
            }
        }
        return dArr;
    }

    public int[] getPivot() {
        int[] iArr = new int[this.b];
        for (int i = 0; i < this.b; i++) {
            iArr[i] = this.e[i];
        }
        return iArr;
    }

    public double[] getDoublePivot() {
        double[] dArr = new double[this.b];
        for (int i = 0; i < this.b; i++) {
            dArr[i] = this.e[i];
        }
        return dArr;
    }

    public double determinant() {
        if (this.b != this.c) {
            throw new IllegalArgumentException("Matrix must be square.");
        }
        double d = this.d;
        for (int i = 0; i < this.c; i++) {
            d *= this.a[i][i];
        }
        return d;
    }

    public double[][] solve(double[][] dArr) {
        if (dArr.length != this.b) {
            throw new IllegalArgumentException("Matrix row dimensions must agree.");
        }
        if (!isNonsingular()) {
            throw new RuntimeException("Matrix is singular.");
        }
        int length = dArr[0].length;
        double[][] dArrSubmatrix = Matrix.Submatrix(dArr, this.e, 0, length - 1);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = i + 1; i2 < this.c; i2++) {
                for (int i3 = 0; i3 < length; i3++) {
                    double[] dArr2 = dArrSubmatrix[i2];
                    dArr2[i3] = dArr2[i3] - (dArrSubmatrix[i][i3] * this.a[i2][i]);
                }
            }
        }
        for (int i4 = this.c - 1; i4 >= 0; i4--) {
            for (int i5 = 0; i5 < length; i5++) {
                double[] dArr3 = dArrSubmatrix[i4];
                dArr3[i5] = dArr3[i5] / this.a[i4][i4];
            }
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = 0; i7 < length; i7++) {
                    double[] dArr4 = dArrSubmatrix[i6];
                    dArr4[i7] = dArr4[i7] - (dArrSubmatrix[i4][i7] * this.a[i6][i4]);
                }
            }
        }
        return dArrSubmatrix;
    }
}
