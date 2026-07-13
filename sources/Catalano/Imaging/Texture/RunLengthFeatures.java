package Catalano.Imaging.Texture;

/* JADX INFO: loaded from: classes.dex */
public final class RunLengthFeatures {
    private RunLengthFeatures() {
    }

    public static double ShortRunEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i2 = 1;
            while (i2 < dArr[0].length) {
                double d2 = (dArr2[i2] / ((double) (i2 * i2))) + d;
                i2++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double LongRunEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i2 = 1;
            while (i2 < dArr[0].length) {
                double d2 = (dArr2[i2] * ((double) i2) * ((double) i2)) + d;
                i2++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double LowGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            for (int i3 = 0; i3 < dArr[0].length; i3++) {
                d += dArr[i2][i3] / ((double) (i2 * i2));
            }
        }
        return d / ((double) i);
    }

    public static double HighGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            for (int i3 = 0; i3 < dArr[0].length; i3++) {
                d += dArr[i2][i3] * ((double) i2) * ((double) i2);
            }
        }
        return d / ((double) i);
    }

    public static double ShortRunLowGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            int i3 = 1;
            while (i3 < dArr[0].length) {
                double d2 = (dArr[i2][i3] / ((double) ((i2 * i2) * (i3 * i3)))) + d;
                i3++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double ShortRunHighGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            int i3 = 1;
            while (i3 < dArr[0].length) {
                double d2 = (((dArr[i2][i3] * ((double) i2)) * ((double) i2)) / ((double) (i3 * i3))) + d;
                i3++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double LongRunLowGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            int i3 = 1;
            while (i3 < dArr[0].length) {
                double d2 = (((dArr[i2][i3] * ((double) i3)) * ((double) i3)) / ((double) (i2 * i2))) + d;
                i3++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double LongRunHighGrayLevelEmphasis(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            int i3 = 1;
            while (i3 < dArr[0].length) {
                double d2 = (dArr[i2][i3] * ((double) i3) * ((double) i3) * ((double) i2) * ((double) i2)) + d;
                i3++;
                d = d2;
            }
        }
        return d / ((double) i);
    }

    public static double GrayLevelNonUniformity(double[][] dArr, int i) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i2 = 1; i2 < dArr.length; i2++) {
            d2 += d * d;
            int i3 = 1;
            while (i3 < dArr[0].length) {
                double d3 = dArr[i2][i3] + d;
                i3++;
                d = d3;
            }
        }
        return d2 / ((double) i);
    }

    public static double RunLengthNonUniformity(double[][] dArr, int i) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i2 = 1; i2 < dArr[0].length; i2++) {
            d2 += d * d;
            int i3 = 1;
            while (i3 < dArr.length) {
                double d3 = dArr[i3][i2] + d;
                i3++;
                d = d3;
            }
        }
        return d2 / ((double) i);
    }

    public static double GrayLevelDistribution(double[][] dArr, int i) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dPow = Math.pow(dArr2[i2] * ((double) i2) * ((double) i2), 2.0d) + d;
                i2++;
                d = dPow;
            }
        }
        return d / ((double) i);
    }

    public static double RunLenghtDistribution(double[][] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 0; i2 < dArr[0].length; i2++) {
            int i3 = 0;
            while (i3 < dArr.length) {
                double dPow = Math.pow(dArr[i3][i2] * ((double) i3) * ((double) i3), 2.0d) + d;
                i3++;
                d = dPow;
            }
        }
        return d / ((double) i);
    }

    public static double RunPercentage(double[][] dArr, int i) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double d2 = dArr2[i2] + d;
                i2++;
                d = d2;
            }
        }
        return d / ((double) i);
    }
}
