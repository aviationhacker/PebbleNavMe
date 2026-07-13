package Catalano.Statistics;

import Catalano.Core.IntRange;

/* JADX INFO: loaded from: classes.dex */
public final class HistogramStatistics {
    private HistogramStatistics() {
    }

    public static double Entropy(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        if (i2 == 0) {
            return 0.0d;
        }
        double dLog10 = 0.0d;
        for (int i4 : iArr) {
            double d = ((double) i4) / ((double) i2);
            if (d != 0.0d) {
                dLog10 += (Math.log10(d) / Math.log10(2.0d)) * (-d);
            }
        }
        return dLog10;
    }

    public static IntRange GetRange(int[] iArr, double d) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        int i4 = (int) (((double) i2) * (((1.0d - d) / 2.0d) + d));
        int i5 = 0;
        int i6 = i2;
        while (i5 < length) {
            i6 -= iArr[i5];
            if (i6 < i4) {
                break;
            }
            i5++;
        }
        int i7 = length - 1;
        while (i7 >= 0) {
            i2 -= iArr[i7];
            if (i2 < i4) {
                break;
            }
            i7--;
        }
        return new IntRange(i5, i7);
    }

    public static double Kurtosis(int[] iArr) {
        double dMean = Mean(iArr);
        return Kurtosis(iArr, dMean, StdDev(iArr, dMean));
    }

    public static double Kurtosis(int[] iArr, double d, double d2) {
        double d3 = 0.0d;
        for (int i : iArr) {
            d3 += (double) i;
        }
        double d4 = ((1.0d + d3) * d3) / (((d3 - 1.0d) * (d3 - 2.0d)) * (d3 - 3.0d));
        double dPow = 0.0d;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            dPow += Math.pow((((double) i2) - d) / d2, 4.0d) * ((double) iArr[i2]);
        }
        return (d4 * dPow) - ((3.0d * Math.pow(d3 - 1.0d, 2.0d)) / ((d3 - 3.0d) * (d3 - 2.0d)));
    }

    public static double Mean(int[] iArr) {
        int length = iArr.length;
        double d = 0.0d;
        long j = 0;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            d += (double) (i * i2);
            j += (long) i2;
        }
        if (j == 0) {
            return 0.0d;
        }
        return d / j;
    }

    public static int Median(int[] iArr) {
        int i = 0;
        int length = iArr.length;
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        int i4 = i2 / 2;
        int i5 = 0;
        while (i5 < length) {
            i += iArr[i5];
            if (i >= i4) {
                break;
            }
            i5++;
        }
        return i5;
    }

    public static int Mode(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (iArr[i3] > i) {
                i = iArr[i3];
                i2 = i3;
            }
        }
        return i2;
    }

    public static double Skewness(int[] iArr) {
        double dMean = Mean(iArr);
        return Skewness(iArr, dMean, StdDev(iArr, dMean));
    }

    public static double Skewness(int[] iArr, double d, double d2) {
        double dPow = 0.0d;
        double d3 = 0.0d;
        for (int i : iArr) {
            d3 += (double) i;
        }
        double d4 = (d3 - 2.0d) * (d3 / (d3 - 1.0d));
        for (int i2 = 0; i2 < iArr.length; i2++) {
            dPow += Math.pow((((double) i2) - d) / d2, 3.0d) * ((double) iArr[i2]);
        }
        return d4 * dPow;
    }

    public static double StdDev(int[] iArr) {
        return StdDev(iArr, Mean(iArr));
    }

    public static double StdDev(int[] iArr, double d) {
        int length = iArr.length;
        int i = 0;
        double d2 = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            double d3 = ((double) i2) - d;
            d2 += d3 * d3 * ((double) i3);
            i += i3;
        }
        if (i == 0) {
            return 0.0d;
        }
        return Math.sqrt(d2 / ((double) (i - 1)));
    }
}
