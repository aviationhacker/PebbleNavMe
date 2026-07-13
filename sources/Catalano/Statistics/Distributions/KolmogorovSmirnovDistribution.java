package Catalano.Statistics.Distributions;

import Catalano.Math.Matrix;
import Catalano.Math.Special;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class KolmogorovSmirnovDistribution implements IDistribution {
    private static int a;
    private int b;

    public int getNumberOfSamples() {
        return this.b;
    }

    public void setNumberOfSamples(int i) {
        this.b = i;
    }

    public KolmogorovSmirnovDistribution(int i) {
        this.b = i;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return 0.8687311606361592d / Math.sqrt(this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return (0.8224670334241132d - (Mean() * Mean())) / ((double) this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return CumulativeFunction(this.b, d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        throw new UnsupportedOperationException("Not supported.");
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        throw new UnsupportedOperationException("Not supported.");
    }

    public double ComplementaryDistributionFunction(double d) {
        return ComplementaryDistributionFunction(this.b, d);
    }

    public double OneSideDistributionFunction(double d) {
        return OneSideUpperTail(this.b, d);
    }

    public static double CumulativeFunction(int i, double d) {
        double d2 = ((double) i) * d * d;
        if (d >= 1.0d || d2 >= 18.0d) {
            return 1.0d;
        }
        if (d <= 0.5d / ((double) i)) {
            return 0.0d;
        }
        if (i == 1) {
            return (2.0d * d) - 1.0d;
        }
        if (d <= 1.0d / ((double) i)) {
            if (i <= 20) {
                return Math.pow((2.0d * d) - (1.0d / ((double) i)), i) * Special.Factorial(i);
            }
            return Math.exp((Math.log((2.0d * d) - (1.0d / ((double) i))) * ((double) i)) + Special.LogFactorial(i));
        }
        if (d >= 1.0d - (1.0d / ((double) i))) {
            return 1.0d - (Math.pow(1.0d - d, i) * 2.0d);
        }
        if (i <= 140) {
            if (d2 < 0.754693d) {
                return Durbin(i, d);
            }
            if (d2 < 4.0d) {
                return Pomeranz(i, d);
            }
            return 1.0d - ComplementaryDistributionFunction(i, d);
        }
        if (i > 100000) {
            return PelzGood(i, d);
        }
        if (((double) i) * d2 * d <= 1.96d) {
            return Durbin(i, d);
        }
        return PelzGood(i, d);
    }

    public static double ComplementaryDistributionFunction(int i, double d) {
        double d2 = ((double) i) * d * d;
        if (d >= 1.0d || d2 >= 370.0d) {
            return 0.0d;
        }
        if (d <= 0.5d / ((double) i) || d2 <= 0.0274d) {
            return 1.0d;
        }
        if (i == 1) {
            return 2.0d - (2.0d * d);
        }
        if (d <= 1.0d / ((double) i)) {
            return i <= 20 ? 1.0d - (Special.Factorial(i) * Math.pow((2.0d * d) - (1.0d / ((double) i)), i)) : 1.0d - Math.exp(Special.LogFactorial(i) + (((double) i) * Math.log((2.0d * d) - (1.0d / ((double) i)))));
        }
        if (d >= 1.0d - (1.0d / ((double) i))) {
            return Math.pow(1.0d - d, i) * 2.0d;
        }
        if (i <= 140) {
            if (d2 >= 4.0d) {
                return OneSideUpperTail(i, d) * 2.0d;
            }
            return 1.0d - CumulativeFunction(i, d);
        }
        if (d2 >= 2.2d) {
            return OneSideUpperTail(i, d) * 2.0d;
        }
        return 1.0d - CumulativeFunction(i, d);
    }

    public static double PelzGood(int i, double d) {
        double dSqrt = Math.sqrt(i);
        double d2 = dSqrt * d;
        double d3 = d2 * d2;
        double d4 = d3 * d2;
        double d5 = d3 * d3;
        double d6 = d5 * d2;
        double d7 = d5 * d3;
        double d8 = d5 * d4;
        double d9 = d5 * d5;
        double d10 = d9 * d3;
        double d11 = (-9.869604401089358d) / (2.0d * d3);
        double d12 = 0.0d;
        for (int i2 = 0; i2 <= 20; i2++) {
            double d13 = ((double) i2) + 0.5d;
            double dExp = Math.exp(d13 * d13 * d11);
            d12 += dExp;
            if (dExp <= 1.0E-10d * d12) {
                break;
            }
        }
        double d14 = 0.0d;
        for (int i3 = 0; i3 <= 20; i3++) {
            double d15 = (((double) i3) + 0.5d) * (((double) i3) + 0.5d);
            double dExp2 = Math.exp(d15 * d11) * ((9.869604401089358d * d15) - d3);
            d14 += dExp2;
            if (Math.abs(dExp2) <= 1.0E-10d * Math.abs(d14)) {
                break;
            }
        }
        double d16 = 0.0d;
        for (int i4 = 0; i4 <= 20; i4++) {
            double d17 = (((double) i4) + 0.5d) * (((double) i4) + 0.5d);
            double dExp3 = Math.exp(d17 * d11) * ((6.0d * d7) + (2.0d * d5) + (9.869604401089358d * ((2.0d * d5) - (5.0d * d3)) * d17) + (97.40909103400243d * (1.0d - (2.0d * d3)) * d17 * d17));
            d16 += dExp3;
            if (Math.abs(dExp3) <= 1.0E-10d * Math.abs(d16)) {
                break;
            }
        }
        double d18 = 0.0d;
        for (int i5 = 1; i5 <= 20; i5++) {
            double d19 = i5 * i5;
            double dExp4 = Math.exp(d19 * d11) * 9.869604401089358d * d19;
            d18 += dExp4;
            if (dExp4 <= 1.0E-10d * d18) {
                break;
            }
        }
        double d20 = 0.0d;
        for (int i6 = 0; i6 <= 20; i6++) {
            double d21 = (((double) i6) + 0.5d) * (((double) i6) + 0.5d);
            double dExp5 = Math.exp(d21 * d11) * ((((-30.0d) * d7) - (90.0d * d9)) + (9.869604401089358d * ((135.0d * d5) - (96.0d * d7)) * d21) + (97.40909103400243d * ((212.0d * d5) - (60.0d * d3)) * d21 * d21) + (961.3891935753043d * d21 * d21 * d21 * (5.0d - (30.0d * d3))));
            d20 += dExp5;
            if (Math.abs(dExp5) <= 1.0E-10d * Math.abs(d20)) {
                break;
            }
        }
        double d22 = 0.0d;
        for (int i7 = 1; i7 <= 20; i7++) {
            double d23 = i7 * i7;
            double dExp6 = Math.exp(d23 * d11) * (((29.608813203268074d * d23) * d3) - ((97.40909103400243d * d23) * d23));
            d22 += dExp6;
            if (Math.abs(dExp6) <= 1.0E-10d * Math.abs(d22)) {
                break;
            }
        }
        return ((((d12 * (2.5066282746310007d / d2)) + (d14 * (1.2533141373155003d / ((3.0d * dSqrt) * d5)))) + ((1.2533141373155003d / ((((double) i) * 36.0d) * d8)) * d16)) - ((1.2533141373155003d / ((((double) i) * 18.0d) * d4)) * d18)) + ((1.2533141373155003d / (((((double) i) * dSqrt) * 3240.0d) * d10)) * d20) + ((1.2533141373155003d / (((((double) i) * dSqrt) * 108.0d) * d7)) * d22);
    }

    public static double OneSideUpperTail(int i, double d) {
        if (i > 200000) {
            double d2 = (((double) (i * 6)) * d) + 1.0d;
            double d3 = (d2 * d2) / ((double) (i * 18));
            double dExp = Math.exp(-d3) * (1.0d - (((((2.0d * d3) * d3) - (4.0d * d3)) - 1.0d) / ((double) (i * 18))));
            if (dExp <= 0.0d) {
                return 0.0d;
            }
            if (dExp >= 1.0d) {
                return 1.0d;
            }
            return dExp * 1.0d;
        }
        int i2 = (int) (((double) i) * (1.0d - d));
        int i3 = (1.0d - d) - (((double) i2) / ((double) i)) <= 0.0d ? i2 - 1 : i2;
        int i4 = i > 3000 ? 2 : 3;
        int i5 = (i3 / i4) + 1;
        double dLogBinomial = Special.LogBinomial(i, i5);
        double d4 = 0.0d;
        double dLog = dLogBinomial;
        while (i5 <= i3) {
            double d5 = (((double) i5) / ((double) i)) + d;
            double dExp2 = Math.exp((Special.Log1p(-d5) * ((double) (i - i5))) + (((double) (i5 - 1)) * Math.log(d5)) + dLog);
            d4 += dExp2;
            dLog += Math.log(((double) (i - i5)) / ((double) (i5 + 1)));
            if (dExp2 <= d4 * 1.0E-12d) {
                break;
            }
            i5++;
        }
        int i6 = i3 / i4;
        double dLog2 = Math.log(((double) (i6 + 1)) / ((double) (i - i6))) + dLogBinomial;
        double d6 = d4;
        for (int i7 = i6; i7 > 0; i7--) {
            double d7 = (((double) i7) / ((double) i)) + d;
            double dExp3 = Math.exp((Special.Log1p(-d7) * ((double) (i - i7))) + (((double) (i7 - 1)) * Math.log(d7)) + dLog2);
            d6 += dExp3;
            dLog2 += Math.log(((double) i7) / ((double) ((i - i7) + 1)));
            if (dExp3 <= d6 * 1.0E-12d) {
                break;
            }
        }
        return (d6 * d) + Math.exp(((double) i) * Special.Log1p(-d));
    }

    public static double Pomeranz(int i, double d) {
        int i2;
        double dPow = Math.pow(2.0d, 350);
        double d2 = ((double) i) * d;
        double[] dArr = new double[(i * 2) + 3];
        double[] dArr2 = new double[(i * 2) + 3];
        double[] dArr3 = new double[(i * 2) + 3];
        double[][] dArr4 = new double[2][];
        for (int i3 = 0; i3 < dArr4.length; i3++) {
            dArr4[i3] = new double[i + 2];
        }
        double[][] dArr5 = new double[4][];
        for (int i4 = 0; i4 < dArr5.length; i4++) {
            dArr5[i4] = new double[i + 2];
        }
        a(i, dArr, a(d2, dArr2, dArr3));
        a(i, dArr, dArr5);
        dArr4[1][1] = dPow;
        int i5 = 1;
        int i6 = 2;
        int i7 = 1;
        int i8 = 0;
        while (i6 <= (i * 2) + 2) {
            int i9 = (int) (2.0d + dArr2[i6]);
            if (i9 < 1) {
                i9 = 1;
            }
            int i10 = (int) dArr3[i6];
            if (i10 > i + 1) {
                i10 = i + 1;
            }
            int i11 = (int) (2.0d + dArr2[i6 - 1]);
            if (i11 < 1) {
                i11 = 1;
            }
            int i12 = (int) dArr3[i6 - 1];
            double d3 = (dArr[i6] - dArr[i6 - 1]) / ((double) i);
            int i13 = 0;
            while (true) {
                if (i13 >= 4) {
                    i13 = -1;
                    break;
                }
                if (Math.abs(d3 - dArr5[i13][1]) <= 1.0E-15d) {
                    break;
                }
                i13++;
            }
            int i14 = (i8 + 1) & 1;
            int i15 = (i7 + 1) & 1;
            int i16 = i9;
            double d4 = dPow;
            while (i16 <= i10) {
                double d5 = 0.0d;
                for (int i17 = i12 > i16 ? i16 : i12; i17 >= i11; i17--) {
                    d5 += dArr4[i14][i17] * dArr5[i13][i16 - i17];
                }
                dArr4[i15][i16] = d5;
                if (d5 >= d4) {
                    d5 = d4;
                }
                i16++;
                d4 = d5;
            }
            if (d4 < 1.0E-280d) {
                while (i9 <= i10) {
                    double[] dArr6 = dArr4[i15];
                    dArr6[i9] = dArr6[i9] * dPow;
                    i9++;
                }
                i2 = i5 + 1;
            } else {
                i2 = i5;
            }
            i6++;
            i7 = i15;
            i8 = i14;
            i5 = i2;
        }
        double dLog = Math.log(dArr4[i7][i + 1]) + (Special.LogFactorial(i) - (((double) (i5 * 350)) * 0.6931471805599453d));
        if (dLog >= 0.0d) {
            return 1.0d;
        }
        return Math.exp(dLog);
    }

    public static double Durbin(int i, double d) {
        int i2 = ((int) (((double) i) * d)) + 1;
        int i3 = (i2 * 2) - 1;
        double d2 = ((double) i2) - (((double) i) * d);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i3, i3);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i3, i3);
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i3, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((i4 - i5) + 1 >= 0) {
                    dArr[i4][i5] = 1.0d;
                }
            }
        }
        for (int i6 = 0; i6 < i3; i6++) {
            double[] dArr4 = dArr[i6];
            dArr4[0] = dArr4[0] - Math.pow(d2, i6 + 1);
            double[] dArr5 = dArr[i3 - 1];
            dArr5[i6] = dArr5[i6] - Math.pow(d2, i3 - i6);
        }
        double[] dArr6 = dArr[i3 - 1];
        dArr6[0] = ((2.0d * d2) - 1.0d > 0.0d ? Math.pow((d2 * 2.0d) - 1.0d, i3) : 0.0d) + dArr6[0];
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i3; i8++) {
                if ((i7 - i8) + 1 > 0) {
                    for (int i9 = 1; i9 <= (i7 - i8) + 1; i9++) {
                        double[] dArr7 = dArr[i7];
                        dArr7[i8] = dArr7[i8] / ((double) i9);
                    }
                }
            }
        }
        a(dArr, 0, dArr2, i3, i, dArr3);
        double d3 = dArr2[i2 - 1][i2 - 1];
        int i10 = 0;
        for (int i11 = 1; i11 <= i; i11++) {
            d3 *= ((double) i11) / ((double) i);
            if (d3 < 1.0E-140d) {
                d3 *= 1.0E140d;
                i10 -= 140;
            }
        }
        return Math.pow(10.0d, i10) * d3;
    }

    private static void a(double[][] dArr, int i, double[][] dArr2, int i2, int i3, double[][] dArr3) {
        if (i3 == 1) {
            for (int i4 = 0; i4 < i2; i4++) {
                for (int i5 = 0; i5 < i2; i5++) {
                    dArr2[i4][i5] = dArr[i4][i5];
                }
            }
            a = i;
            return;
        }
        a(dArr, i, dArr2, i2, i3 / 2, dArr3);
        double[][] dArrMultiply = Matrix.Multiply(dArr2, dArr3);
        int i6 = a * 2;
        if (dArrMultiply[i2 / 2][i2 / 2] > 1.0E140d) {
            for (int i7 = 0; i7 < i2; i7++) {
                for (int i8 = 0; i8 < i2; i8++) {
                    double[] dArr4 = dArrMultiply[i7];
                    dArr4[i8] = dArr4[i8] * 1.0E-140d;
                }
            }
            i6 += 140;
        }
        if (i3 % 2 == 0) {
            for (int i9 = 0; i9 < i2; i9++) {
                for (int i10 = 0; i10 < i2; i10++) {
                    dArr2[i9][i10] = dArrMultiply[i9][i10];
                }
            }
            a = i6;
        } else {
            dArr2 = Matrix.Multiply(dArr, dArrMultiply);
            a = i6 + i;
        }
        if (dArr2[i2 / 2][i2 / 2] > 1.0E140d) {
            for (int i11 = 0; i11 < i2; i11++) {
                for (int i12 = 0; i12 < i2; i12++) {
                    double[] dArr5 = dArr2[i11];
                    dArr5[i12] = dArr5[i12] * 1.0E-140d;
                }
            }
            a += 140;
        }
    }

    private static double a(double d, double[] dArr, double[] dArr2) {
        int i = 2;
        int i2 = 1;
        double dFloor = Math.floor(d);
        double d2 = d - dFloor;
        double dCeil = Math.ceil(d) - d;
        if (d2 > 0.5d) {
            for (int i3 = 1; i3 < dArr.length; i3 += 2) {
                dArr[i3] = ((double) ((i3 / 2) - 1)) - dFloor;
            }
            for (int i4 = 2; i4 < dArr.length; i4 += 2) {
                dArr[i4] = ((double) ((i4 / 2) - 2)) - dFloor;
            }
            while (i2 < dArr2.length) {
                dArr2[i2] = ((double) ((i2 / 2) + 1)) + dFloor;
                i2 += 2;
            }
            while (i < dArr2.length) {
                dArr2[i] = ((double) (i / 2)) + dFloor;
                i += 2;
            }
        } else if (d2 > 0.0d) {
            dArr2[1] = 1.0d + dFloor;
            while (i2 < dArr.length) {
                dArr[i2] = ((double) ((i2 / 2) - 1)) - dFloor;
                i2++;
            }
            while (i < dArr2.length) {
                dArr2[i] = ((double) (i / 2)) + dFloor;
                i++;
            }
        } else {
            for (int i5 = 1; i5 < dArr.length; i5 += 2) {
                dArr[i5] = ((double) (i5 / 2)) - dFloor;
            }
            for (int i6 = 2; i6 < dArr.length; i6 += 2) {
                dArr[i6] = ((double) ((i6 / 2) - 1)) - dFloor;
            }
            while (i2 < dArr2.length) {
                dArr2[i2] = ((double) (i2 / 2)) + dFloor;
                i2 += 2;
            }
            while (i < dArr2.length) {
                dArr2[i] = ((double) ((i / 2) - 1)) + dFloor;
                i += 2;
            }
        }
        return dCeil < d2 ? dCeil : d2;
    }

    private static void a(int i, double[] dArr, double d) {
        dArr[0] = 0.0d;
        dArr[1] = 0.0d;
        dArr[2] = d;
        dArr[3] = 1.0d - d;
        for (int i2 = 4; i2 < dArr.length - 1; i2++) {
            dArr[i2] = dArr[i2 - 2] + 1.0d;
        }
        dArr[dArr.length - 1] = i;
    }

    private static double a(int i, double[] dArr, double[][] dArr2) {
        dArr2[0][0] = 1.0d;
        double d = (2.0d * dArr[2]) / ((double) i);
        for (int i2 = 1; i2 <= i + 1; i2++) {
            dArr2[0][i2] = (dArr2[0][i2 - 1] * d) / ((double) i2);
        }
        dArr2[1][0] = 1.0d;
        double d2 = (1.0d - (2.0d * dArr[2])) / ((double) i);
        for (int i3 = 1; i3 <= i + 1; i3++) {
            dArr2[1][i3] = (dArr2[1][i3 - 1] * d2) / ((double) i3);
        }
        dArr2[2][0] = 1.0d;
        double d3 = dArr[2] / ((double) i);
        for (int i4 = 1; i4 <= i + 1; i4++) {
            dArr2[2][i4] = (dArr2[2][i4 - 1] * d3) / ((double) i4);
        }
        dArr2[3][0] = 1.0d;
        for (int i5 = 1; i5 <= i + 1; i5++) {
            dArr2[3][i5] = 0.0d;
        }
        return d3;
    }
}
