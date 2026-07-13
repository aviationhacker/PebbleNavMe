package Catalano.Imaging.Texture;

import Catalano.Math.Tools;

/* JADX INFO: loaded from: classes.dex */
public class Haralick {
    private Haralick() {
    }

    public static double Energy(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double d2 = (dArr[i][i2] * dArr[i][i2]) + d;
                i2++;
                d = d2;
            }
        }
        return d;
    }

    public static double Entropy(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dLog = (dArr[i][i2] * Tools.Log(dArr[i][i2], 2.0d)) + d;
                i2++;
                d = dLog;
            }
        }
        return -d;
    }

    public static double Contrast(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dAbs = (((double) Math.abs(i - i2)) * dArr[i][i2]) + d;
                i2++;
                d = dAbs;
            }
        }
        return d;
    }

    public static double Inertia(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dPow = (Math.pow(i - i2, 2.0d) * dArr[i][i2]) + d;
                i2++;
                d = dPow;
            }
        }
        return d;
    }

    public static double Correlation(double[][] dArr) {
        double d = 0.0d;
        double dPow = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                d += dArr[i][i2];
            }
            for (int i3 = 0; i3 < dArr[0].length; i3++) {
                dPow += Math.pow(((double) i) - d, 2.0d) * dArr[i][i3];
            }
        }
        double d2 = 0.0d;
        double dPow2 = 0.0d;
        for (int i4 = 0; i4 < dArr[0].length; i4++) {
            for (double[] dArr2 : dArr) {
                d2 += dArr2[i4];
            }
            for (double[] dArr3 : dArr) {
                dPow2 += Math.pow(((double) i4) - d2, 2.0d) * dArr3[i4];
            }
        }
        double d3 = 0.0d;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            for (int i6 = 0; i6 < dArr[0].length; i6++) {
                d3 += (((((double) (i5 * i6)) * dArr[i5][i6]) - (d * d2)) / dPow) * dPow2;
            }
        }
        return d3;
    }

    public static double TextureHomogeneity(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dAbs = (dArr[i][i2] / ((double) (Math.abs(i - i2) + 1))) + d;
                i2++;
                d = dAbs;
            }
        }
        return d;
    }

    public static double InverseDifference(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dAbs = (dArr[i][i2] / ((double) Math.abs(i - i2))) + d;
                i2++;
                d = dAbs;
            }
        }
        return d;
    }

    public static double InverseDifferenceMoment(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dPow = (dArr[i][i2] / (1.0d + Math.pow(i - i2, 2.0d))) + d;
                i2++;
                d = dPow;
            }
        }
        return d;
    }

    public static double ClusterTendency(double[][] dArr) {
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr[0].length];
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dArr2[i] = dArr2[i] + dArr[i][i2];
            }
            dArr2[i] = dArr2[i] / ((double) dArr.length);
        }
        for (int i3 = 0; i3 < dArr3.length; i3++) {
            for (int i4 = 0; i4 < dArr.length; i4++) {
                dArr3[i4] = dArr3[i4] + dArr[i4][i3];
            }
            dArr3[i3] = dArr3[i3] / ((double) dArr[0].length);
        }
        double d = 0.0d;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            int i6 = 0;
            while (i6 < dArr[0].length) {
                double dPow = (Math.pow((((double) i5) - dArr2[i5]) + (((double) i6) - dArr3[i6]), 2.0d) * dArr[i5][i6]) + d;
                i6++;
                d = dPow;
            }
        }
        return d;
    }

    public static double ClusterShade(double[][] dArr) {
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr[0].length];
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dArr2[i] = dArr2[i] + dArr[i][i2];
            }
            dArr2[i] = dArr2[i] / ((double) dArr.length);
        }
        for (int i3 = 0; i3 < dArr3.length; i3++) {
            for (int i4 = 0; i4 < dArr.length; i4++) {
                dArr3[i4] = dArr3[i4] + dArr[i4][i3];
            }
            dArr3[i3] = dArr3[i3] / ((double) dArr[0].length);
        }
        double d = 0.0d;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            int i6 = 0;
            while (i6 < dArr[0].length) {
                double dPow = (Math.pow((((double) i5) - dArr2[i5]) + (((double) i6) - dArr3[i6]), 3.0d) * dArr[i5][i6]) + d;
                i6++;
                d = dPow;
            }
        }
        return d;
    }

    public static double ClusterProminence(double[][] dArr) {
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr[0].length];
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dArr2[i] = dArr2[i] + dArr[i][i2];
            }
            dArr2[i] = dArr2[i] / ((double) dArr.length);
        }
        for (int i3 = 0; i3 < dArr3.length; i3++) {
            for (int i4 = 0; i4 < dArr.length; i4++) {
                dArr3[i4] = dArr3[i4] + dArr[i4][i3];
            }
            dArr3[i3] = dArr3[i3] / ((double) dArr[0].length);
        }
        double d = 0.0d;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            int i6 = 0;
            while (i6 < dArr[0].length) {
                double dPow = (Math.pow((((double) i5) - dArr2[i5]) + (((double) i6) - dArr3[i6]), 4.0d) * dArr[i5][i6]) + d;
                i6++;
                d = dPow;
            }
        }
        return d;
    }
}
