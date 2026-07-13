package Catalano.Math.Decompositions;

import Catalano.Math.Matrix;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class CholeskyDecomposition implements Serializable {
    private double[][] a;
    private int b;
    private boolean c;

    public CholeskyDecomposition(double[][] dArr) {
        this.b = dArr.length;
        this.a = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.b);
        this.c = dArr[0].length == this.b;
        for (int i = 0; i < this.b; i++) {
            double[] dArr2 = this.a[i];
            int i2 = 0;
            double d = 0.0d;
            while (i2 < i) {
                double[] dArr3 = this.a[i2];
                double d2 = 0.0d;
                for (int i3 = 0; i3 < i2; i3++) {
                    d2 += dArr3[i3] * dArr2[i3];
                }
                double d3 = (dArr[i][i2] - d2) / this.a[i2][i2];
                dArr2[i2] = d3;
                double d4 = (d3 * d3) + d;
                this.c = (dArr[i2][i] == dArr[i][i2]) & this.c;
                i2++;
                d = d4;
            }
            double d5 = dArr[i][i] - d;
            this.c = (d5 > 0.0d) & this.c;
            this.a[i][i] = Math.sqrt(Math.max(d5, 0.0d));
            for (int i4 = i + 1; i4 < this.b; i4++) {
                this.a[i][i4] = 0.0d;
            }
        }
    }

    public boolean isSPD() {
        return this.c;
    }

    public double[][] getL() {
        return Matrix.SubMatrix(this.a, this.b, this.b);
    }

    public double[][] solve(double[][] dArr) {
        if (dArr.length != this.b) {
            throw new IllegalArgumentException("Matrix row dimensions must agree.");
        }
        if (!this.c) {
            throw new RuntimeException("Matrix is not symmetric positive definite.");
        }
        double[][] dArrCopy = Matrix.Copy(dArr);
        int length = dArr[0].length;
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    double[] dArr2 = dArrCopy[i];
                    dArr2[i2] = dArr2[i2] - (dArrCopy[i3][i2] * this.a[i][i3]);
                }
                double[] dArr3 = dArrCopy[i];
                dArr3[i2] = dArr3[i2] / this.a[i][i];
            }
        }
        for (int i4 = this.b - 1; i4 >= 0; i4--) {
            for (int i5 = 0; i5 < length; i5++) {
                for (int i6 = i4 + 1; i6 < this.b; i6++) {
                    double[] dArr4 = dArrCopy[i4];
                    dArr4[i5] = dArr4[i5] - (dArrCopy[i6][i5] * this.a[i6][i4]);
                }
                double[] dArr5 = dArrCopy[i4];
                dArr5[i5] = dArr5[i5] / this.a[i4][i4];
            }
        }
        return Matrix.SubMatrix(dArrCopy, this.b, length);
    }
}
