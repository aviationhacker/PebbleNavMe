package Catalano.Statistics;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptiveStatistics {
    private DescriptiveStatistics() {
    }

    public static double Mean(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += d2;
        }
        return d / ((double) dArr.length);
    }

    public static float Mean(float[] fArr) {
        float f = 0.0f;
        for (float f2 : fArr) {
            f += f2;
        }
        return f / fArr.length;
    }

    public static double Mean(int[] iArr) {
        double d = 0.0d;
        for (int i : iArr) {
            d += (double) i;
        }
        return d / ((double) iArr.length);
    }

    public static double Median(double[] dArr) {
        if (dArr.length == 1) {
            return dArr[0];
        }
        Arrays.sort(dArr);
        return dArr[(dArr.length + 1) / 2];
    }

    public static double Mode(double[] dArr) {
        Arrays.sort(dArr);
        char c = 0;
        double d = dArr[0];
        int i = 0;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            if (dArr[i2] == d) {
                if (1 > c) {
                    c = 1;
                    i = i2;
                }
                d = dArr[i2];
            } else {
                if (c < 0) {
                    c = 0;
                    i = i2;
                }
                d = dArr[i2];
            }
        }
        return dArr[i];
    }

    public static double Minimum(double[] dArr) {
        double d = Double.MAX_VALUE;
        for (int i = 0; i < dArr.length; i++) {
            if (d > dArr[i]) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static double Maximum(double[] dArr) {
        double d = Double.MIN_VALUE;
        for (int i = 0; i < dArr.length; i++) {
            if (d < dArr[i]) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static double Variance(double[] dArr, double d) {
        double dPow = 0.0d;
        for (double d2 : dArr) {
            dPow += Math.pow(d2 - d, 2.0d);
        }
        return dPow / (((double) dArr.length) - 1.0d);
    }

    public static float Variance(float[] fArr, float f) {
        float fPow = 0.0f;
        for (float f2 : fArr) {
            fPow = (float) (((double) fPow) + Math.pow(f2 - f, 2.0d));
        }
        return fPow / (fArr.length - 1.0f);
    }

    public static double Variance(double[] dArr) {
        return Variance(dArr, Mean(dArr));
    }

    public static float Variance(float[] fArr) {
        return Variance(fArr, Mean(fArr));
    }

    public static double Range(double[] dArr) {
        double dMin = dArr[0];
        double dMax = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMin = Math.min(dMin, dArr[i]);
            dMax = Math.max(dMax, dArr[i]);
        }
        return dMax - dMin;
    }

    public static double StandartDeviation(double[] dArr) {
        return Math.sqrt(Variance(dArr));
    }

    public static double StandartDeviation(double[] dArr, double d) {
        return Math.sqrt(Variance(dArr, d));
    }

    public static double Kurtosis(double[] dArr, double d, double d2) {
        double length = dArr.length;
        double d3 = ((1.0d + length) * length) / (((length - 1.0d) * (length - 2.0d)) * (length - 3.0d));
        double dPow = 0.0d;
        for (double d4 : dArr) {
            dPow += Math.pow((d4 - d) / d2, 4.0d);
        }
        return (dPow * d3) - ((3.0d * Math.pow(length - 1.0d, 2.0d)) / ((length - 3.0d) * (length - 2.0d)));
    }

    public static double Kurtosis(double[] dArr) {
        return Kurtosis(dArr, Mean(dArr), StandartDeviation(dArr));
    }

    public static double Skewness(double[] dArr, double d, double d2) {
        double length = dArr.length;
        double d3 = (length / (length - 1.0d)) * (length - 2.0d);
        double dPow = 0.0d;
        for (double d4 : dArr) {
            dPow += Math.pow((d4 - d) / d2, 3.0d);
        }
        return d3 * dPow;
    }

    public static double Skewness(double[] dArr) {
        return Skewness(dArr, Mean(dArr), StandartDeviation(dArr));
    }
}
