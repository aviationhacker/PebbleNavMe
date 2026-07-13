package Catalano.Statistics;

/* JADX INFO: loaded from: classes.dex */
public class Normalizations {
    private Normalizations() {
    }

    public static double[] DecimalScaling(double[] dArr) {
        double dAbs = 0.0d;
        for (double d : dArr) {
            dAbs = Math.abs(d);
        }
        int i = 10;
        while (dAbs / ((double) i) > 1.0d) {
            i *= 10;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr2[i2] = dArr[i2] / ((double) i);
        }
        return dArr2;
    }

    public static double[] RangeNormalization(double[] dArr, double d, double d2, double d3, double d4) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = (((d4 - d3) * (dArr2[i] - d)) / (d2 - d)) + d3;
            if (d2 - d == 0.0d) {
                dArr2[i] = 0.0d;
            }
        }
        return dArr2;
    }

    public static double[] UnitVectorNormalization(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr[i];
        }
        double dSqrt = Math.sqrt(d);
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr2[i2] = dArr[i2] / dSqrt;
        }
        return dArr2;
    }

    public static double[] StandartNormalDensity(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        double dMean = DescriptiveStatistics.Mean(dArr);
        double dStandartDeviation = DescriptiveStatistics.StandartDeviation(dArr);
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = (dArr[i] - dMean) / dStandartDeviation;
        }
        return dArr2;
    }

    public static double[] MinMaxNormalization(double[] dArr, double d, double d2) {
        double[] dArr2 = new double[dArr.length];
        double dMinimum = DescriptiveStatistics.Minimum(dArr);
        double dMaximum = DescriptiveStatistics.Maximum(dArr);
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = (((dArr[i] - dMinimum) / (dMaximum - dMinimum)) * (d2 - d)) + d;
        }
        return dArr2;
    }

    public static double[] SoftmaxScaling(double[] dArr, double d) {
        double[] dArr2 = new double[dArr.length];
        double dMean = DescriptiveStatistics.Mean(dArr);
        double dStandartDeviation = DescriptiveStatistics.StandartDeviation(dArr) * d;
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = 1.0d / (Math.pow(2.718281828459045d, -((dArr[i] - dMean) / dStandartDeviation)) + 1.0d);
        }
        return dArr2;
    }
}
