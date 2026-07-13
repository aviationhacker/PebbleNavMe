package Catalano.Statistics;

import Catalano.Math.Matrix;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Tools {
    private Tools() {
    }

    public static double CoefficientOfVariation(double[] dArr) {
        double dMean = Mean(dArr);
        return Math.sqrt(Variance(dArr, dMean)) / dMean;
    }

    public static double[][] Correlation(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr[0].length, dArr[0].length);
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr2[0].length; i2++) {
                if (i == i2) {
                    dArr2[i][i2] = 1.0d;
                } else {
                    dArr2[i][i2] = Correlations.PearsonCorrelation(Matrix.getColumn(dArr, i), Matrix.getColumn(dArr, i2));
                }
            }
        }
        return dArr2;
    }

    public static double Covariance(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        if (dArr.length != dArr2.length) {
            throw new IllegalArgumentException("The size of both matrix needs be equal");
        }
        int i = 0;
        double d2 = 0.0d;
        while (i < dArr.length) {
            double d3 = dArr[i] + d;
            double d4 = dArr2[i] + d2;
            i++;
            d2 = d4;
            d = d3;
        }
        return Covariance(dArr, dArr2, d / ((double) dArr.length), d2 / ((double) dArr2.length));
    }

    public static double Covariance(double[] dArr, double[] dArr2, double d, double d2) {
        double d3 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d3 += (dArr[i] - d) * (dArr2[i] - d2);
        }
        return d3 / ((double) (dArr.length - 1));
    }

    public static double[][] Covariance(double[][] dArr) {
        double[] dArr2 = new double[dArr[0].length];
        for (double[] dArr3 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = dArr2[i] + dArr3[i];
            }
        }
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr2[i2] = dArr2[i2] / ((double) dArr2.length);
        }
        return Covariance(dArr, dArr2);
    }

    public static double[][] Covariance(double[][] dArr, double[] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr2.length, dArr2.length);
        for (int i = 0; i < dArr3.length; i++) {
            for (int i2 = 0; i2 < dArr3[0].length; i2++) {
                dArr3[i][i2] = Covariance(Matrix.getColumn(dArr, i), Matrix.getColumn(dArr, i2), dArr2[i], dArr2[i2]);
            }
        }
        return dArr3;
    }

    public static double Fisher(double d) {
        if (d <= -1.0d || d >= 1.0d) {
            throw new IllegalArgumentException("Fisher works with number between -1 < x < 1");
        }
        return Math.log((1.0d + d) / (1.0d - d)) * 0.5d;
    }

    public static double Inclination(double[] dArr, double[] dArr2) {
        double dPow = 0.0d;
        if (dArr.length != dArr2.length) {
            throw new IllegalArgumentException("The size of both matrix needs be equal");
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d2 += dArr[i];
            d += dArr2[i];
        }
        double length = d2 / ((double) dArr.length);
        double length2 = d / ((double) dArr2.length);
        double d3 = 0.0d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            d3 += (dArr[i2] - length) * (dArr2[i2] - length2);
            dPow += Math.pow(dArr[i2] - length, 2.0d);
        }
        return d3 / dPow;
    }

    public static double InverseFisher(double d) {
        if (d <= -1.0d || d >= 1.0d) {
            throw new IllegalArgumentException("Fisher works with number between -1 < x < 1");
        }
        return (Math.pow(2.718281828459045d, 2.0d * d) - 1.0d) / (Math.pow(2.718281828459045d, 2.0d * d) + 1.0d);
    }

    public static double Interception(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        if (dArr.length != dArr2.length) {
            throw new IllegalArgumentException("The size of both matrix needs be equal");
        }
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d2 += dArr[i];
            d += dArr2[i];
        }
        return (d / ((double) dArr2.length)) - ((d2 / ((double) dArr.length)) * Inclination(dArr, dArr2));
    }

    public static double Max(double[] dArr) {
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (dArr[i] > d) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static double Mean(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += d2;
        }
        return d / ((double) dArr.length);
    }

    public static double Min(double[] dArr) {
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (dArr[i] < d) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static double GeometricMean(double[] dArr) {
        double d = 1.0d;
        for (double d2 : dArr) {
            d *= d2;
        }
        return Math.pow(d, 1.0d / ((double) dArr.length));
    }

    public static double HarmonicMean(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += 1.0d / d2;
        }
        return ((double) dArr.length) / d;
    }

    public static double ContraHarmonicMean(double[] dArr, int i) {
        double dPow = 0.0d;
        double dPow2 = 0.0d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dPow2 += Math.pow(dArr[i2], i + 1);
            dPow += Math.pow(dArr[i2], i);
        }
        return dPow2 / dPow;
    }

    public static double Sum(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += d2;
        }
        return d;
    }

    public static double Variance(double[] dArr) {
        return Variance(dArr, Mean(dArr));
    }

    public static double Variance(double[] dArr, double d) {
        double dPow = 0.0d;
        for (double d2 : dArr) {
            dPow += Math.pow(d2 - d, 2.0d);
        }
        return dPow / (((double) dArr.length) - 1.0d);
    }

    public static double StandartDeviation(double[] dArr) {
        return Math.sqrt(Variance(dArr));
    }

    public static double StandartDeviation(double[] dArr, double d) {
        return Math.sqrt(Variance(dArr, d));
    }
}
