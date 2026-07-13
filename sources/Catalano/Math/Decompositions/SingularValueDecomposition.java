package Catalano.Math.Decompositions;

import Catalano.Math.Matrix;
import Catalano.Math.Tools;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class SingularValueDecomposition implements Serializable {
    boolean a;
    boolean b;
    private double[][] c;
    private double[][] d;
    private double[] e;
    private int f;
    private int g;

    public boolean isWantU() {
        return this.a;
    }

    public void setWantU(boolean z) {
        this.a = z;
    }

    public boolean isWantV() {
        return this.b;
    }

    public void setWantV(boolean z) {
        this.b = z;
    }

    public SingularValueDecomposition(double[][] dArr, boolean z, boolean z2) {
        this.a = true;
        this.b = true;
        this.a = z;
        this.b = z2;
        a(dArr);
    }

    public SingularValueDecomposition(double[][] dArr) {
        this.a = true;
        this.b = true;
        a(dArr);
    }

    private void a(double[][] dArr) {
        char c;
        int i;
        int i2;
        int i3;
        if (dArr.length == 0 && dArr[0].length == 0) {
            throw new IllegalArgumentException("Matrix does not have any rows or columns.");
        }
        double[][] dArrCopy = Matrix.Copy(dArr);
        this.f = dArr.length;
        this.g = dArr[0].length;
        int iMin = Math.min(this.f, this.g);
        this.e = new double[Math.min(this.f + 1, this.g)];
        this.c = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f, iMin);
        this.d = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.g, this.g);
        double[] dArr2 = new double[this.g];
        double[] dArr3 = new double[this.f];
        int iMin2 = Math.min(this.f - 1, this.g);
        int iMax = Math.max(0, Math.min(this.g - 2, this.f));
        int i4 = 0;
        while (i4 < Math.max(iMin2, iMax)) {
            if (i4 < iMin2) {
                this.e[i4] = 0.0d;
                for (int i5 = i4; i5 < this.f; i5++) {
                    this.e[i4] = Tools.Hypotenuse(this.e[i4], dArrCopy[i5][i4]);
                }
                if (this.e[i4] != 0.0d) {
                    if (dArrCopy[i4][i4] < 0.0d) {
                        this.e[i4] = -this.e[i4];
                    }
                    for (int i6 = i4; i6 < this.f; i6++) {
                        double[] dArr4 = dArrCopy[i6];
                        dArr4[i4] = dArr4[i4] / this.e[i4];
                    }
                    double[] dArr5 = dArrCopy[i4];
                    dArr5[i4] = dArr5[i4] + 1.0d;
                }
                this.e[i4] = -this.e[i4];
            }
            for (int i7 = i4 + 1; i7 < this.g; i7++) {
                if (i4 < iMin2 && this.e[i4] != 0.0d) {
                    double d = 0.0d;
                    for (int i8 = i4; i8 < this.f; i8++) {
                        d += dArrCopy[i8][i4] * dArrCopy[i8][i7];
                    }
                    double d2 = (-d) / dArrCopy[i4][i4];
                    for (int i9 = i4; i9 < this.f; i9++) {
                        double[] dArr6 = dArrCopy[i9];
                        dArr6[i7] = dArr6[i7] + (dArrCopy[i9][i4] * d2);
                    }
                }
                dArr2[i7] = dArrCopy[i4][i7];
            }
            if ((i4 < iMin2) & this.a) {
                for (int i10 = i4; i10 < this.f; i10++) {
                    this.c[i10][i4] = dArrCopy[i10][i4];
                }
            }
            if (i4 < iMax) {
                dArr2[i4] = 0.0d;
                for (int i11 = i4 + 1; i11 < this.g; i11++) {
                    dArr2[i4] = Tools.Hypotenuse(dArr2[i4], dArr2[i11]);
                }
                if (dArr2[i4] != 0.0d) {
                    if (dArr2[i4 + 1] < 0.0d) {
                        dArr2[i4] = -dArr2[i4];
                    }
                    for (int i12 = i4 + 1; i12 < this.g; i12++) {
                        dArr2[i12] = dArr2[i12] / dArr2[i4];
                    }
                    int i13 = i4 + 1;
                    dArr2[i13] = dArr2[i13] + 1.0d;
                }
                dArr2[i4] = -dArr2[i4];
                if ((i4 + 1 < this.f) & (dArr2[i4] != 0.0d)) {
                    for (int i14 = i4 + 1; i14 < this.f; i14++) {
                        dArr3[i14] = 0.0d;
                    }
                    for (int i15 = i4 + 1; i15 < this.g; i15++) {
                        for (int i16 = i4 + 1; i16 < this.f; i16++) {
                            dArr3[i16] = dArr3[i16] + (dArr2[i15] * dArrCopy[i16][i15]);
                        }
                    }
                    for (int i17 = i4 + 1; i17 < this.g; i17++) {
                        double d3 = (-dArr2[i17]) / dArr2[i4 + 1];
                        for (int i18 = i4 + 1; i18 < this.f; i18++) {
                            double[] dArr7 = dArrCopy[i18];
                            dArr7[i17] = dArr7[i17] + (dArr3[i18] * d3);
                        }
                    }
                }
                if (this.b) {
                    for (int i19 = i4 + 1; i19 < this.g; i19++) {
                        this.d[i19][i4] = dArr2[i19];
                    }
                }
            }
            i4++;
        }
        int iMin3 = Math.min(this.g, this.f + 1);
        if (iMin2 < this.g) {
            this.e[iMin2] = dArrCopy[iMin2][iMin2];
        }
        if (this.f < iMin3) {
            this.e[iMin3 - 1] = 0.0d;
        }
        if (iMax + 1 < iMin3) {
            dArr2[iMax] = dArrCopy[iMax][iMin3 - 1];
        }
        dArr2[iMin3 - 1] = 0.0d;
        if (this.a) {
            for (int i20 = iMin2; i20 < iMin; i20++) {
                for (int i21 = 0; i21 < this.f; i21++) {
                    this.c[i21][i20] = 0.0d;
                }
                this.c[i20][i20] = 1.0d;
            }
            for (int i22 = iMin2 - 1; i22 >= 0; i22--) {
                if (this.e[i22] != 0.0d) {
                    for (int i23 = i22 + 1; i23 < iMin; i23++) {
                        double d4 = 0.0d;
                        for (int i24 = i22; i24 < this.f; i24++) {
                            d4 += this.c[i24][i22] * this.c[i24][i23];
                        }
                        double d5 = (-d4) / this.c[i22][i22];
                        for (int i25 = i22; i25 < this.f; i25++) {
                            double[] dArr8 = this.c[i25];
                            dArr8[i23] = dArr8[i23] + (this.c[i25][i22] * d5);
                        }
                    }
                    for (int i26 = i22; i26 < this.f; i26++) {
                        this.c[i26][i22] = -this.c[i26][i22];
                    }
                    this.c[i22][i22] = 1.0d + this.c[i22][i22];
                    for (int i27 = 0; i27 < i22 - 1; i27++) {
                        this.c[i27][i22] = 0.0d;
                    }
                } else {
                    for (int i28 = 0; i28 < this.f; i28++) {
                        this.c[i28][i22] = 0.0d;
                    }
                    this.c[i22][i22] = 1.0d;
                }
            }
        }
        if (this.b) {
            int i29 = this.g - 1;
            while (i29 >= 0) {
                if ((i29 < iMax) & (dArr2[i29] != 0.0d)) {
                    for (int i30 = i29 + 1; i30 < iMin; i30++) {
                        double d6 = 0.0d;
                        for (int i31 = i29 + 1; i31 < this.g; i31++) {
                            d6 += this.d[i31][i29] * this.d[i31][i30];
                        }
                        double d7 = (-d6) / this.d[i29 + 1][i29];
                        for (int i32 = i29 + 1; i32 < this.g; i32++) {
                            double[] dArr9 = this.d[i32];
                            dArr9[i30] = dArr9[i30] + (this.d[i32][i29] * d7);
                        }
                    }
                }
                for (int i33 = 0; i33 < this.g; i33++) {
                    this.d[i33][i29] = 0.0d;
                }
                this.d[i29][i29] = 1.0d;
                i29--;
            }
        }
        int i34 = iMin3 - 1;
        int i35 = 0;
        double dPow = Math.pow(2.0d, -52.0d);
        double dPow2 = Math.pow(2.0d, -966.0d);
        while (iMin3 > 0) {
            int i36 = iMin3 - 2;
            while (true) {
                if (i36 >= -1 && i36 != -1) {
                    if (Math.abs(dArr2[i36]) <= ((Math.abs(this.e[i36]) + Math.abs(this.e[i36 + 1])) * dPow) + dPow2) {
                        dArr2[i36] = 0.0d;
                    } else {
                        i36--;
                    }
                }
            }
            if (i36 == iMin3 - 2) {
                c = 4;
                i = i36;
            } else {
                int i37 = iMin3 - 1;
                while (true) {
                    if (i37 >= i36 && i37 != i36) {
                        if (Math.abs(this.e[i37]) <= (((i37 != i36 + 1 ? Math.abs(dArr2[i37 - 1]) : 0.0d) + (i37 != iMin3 ? Math.abs(dArr2[i37]) : 0.0d)) * dPow) + dPow2) {
                            this.e[i37] = 0.0d;
                        } else {
                            i37--;
                        }
                    }
                }
                if (i37 == i36) {
                    c = 3;
                    i = i36;
                } else if (i37 == iMin3 - 1) {
                    c = 1;
                    i = i36;
                } else {
                    c = 2;
                    i = i37;
                }
            }
            int i38 = i + 1;
            switch (c) {
                case 1:
                    double d8 = dArr2[iMin3 - 2];
                    dArr2[iMin3 - 2] = 0.0d;
                    double d9 = d8;
                    for (int i39 = iMin3 - 2; i39 >= i38; i39--) {
                        double dHypotenuse = Tools.Hypotenuse(this.e[i39], d9);
                        double d10 = this.e[i39] / dHypotenuse;
                        double d11 = d9 / dHypotenuse;
                        this.e[i39] = dHypotenuse;
                        if (i39 != i38) {
                            d9 = (-d11) * dArr2[i39 - 1];
                            dArr2[i39 - 1] = dArr2[i39 - 1] * d10;
                        }
                        if (this.b) {
                            for (int i40 = 0; i40 < this.g; i40++) {
                                double d12 = (this.d[i40][i39] * d10) + (this.d[i40][iMin3 - 1] * d11);
                                this.d[i40][iMin3 - 1] = ((-d11) * this.d[i40][i39]) + (this.d[i40][iMin3 - 1] * d10);
                                this.d[i40][i39] = d12;
                            }
                        }
                    }
                    i2 = i35;
                    i3 = iMin3;
                    break;
                case 2:
                    double d13 = dArr2[i38 - 1];
                    dArr2[i38 - 1] = 0.0d;
                    double d14 = d13;
                    for (int i41 = i38; i41 < iMin3; i41++) {
                        double dHypotenuse2 = Tools.Hypotenuse(this.e[i41], d14);
                        double d15 = this.e[i41] / dHypotenuse2;
                        double d16 = d14 / dHypotenuse2;
                        this.e[i41] = dHypotenuse2;
                        d14 = (-d16) * dArr2[i41];
                        dArr2[i41] = dArr2[i41] * d15;
                        if (this.a) {
                            for (int i42 = 0; i42 < this.f; i42++) {
                                double d17 = (this.c[i42][i41] * d15) + (this.c[i42][i38 - 1] * d16);
                                this.c[i42][i38 - 1] = ((-d16) * this.c[i42][i41]) + (this.c[i42][i38 - 1] * d15);
                                this.c[i42][i41] = d17;
                            }
                        }
                    }
                    i2 = i35;
                    i3 = iMin3;
                    break;
                case 3:
                    double dMax = Math.max(Math.max(Math.max(Math.max(Math.abs(this.e[iMin3 - 1]), Math.abs(this.e[iMin3 - 2])), Math.abs(dArr2[iMin3 - 2])), Math.abs(this.e[i38])), Math.abs(dArr2[i38]));
                    double d18 = this.e[iMin3 - 1] / dMax;
                    double d19 = this.e[iMin3 - 2] / dMax;
                    double d20 = dArr2[iMin3 - 2] / dMax;
                    double d21 = this.e[i38] / dMax;
                    double d22 = dArr2[i38] / dMax;
                    double d23 = (((d19 + d18) * (d19 - d18)) + (d20 * d20)) / 2.0d;
                    double d24 = d18 * d20 * d18 * d20;
                    double d25 = 0.0d;
                    if ((d24 != 0.0d) | (d23 != 0.0d)) {
                        double dSqrt = Math.sqrt((d23 * d23) + d24);
                        if (d23 < 0.0d) {
                            dSqrt = -dSqrt;
                        }
                        d25 = d24 / (dSqrt + d23);
                    }
                    double d26 = ((d21 + d18) * (d21 - d18)) + d25;
                    double d27 = d21 * d22;
                    for (int i43 = i38; i43 < iMin3 - 1; i43++) {
                        double dHypotenuse3 = Tools.Hypotenuse(d26, d27);
                        double d28 = d26 / dHypotenuse3;
                        double d29 = d27 / dHypotenuse3;
                        if (i43 != i38) {
                            dArr2[i43 - 1] = dHypotenuse3;
                        }
                        double d30 = (this.e[i43] * d28) + (dArr2[i43] * d29);
                        dArr2[i43] = (dArr2[i43] * d28) - (this.e[i43] * d29);
                        double d31 = this.e[i43 + 1] * d29;
                        this.e[i43 + 1] = this.e[i43 + 1] * d28;
                        if (this.b) {
                            for (int i44 = 0; i44 < this.g; i44++) {
                                double d32 = (this.d[i44][i43] * d28) + (this.d[i44][i43 + 1] * d29);
                                this.d[i44][i43 + 1] = ((-d29) * this.d[i44][i43]) + (this.d[i44][i43 + 1] * d28);
                                this.d[i44][i43] = d32;
                            }
                        }
                        double dHypotenuse4 = Tools.Hypotenuse(d30, d31);
                        double d33 = d30 / dHypotenuse4;
                        double d34 = d31 / dHypotenuse4;
                        this.e[i43] = dHypotenuse4;
                        d26 = (this.e[i43 + 1] * d34) + (dArr2[i43] * d33);
                        this.e[i43 + 1] = ((-d34) * dArr2[i43]) + (this.e[i43 + 1] * d33);
                        d27 = dArr2[i43 + 1] * d34;
                        dArr2[i43 + 1] = dArr2[i43 + 1] * d33;
                        if (this.a && i43 < this.f - 1) {
                            for (int i45 = 0; i45 < this.f; i45++) {
                                double d35 = (this.c[i45][i43] * d33) + (this.c[i45][i43 + 1] * d34);
                                this.c[i45][i43 + 1] = ((-d34) * this.c[i45][i43]) + (this.c[i45][i43 + 1] * d33);
                                this.c[i45][i43] = d35;
                            }
                        }
                    }
                    dArr2[iMin3 - 2] = d26;
                    i2 = i35 + 1;
                    i3 = iMin3;
                    break;
                case 4:
                    if (this.e[i38] <= 0.0d) {
                        this.e[i38] = this.e[i38] < 0.0d ? -this.e[i38] : 0.0d;
                        if (this.b) {
                            for (int i46 = 0; i46 <= i34; i46++) {
                                this.d[i46][i38] = -this.d[i46][i38];
                            }
                        }
                    }
                    for (int i47 = i38; i47 < i34 && this.e[i47] < this.e[i47 + 1]; i47++) {
                        double d36 = this.e[i47];
                        this.e[i47] = this.e[i47 + 1];
                        this.e[i47 + 1] = d36;
                        if (this.b && i47 < this.g - 1) {
                            for (int i48 = 0; i48 < this.g; i48++) {
                                double d37 = this.d[i48][i47 + 1];
                                this.d[i48][i47 + 1] = this.d[i48][i47];
                                this.d[i48][i47] = -d37;
                            }
                        }
                        if (this.a && i47 < this.f - 1) {
                            for (int i49 = 0; i49 < this.f; i49++) {
                                double d38 = this.c[i49][i47 + 1];
                                this.c[i49][i47 + 1] = this.c[i49][i47];
                                this.c[i49][i47] = d38;
                            }
                        }
                    }
                    i2 = 0;
                    i3 = iMin3 - 1;
                    break;
                default:
                    i2 = i35;
                    i3 = iMin3;
                    break;
            }
            i35 = i2;
            iMin3 = i3;
        }
    }

    public double[][] getU() {
        return this.c;
    }

    public double[][] getV() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.g, this.g);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr[i][i2] = this.d[i][i2];
            }
        }
        return dArr;
    }

    public double[] getSingularValues() {
        return this.e;
    }

    public double[][] getS() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.g, this.g);
        for (int i = 0; i < this.g; i++) {
            for (int i2 = 0; i2 < this.g; i2++) {
                dArr[i][i2] = 0.0d;
            }
            dArr[i][i] = this.e[i];
        }
        return dArr;
    }

    public double norm2() {
        return this.e[0];
    }

    public double cond() {
        return this.e[0] / this.e[Math.min(this.f, this.g) - 1];
    }

    public int rank() {
        double dPow = Math.pow(2.0d, -52.0d) * ((double) Math.max(this.f, this.g)) * this.e[0];
        int i = 0;
        for (int i2 = 0; i2 < this.e.length; i2++) {
            if (this.e[i2] > dPow) {
                i++;
            }
        }
        return i;
    }

    public double threshold() {
        return 1.1102230246251565E-16d * ((double) Math.max(this.f, this.g)) * this.e[0];
    }

    public double[][] inverse() {
        double dThreshold = threshold();
        int length = this.d.length;
        int length2 = this.d[0].length;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, this.e.length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                if (Math.abs(this.e[i2]) > dThreshold) {
                    dArr[i][i2] = this.d[i][i2] / this.e[i2];
                }
            }
        }
        int length3 = this.c.length;
        int length4 = this.c[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length3);
        for (int i3 = 0; i3 < length; i3++) {
            for (int i4 = 0; i4 < length3; i4++) {
                double d = 0.0d;
                for (int i5 = 0; i5 < length4; i5++) {
                    d += dArr[i3][i5] * this.c[i4][i5];
                }
                dArr2[i3][i4] = d;
            }
        }
        return dArr2;
    }
}
