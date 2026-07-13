package Catalano.Math.Decompositions;

import Catalano.Math.Matrix;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class EigenvalueDecomposition implements Serializable {
    private int a;
    private boolean b;
    private double[] c;
    private double[] d;
    private double[][] e;
    private double[][] f;
    private double[] g;
    private transient double h;
    private transient double i;

    public EigenvalueDecomposition(double[][] dArr) {
        this.a = dArr[0].length;
        this.e = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.a, this.a);
        this.c = new double[this.a];
        this.d = new double[this.a];
        this.b = true;
        int i = 0;
        while (true) {
            if (!(i < this.a) || !this.b) {
                break;
            }
            int i2 = 0;
            while (true) {
                if ((i2 < this.a) & this.b) {
                    this.b = dArr[i2][i] == dArr[i][i2];
                    i2++;
                }
            }
            i++;
        }
        if (this.b) {
            for (int i3 = 0; i3 < this.a; i3++) {
                for (int i4 = 0; i4 < this.a; i4++) {
                    this.e[i3][i4] = dArr[i3][i4];
                }
            }
            a();
            b();
            return;
        }
        this.f = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.a, this.a);
        this.g = new double[this.a];
        for (int i5 = 0; i5 < this.a; i5++) {
            for (int i6 = 0; i6 < this.a; i6++) {
                this.f[i6][i5] = dArr[i6][i5];
            }
        }
        c();
        d();
    }

    private void a() {
        for (int i = 0; i < this.a; i++) {
            this.c[i] = this.e[this.a - 1][i];
        }
        for (int i2 = this.a - 1; i2 > 0; i2--) {
            double dAbs = 0.0d;
            double d = 0.0d;
            for (int i3 = 0; i3 < i2; i3++) {
                dAbs += Math.abs(this.c[i3]);
            }
            if (dAbs != 0.0d) {
                double d2 = 0.0d;
                for (int i4 = 0; i4 < i2; i4++) {
                    double[] dArr = this.c;
                    dArr[i4] = dArr[i4] / dAbs;
                    d2 += this.c[i4] * this.c[i4];
                }
                double d3 = this.c[i2 - 1];
                double dSqrt = Math.sqrt(d2);
                if (d3 > 0.0d) {
                    dSqrt = -dSqrt;
                }
                this.d[i2] = dAbs * dSqrt;
                double d4 = d2 - (d3 * dSqrt);
                this.c[i2 - 1] = d3 - dSqrt;
                for (int i5 = 0; i5 < i2; i5++) {
                    this.d[i5] = 0.0d;
                }
                for (int i6 = 0; i6 < i2; i6++) {
                    double d5 = this.c[i6];
                    this.e[i6][i2] = d5;
                    double d6 = this.d[i6] + (this.e[i6][i6] * d5);
                    for (int i7 = i6 + 1; i7 <= i2 - 1; i7++) {
                        d6 += this.e[i7][i6] * this.c[i7];
                        double[] dArr2 = this.d;
                        dArr2[i7] = dArr2[i7] + (this.e[i7][i6] * d5);
                    }
                    this.d[i6] = d6;
                }
                double d7 = 0.0d;
                for (int i8 = 0; i8 < i2; i8++) {
                    double[] dArr3 = this.d;
                    dArr3[i8] = dArr3[i8] / d4;
                    d7 += this.d[i8] * this.c[i8];
                }
                double d8 = d7 / (d4 + d4);
                for (int i9 = 0; i9 < i2; i9++) {
                    double[] dArr4 = this.d;
                    dArr4[i9] = dArr4[i9] - (this.c[i9] * d8);
                }
                for (int i10 = 0; i10 < i2; i10++) {
                    double d9 = this.c[i10];
                    double d10 = this.d[i10];
                    for (int i11 = i10; i11 <= i2 - 1; i11++) {
                        double[] dArr5 = this.e[i11];
                        dArr5[i10] = dArr5[i10] - ((this.d[i11] * d9) + (this.c[i11] * d10));
                    }
                    this.c[i10] = this.e[i2 - 1][i10];
                    this.e[i2][i10] = 0.0d;
                }
                d = d4;
            } else {
                this.d[i2] = this.c[i2 - 1];
                for (int i12 = 0; i12 < i2; i12++) {
                    this.c[i12] = this.e[i2 - 1][i12];
                    this.e[i2][i12] = 0.0d;
                    this.e[i12][i2] = 0.0d;
                }
            }
            this.c[i2] = d;
        }
        for (int i13 = 0; i13 < this.a - 1; i13++) {
            this.e[this.a - 1][i13] = this.e[i13][i13];
            this.e[i13][i13] = 1.0d;
            double d11 = this.c[i13 + 1];
            if (d11 != 0.0d) {
                for (int i14 = 0; i14 <= i13; i14++) {
                    this.c[i14] = this.e[i14][i13 + 1] / d11;
                }
                for (int i15 = 0; i15 <= i13; i15++) {
                    double d12 = 0.0d;
                    for (int i16 = 0; i16 <= i13; i16++) {
                        d12 += this.e[i16][i13 + 1] * this.e[i16][i15];
                    }
                    for (int i17 = 0; i17 <= i13; i17++) {
                        double[] dArr6 = this.e[i17];
                        dArr6[i15] = dArr6[i15] - (this.c[i17] * d12);
                    }
                }
            }
            for (int i18 = 0; i18 <= i13; i18++) {
                this.e[i18][i13 + 1] = 0.0d;
            }
        }
        for (int i19 = 0; i19 < this.a; i19++) {
            this.c[i19] = this.e[this.a - 1][i19];
            this.e[this.a - 1][i19] = 0.0d;
        }
        this.e[this.a - 1][this.a - 1] = 1.0d;
        this.d[0] = 0.0d;
    }

    private void b() {
        for (int i = 1; i < this.a; i++) {
            this.d[i - 1] = this.d[i];
        }
        this.d[this.a - 1] = 0.0d;
        double d = 0.0d;
        double dMax = 0.0d;
        double dPow = Math.pow(2.0d, -52.0d);
        for (int i2 = 0; i2 < this.a; i2++) {
            dMax = Math.max(dMax, Math.abs(this.c[i2]) + Math.abs(this.d[i2]));
            int i3 = i2;
            while (i3 < this.a && Math.abs(this.d[i3]) > dPow * dMax) {
                i3++;
            }
            if (i3 > i2) {
                double d2 = d;
                int i4 = 0;
                do {
                    i4++;
                    double d3 = this.c[i2];
                    double d4 = (this.c[i2 + 1] - d3) / (2.0d * this.d[i2]);
                    double dHypot = Math.hypot(d4, 1.0d);
                    if (d4 < 0.0d) {
                        dHypot = -dHypot;
                    }
                    this.c[i2] = this.d[i2] / (d4 + dHypot);
                    this.c[i2 + 1] = (dHypot + d4) * this.d[i2];
                    double d5 = this.c[i2 + 1];
                    double d6 = d3 - this.c[i2];
                    for (int i5 = i2 + 2; i5 < this.a; i5++) {
                        double[] dArr = this.c;
                        dArr[i5] = dArr[i5] - d6;
                    }
                    d2 += d6;
                    double d7 = this.c[i3];
                    double d8 = this.d[i2 + 1];
                    double d9 = 0.0d;
                    double d10 = 1.0d;
                    double d11 = 1.0d;
                    double d12 = d7;
                    double d13 = 1.0d;
                    double d14 = 0.0d;
                    int i6 = i3 - 1;
                    while (i6 >= i2) {
                        double d15 = d11 * this.d[i6];
                        double d16 = d11 * d12;
                        double dHypot2 = Math.hypot(d12, this.d[i6]);
                        this.d[i6 + 1] = d9 * dHypot2;
                        double d17 = this.d[i6] / dHypot2;
                        double d18 = d12 / dHypot2;
                        d12 = (this.c[i6] * d18) - (d17 * d15);
                        this.c[i6 + 1] = (((d15 * d18) + (this.c[i6] * d17)) * d17) + d16;
                        for (int i7 = 0; i7 < this.a; i7++) {
                            double d19 = this.e[i7][i6 + 1];
                            this.e[i7][i6 + 1] = (this.e[i7][i6] * d17) + (d18 * d19);
                            this.e[i7][i6] = (this.e[i7][i6] * d18) - (d19 * d17);
                        }
                        i6--;
                        double d20 = d9;
                        d9 = d17;
                        d14 = d20;
                        double d21 = d10;
                        d10 = d11;
                        d11 = d18;
                        d13 = d21;
                    }
                    double d22 = (((((-d9) * d14) * d13) * d8) * this.d[i2]) / d5;
                    this.d[i2] = d9 * d22;
                    this.c[i2] = d22 * d11;
                } while (Math.abs(this.d[i2]) > dPow * dMax);
                d = d2;
            }
            this.c[i2] = this.c[i2] + d;
            this.d[i2] = 0.0d;
        }
        for (int i8 = 0; i8 < this.a - 1; i8++) {
            double d23 = this.c[i8];
            int i9 = i8;
            for (int i10 = i8 + 1; i10 < this.a; i10++) {
                if (this.c[i10] < d23) {
                    d23 = this.c[i10];
                    i9 = i10;
                }
            }
            if (i9 != i8) {
                this.c[i9] = this.c[i8];
                this.c[i8] = d23;
                for (int i11 = 0; i11 < this.a; i11++) {
                    double d24 = this.e[i11][i8];
                    this.e[i11][i8] = this.e[i11][i9];
                    this.e[i11][i9] = d24;
                }
            }
        }
    }

    private void c() {
        int i = this.a - 1;
        for (int i2 = 1; i2 <= i - 1; i2++) {
            double d = 0.0d;
            int i3 = i2;
            while (i3 <= i) {
                double dAbs = Math.abs(this.f[i3][i2 - 1]) + d;
                i3++;
                d = dAbs;
            }
            if (d != 0.0d) {
                double d2 = 0.0d;
                for (int i4 = i; i4 >= i2; i4--) {
                    this.g[i4] = this.f[i4][i2 - 1] / d;
                    d2 += this.g[i4] * this.g[i4];
                }
                double dSqrt = Math.sqrt(d2);
                if (this.g[i2] > 0.0d) {
                    dSqrt = -dSqrt;
                }
                double d3 = d2 - (this.g[i2] * dSqrt);
                this.g[i2] = this.g[i2] - dSqrt;
                for (int i5 = i2; i5 < this.a; i5++) {
                    double d4 = 0.0d;
                    for (int i6 = i; i6 >= i2; i6--) {
                        d4 += this.g[i6] * this.f[i6][i5];
                    }
                    double d5 = d4 / d3;
                    for (int i7 = i2; i7 <= i; i7++) {
                        double[] dArr = this.f[i7];
                        dArr[i5] = dArr[i5] - (this.g[i7] * d5);
                    }
                }
                for (int i8 = 0; i8 <= i; i8++) {
                    double d6 = 0.0d;
                    for (int i9 = i; i9 >= i2; i9--) {
                        d6 += this.g[i9] * this.f[i8][i9];
                    }
                    double d7 = d6 / d3;
                    for (int i10 = i2; i10 <= i; i10++) {
                        double[] dArr2 = this.f[i8];
                        dArr2[i10] = dArr2[i10] - (this.g[i10] * d7);
                    }
                }
                this.g[i2] = this.g[i2] * d;
                this.f[i2][i2 - 1] = dSqrt * d;
            }
        }
        int i11 = 0;
        while (i11 < this.a) {
            int i12 = 0;
            while (i12 < this.a) {
                this.e[i11][i12] = i11 == i12 ? 1.0d : 0.0d;
                i12++;
            }
            i11++;
        }
        for (int i13 = i - 1; i13 >= 1; i13--) {
            if (this.f[i13][i13 - 1] != 0.0d) {
                for (int i14 = i13 + 1; i14 <= i; i14++) {
                    this.g[i14] = this.f[i14][i13 - 1];
                }
                for (int i15 = i13; i15 <= i; i15++) {
                    double d8 = 0.0d;
                    for (int i16 = i13; i16 <= i; i16++) {
                        d8 += this.g[i16] * this.e[i16][i15];
                    }
                    double d9 = (d8 / this.g[i13]) / this.f[i13][i13 - 1];
                    for (int i17 = i13; i17 <= i; i17++) {
                        double[] dArr3 = this.e[i17];
                        dArr3[i15] = dArr3[i15] + (this.g[i17] * d9);
                    }
                }
            }
        }
    }

    private void a(double d, double d2, double d3, double d4) {
        if (Math.abs(d3) > Math.abs(d4)) {
            double d5 = d4 / d3;
            double d6 = (d5 * d4) + d3;
            this.h = ((d5 * d2) + d) / d6;
            this.i = (d2 - (d5 * d)) / d6;
            return;
        }
        double d7 = d3 / d4;
        double d8 = (d7 * d3) + d4;
        this.h = ((d7 * d) + d2) / d8;
        this.i = ((d7 * d2) - d) / d8;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0bbf  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0be1 A[PHI: r2
  0x0be1: PHI (r2v136 double) = (r2v135 double), (r2v188 double) binds: [B:74:0x036e, B:76:0x037c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            Method dump skipped, instruction units count: 3059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Math.Decompositions.EigenvalueDecomposition.d():void");
    }

    public double[][] getV() {
        return Matrix.SubMatrix(this.e, this.a, this.a);
    }

    public double[] getRealEigenvalues() {
        return this.c;
    }

    public double[] getImagEigenvalues() {
        return this.d;
    }

    public double[][] getD() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.a, this.a);
        for (int i = 0; i < this.a; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                dArr[i][i2] = 0.0d;
            }
            dArr[i][i] = this.c[i];
            if (this.d[i] > 0.0d) {
                dArr[i][i + 1] = this.d[i];
            } else if (this.d[i] < 0.0d) {
                dArr[i][i - 1] = this.d[i];
            }
        }
        return dArr;
    }
}
