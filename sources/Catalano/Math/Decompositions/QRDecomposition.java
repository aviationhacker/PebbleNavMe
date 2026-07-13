package Catalano.Math.Decompositions;

import Catalano.Math.Tools;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class QRDecomposition implements Serializable {
    private double[][] a;
    private int b;
    private int c;
    private double[] d;

    public QRDecomposition(double[][] dArr) {
        this.a = (double[][]) dArr.clone();
        this.b = dArr.length;
        this.c = dArr[0].length;
        this.d = new double[this.c];
        for (int i = 0; i < this.c; i++) {
            double dHypotenuse = 0.0d;
            for (int i2 = i; i2 < this.b; i2++) {
                dHypotenuse = Tools.Hypotenuse(dHypotenuse, this.a[i2][i]);
            }
            if (dHypotenuse != 0.0d) {
                dHypotenuse = this.a[i][i] < 0.0d ? -dHypotenuse : dHypotenuse;
                for (int i3 = i; i3 < this.b; i3++) {
                    double[] dArr2 = this.a[i3];
                    dArr2[i] = dArr2[i] / dHypotenuse;
                }
                double[] dArr3 = this.a[i];
                dArr3[i] = dArr3[i] + 1.0d;
                for (int i4 = i + 1; i4 < this.c; i4++) {
                    double d = 0.0d;
                    for (int i5 = i; i5 < this.b; i5++) {
                        d += this.a[i5][i] * this.a[i5][i4];
                    }
                    double d2 = (-d) / this.a[i][i];
                    for (int i6 = i; i6 < this.b; i6++) {
                        double[] dArr4 = this.a[i6];
                        dArr4[i4] = dArr4[i4] + (this.a[i6][i] * d2);
                    }
                }
            }
            this.d[i] = -dHypotenuse;
        }
    }

    public boolean isFullRank() {
        for (int i = 0; i < this.c; i++) {
            if (this.d[i] == 0.0d) {
                return false;
            }
        }
        return true;
    }

    public double[][] getH() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.c);
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.c; i2++) {
                if (i >= i2) {
                    dArr[i][i2] = this.a[i][i2];
                } else {
                    dArr[i][i2] = 0.0d;
                }
            }
        }
        return dArr;
    }

    public double[][] getR() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.c, this.c);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.c; i2++) {
                if (i < i2) {
                    dArr[i][i2] = this.a[i][i2];
                } else if (i == i2) {
                    dArr[i][i2] = this.d[i];
                } else {
                    dArr[i][i2] = 0.0d;
                }
            }
        }
        return dArr;
    }

    public double[][] getQ() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.c);
        for (int i = this.c - 1; i >= 0; i--) {
            for (int i2 = 0; i2 < this.b; i2++) {
                dArr[i2][i] = 0.0d;
            }
            dArr[i][i] = 1.0d;
            for (int i3 = i; i3 < this.c; i3++) {
                if (this.a[i][i] != 0.0d) {
                    double d = 0.0d;
                    for (int i4 = i; i4 < this.b; i4++) {
                        d += this.a[i4][i] * dArr[i4][i3];
                    }
                    double d2 = (-d) / this.a[i][i];
                    for (int i5 = i; i5 < this.b; i5++) {
                        double[] dArr2 = dArr[i5];
                        dArr2[i3] = dArr2[i3] + (this.a[i5][i] * d2);
                    }
                }
            }
        }
        return dArr;
    }

    public double[][] solve(double[][] dArr) {
        if (dArr.length != this.b) {
            throw new IllegalArgumentException("Matrix row dimensions must agree.");
        }
        if (!isFullRank()) {
            throw new RuntimeException("Matrix is rank deficient.");
        }
        int length = dArr[0].length;
        double[][] dArr2 = (double[][]) dArr.clone();
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                double d = 0.0d;
                for (int i3 = i; i3 < this.b; i3++) {
                    d += this.a[i3][i] * dArr2[i3][i2];
                }
                double d2 = (-d) / this.a[i][i];
                for (int i4 = i; i4 < this.b; i4++) {
                    double[] dArr3 = dArr2[i4];
                    dArr3[i2] = dArr3[i2] + (this.a[i4][i] * d2);
                }
            }
        }
        for (int i5 = this.c - 1; i5 >= 0; i5--) {
            for (int i6 = 0; i6 < length; i6++) {
                double[] dArr4 = dArr2[i5];
                dArr4[i6] = dArr4[i6] / this.d[i5];
            }
            for (int i7 = 0; i7 < i5; i7++) {
                for (int i8 = 0; i8 < length; i8++) {
                    double[] dArr5 = dArr2[i7];
                    dArr5[i8] = dArr5[i8] - (dArr2[i5][i8] * this.a[i7][i5]);
                }
            }
        }
        double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.c, length);
        for (int i9 = 0; i9 < dArr6.length; i9++) {
            for (int i10 = 0; i10 < dArr6[0].length; i10++) {
                dArr6[i9][i10] = dArr2[i9][i10];
            }
        }
        return dArr6;
    }
}
