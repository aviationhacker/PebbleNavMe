package Catalano.Math.Distances;

import Catalano.Core.IntPoint;
import Catalano.Math.Matrix;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class Distance {
    private Distance() {
    }

    public static double ArithmeticGeometricDivergence(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d = dArr[i] * dArr2[i];
            if (d != 0.0d) {
                double d2 = dArr[i] + dArr2[i];
                dLog += Math.log(d2 / (Math.sqrt(d) * 2.0d)) * (d2 / 2.0d);
            }
        }
        return dLog;
    }

    public static double Bhattacharyya(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        double dSqrt = 0.0d;
        for (int i = 0; i < length; i++) {
            dSqrt += Math.sqrt(dArr[i]) * Math.sqrt(dArr2[i]);
        }
        return Math.sqrt(1.0d - dSqrt);
    }

    public static double BrayCurtis(double[] dArr, double[] dArr2) {
        double dAbs = 0.0d;
        double dAbs2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dAbs += Math.abs(dArr[i] - dArr2[i]);
            dAbs2 += Math.abs(dArr[i] + dArr2[i]);
        }
        return dAbs / dAbs2;
    }

    public static double BrayCurtis(double d, double d2, double d3, double d4) {
        return (Math.abs(d - d3) + Math.abs(d2 - d4)) / (Math.abs(d + d3) + Math.abs(d2 + d4));
    }

    public static double BrayCurtis(IntPoint intPoint, IntPoint intPoint2) {
        return BrayCurtis(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double Canberra(double[] dArr, double[] dArr2) {
        double dAbs = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dAbs += Math.abs(dArr[i] - dArr2[i]) / (Math.abs(dArr[i]) + Math.abs(dArr2[i]));
        }
        return dAbs;
    }

    public static double Canberra(double d, double d2, double d3, double d4) {
        return (Math.abs(d - d3) / (Math.abs(d) + Math.abs(d3))) + (Math.abs(d2 - d4) / (Math.abs(d2) + Math.abs(d4)));
    }

    public static double Canberra(IntPoint intPoint, IntPoint intPoint2) {
        return Canberra(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double Chebyshev(double[] dArr, double[] dArr2) {
        double dAbs = Math.abs(dArr[0] - dArr2[0]);
        for (int i = 1; i < dArr.length; i++) {
            double dAbs2 = Math.abs(dArr[i] - dArr2[i]);
            if (dAbs2 > dAbs) {
                dAbs = dAbs2;
            }
        }
        return dAbs;
    }

    public static double Chebyshev(double d, double d2, double d3, double d4) {
        return Math.max(Math.abs(d - d3), Math.abs(d2 - d4));
    }

    public static double Chebyshev(IntPoint intPoint, IntPoint intPoint2) {
        return Chebyshev(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double Chessboard(double[] dArr, double[] dArr2) {
        double dMax = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dMax = Math.max(dMax, dArr[i] - dArr2[i]);
        }
        return dMax;
    }

    public static double Chessboard(double d, double d2, double d3, double d4) {
        return Math.max(Math.abs(d - d3), Math.abs(d2 - d4));
    }

    public static double Chessboard(IntPoint intPoint, IntPoint intPoint2) {
        return Chessboard(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double ChiSquare(double[] dArr, double[] dArr2) {
        double dPow = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d = dArr[i] + dArr2[i];
            if (d != 0.0d) {
                dPow += Math.pow(dArr[i] - dArr2[i], 2.0d) / d;
            }
        }
        return 0.5d * dPow;
    }

    public static double Correlation(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += -dArr[i];
            d2 += -dArr2[i];
        }
        double length = d / ((double) dArr.length);
        double length2 = d2 / ((double) dArr2.length);
        double d3 = 0.0d;
        double dAbs = 0.0d;
        double dAbs2 = 0.0d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            d3 += (dArr[i2] + length) * (dArr2[i2] + length2);
            dAbs += Math.abs(Math.pow(dArr[i2] + length, 2.0d));
            dAbs2 += Math.abs(Math.pow(dArr2[i2] + length, 2.0d));
        }
        return 1.0d - (d3 / (Math.sqrt(dAbs2) * Math.sqrt(dAbs)));
    }

    public static double Cosine(double[] dArr, double[] dArr2) {
        double dPow = 0.0d;
        double dPow2 = 0.0d;
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
            dPow2 += Math.pow(Math.abs(dArr[i]), 2.0d);
            dPow += Math.pow(Math.abs(dArr2[i]), 2.0d);
        }
        return 1.0d - (d / (Math.sqrt(dPow2) * Math.sqrt(dPow)));
    }

    public static double Cosine(double d, double d2, double d3, double d4) {
        return 1.0d - (((d * d3) + (d2 * d4)) / (Math.sqrt(Math.pow(Math.abs(d), 2.0d) + Math.pow(Math.abs(d3), 2.0d)) * Math.sqrt(Math.pow(Math.abs(d2), 2.0d) + Math.pow(Math.abs(d4), 2.0d))));
    }

    public static double Cosine(IntPoint intPoint, IntPoint intPoint2) {
        return Cosine(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double Euclidean(double[] dArr, double[] dArr2) {
        return Math.sqrt(SquaredEuclidean(dArr, dArr2));
    }

    public static double Euclidean(double d, double d2, double d3, double d4) {
        double dAbs = Math.abs(d - d3);
        double dAbs2 = Math.abs(d2 - d4);
        return Math.sqrt((dAbs * dAbs) + (dAbs2 * dAbs2));
    }

    public static double Euclidean(IntPoint intPoint, IntPoint intPoint2) {
        return Euclidean(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static int Hamming(String str, String str2) {
        if (str.length() != str2.length()) {
            throw new IllegalArgumentException("The size of string must be the same.");
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) != str2.charAt(i2)) {
                i++;
            }
        }
        return i;
    }

    public static double JaccardDistance(double[] dArr, double[] dArr2) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (dArr[i3] != 0.0d || dArr2[i3] != 0.0d) {
                if (dArr[i3] == dArr2[i3]) {
                    i2++;
                }
                i++;
            }
        }
        if (i != 0) {
            return 1.0d - (((double) i2) / ((double) i));
        }
        return 0.0d;
    }

    public static double JDivergence(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        boolean z = false;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                z = true;
                dLog += (dArr[i] - dArr2[i]) * Math.log(dArr[i] / dArr2[i]);
            }
        }
        if (z) {
            return dLog;
        }
        return Double.POSITIVE_INFINITY;
    }

    public static double JensenDifferenceDivergence(double[] dArr, double[] dArr2) {
        boolean z = false;
        double dLog = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                z = true;
                double d = dArr[i] + dArr2[i];
                dLog += (((dArr[i] * Math.log(dArr[i])) + (dArr2[i] * Math.log(dArr2[i]))) / 2.0d) - (Math.log(d / 2.0d) * (d / 2.0d));
            }
        }
        if (z) {
            return dLog;
        }
        return Double.POSITIVE_INFINITY;
    }

    public static double JensenShannonDivergence(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length];
        for (int i = 0; i < dArr3.length; i++) {
            dArr3[i] = (dArr[i] + dArr2[i]) / 2.0d;
        }
        return (KullbackLeiblerDivergence(dArr2, dArr3) + KullbackLeiblerDivergence(dArr, dArr3)) / 2.0d;
    }

    public static double KDivergence(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d = dArr[i] + dArr2[i];
            if (d != 0.0d && dArr[i] != 0.0d) {
                dLog += Math.log((2.0d * dArr[i]) / d) * dArr[i];
            }
        }
        return dLog;
    }

    public static double KumarJohnsonDivergence(double[] dArr, double[] dArr2) {
        double dPow = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                dPow += (Math.pow((dArr[i] * dArr[i]) - (dArr2[i] * dArr2[i]), 2.0d) / 2.0d) * Math.pow(dArr[i] * dArr2[i], 1.5d);
            }
        }
        return dPow;
    }

    public static double KullbackLeiblerDivergence(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        boolean z = false;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                z = true;
                dLog += dArr[i] * Math.log(dArr[i] / dArr2[i]);
            }
        }
        if (z) {
            return dLog;
        }
        return Double.POSITIVE_INFINITY;
    }

    public static double Mahalanobis(double[][] dArr, double[][] dArr2) {
        if (dArr[0].length != dArr2[0].length) {
            throw new IllegalArgumentException("The number of columns of both matrix must be equals.");
        }
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr2.length, dArr2[0].length);
        double[] dArr5 = new double[dArr[0].length];
        for (int i = 0; i < dArr[0].length; i++) {
            for (double[] dArr6 : dArr) {
                dArr5[i] = dArr5[i] + dArr6[i];
            }
            dArr5[i] = dArr5[i] / ((double) dArr.length);
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dArr3[i2][i] = dArr[i2][i] - dArr5[i];
            }
        }
        double[] dArr7 = new double[dArr2[0].length];
        for (int i3 = 0; i3 < dArr2[0].length; i3++) {
            for (double[] dArr8 : dArr2) {
                dArr7[i3] = dArr7[i3] + dArr8[i3];
            }
            dArr7[i3] = dArr7[i3] / ((double) dArr2.length);
            for (int i4 = 0; i4 < dArr2.length; i4++) {
                dArr4[i4][i3] = dArr2[i4][i3] - dArr7[i3];
            }
        }
        double[][] dArrA = a(dArr3);
        double[][] dArrA2 = a(dArr4);
        double length = dArr3.length + dArr4.length;
        double[][] dArr9 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArrA.length, dArrA[0].length);
        for (int i5 = 0; i5 < dArr9.length; i5++) {
            for (int i6 = 0; i6 < dArr9[0].length; i6++) {
                dArr9[i5][i6] = (dArrA[i5][i6] * (((double) dArr3.length) / length)) + (dArrA2[i5][i6] * (((double) dArr4.length) / length));
            }
        }
        double[][] dArrInverse = Matrix.Inverse(dArr9);
        double[] dArr10 = new double[dArr[0].length];
        for (int i7 = 0; i7 < dArr10.length; i7++) {
            dArr10[i7] = dArr5[i7] - dArr7[i7];
        }
        return Math.sqrt(Matrix.InnerProduct(Matrix.MultiplyByTranspose(dArrInverse, dArr10), dArr10));
    }

    private static double a(double[] dArr, double[] dArr2, double d, double d2) {
        double d3 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d3 += (dArr[i] - d) * (dArr2[i] - d2);
        }
        return d3 / ((double) dArr.length);
    }

    private static double[][] a(double[][] dArr) {
        double[] dArr2 = new double[dArr[0].length];
        for (double[] dArr3 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = dArr2[i] + dArr3[i];
            }
        }
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr2[i2] = dArr2[i2] / ((double) dArr2.length);
        }
        return a(dArr, dArr2);
    }

    private static double[][] a(double[][] dArr, double[] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr2.length, dArr2.length);
        for (int i = 0; i < dArr3.length; i++) {
            for (int i2 = 0; i2 < dArr3[0].length; i2++) {
                dArr3[i][i2] = a(Matrix.getColumn(dArr, i), Matrix.getColumn(dArr, i2), dArr2[i], dArr2[i2]);
            }
        }
        return dArr3;
    }

    public static double Manhattan(double[] dArr, double[] dArr2) {
        double dAbs = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dAbs += Math.abs(dArr[i] - dArr2[i]);
        }
        return dAbs;
    }

    public static double Manhattan(double d, double d2, double d3, double d4) {
        return Math.abs(d - d3) + Math.abs(d2 - d4);
    }

    public static double Manhattan(IntPoint intPoint, IntPoint intPoint2) {
        return Manhattan(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double Minkowski(double d, double d2, double d3, double d4, int i) {
        return Math.pow(Math.pow(Math.abs(d - d3), i) + Math.pow(Math.abs(d2 - d4), i), 1 / i);
    }

    public static double Minkowski(IntPoint intPoint, IntPoint intPoint2, int i) {
        return Minkowski(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y, i);
    }

    public static double Minkowski(double[] dArr, double[] dArr2, double d) {
        double dPow = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dPow += Math.pow(Math.abs(dArr[i] - dArr2[i]), d);
        }
        return Math.pow(dPow, 1.0d / d);
    }

    public static double QuasiEuclidean(double d, double d2, double d3, double d4) {
        return Math.abs(d - d3) > Math.abs(d2 - d4) ? Math.abs(d - d3) + (Math.abs(d2 - d4) * 0.41421356237309515d) : (Math.abs(d - d3) * 0.41421356237309515d) + Math.abs(d2 - d4);
    }

    public static double QuasiEuclidean(IntPoint intPoint, IntPoint intPoint2) {
        return QuasiEuclidean(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public static double SquaredEuclidean(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return d;
    }

    public static double SquaredEuclidean(double d, double d2, double d3, double d4) {
        double d5 = d3 - d;
        double d6 = d4 - d2;
        return (d5 * d5) + (d6 * d6);
    }

    public static double SquaredEuclidean(IntPoint intPoint, IntPoint intPoint2) {
        double d = intPoint2.x - intPoint.x;
        double d2 = intPoint2.y - intPoint.y;
        return (d * d) + (d2 * d2);
    }

    public static double SymmetricChiSquareDivergence(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] * dArr2[i];
            if (d2 != 0.0d) {
                double d3 = dArr[i] - dArr2[i];
                d += ((d3 * d3) * (dArr[i] + dArr2[i])) / d2;
            }
        }
        return d;
    }

    public static double Taneja(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                double d = dArr[i] + dArr2[i];
                dLog += Math.log(d / (2.0d * Math.sqrt(dArr[i] * dArr2[i]))) * (d / 2.0d);
            }
        }
        return dLog;
    }

    public static double TopsoeDivergence(double[] dArr, double[] dArr2) {
        double dLog = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] != 0.0d && dArr2[i] != 0.0d) {
                double d = dArr[i] + dArr2[i];
                dLog += (Math.log((2.0d * dArr2[i]) / d) * dArr2[i]) + (dArr[i] * Math.log((2.0d * dArr[i]) / d));
            }
        }
        return dLog;
    }
}
