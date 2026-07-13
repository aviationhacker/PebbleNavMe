package Catalano.Math.Transforms;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class DiscreteHartleyTransform {
    private DiscreteHartleyTransform() {
    }

    public static void Forward(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr2.length; i++) {
            double dA = 0.0d;
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dA += a((6.283185307179586d / ((double) dArr.length)) * ((double) i) * ((double) i2)) * dArr[i2];
            }
            dArr2[i] = (1.0d / Math.sqrt(dArr.length)) * dA;
        }
        for (int i3 = 0; i3 < dArr2.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    public static void Backward(double[] dArr) {
        Forward(dArr);
    }

    public static void Forward(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                double dA = 0.0d;
                for (int i3 = 0; i3 < dArr2.length; i3++) {
                    for (int i4 = 0; i4 < dArr.length; i4++) {
                        dA += dArr[i3][i4] * a((6.283185307179586d / ((double) dArr.length)) * ((double) ((i3 * i) + (i4 * i2))));
                    }
                    dArr2[i][i2] = (1.0d / ((double) dArr.length)) * dA;
                }
            }
        }
        for (int i5 = 0; i5 < dArr.length; i5++) {
            for (int i6 = 0; i6 < dArr[0].length; i6++) {
                dArr[i5][i6] = dArr2[i5][i6];
            }
        }
    }

    public static void Backward(double[][] dArr) {
        Forward(dArr);
    }

    private static double a(double d) {
        return 1.4142135623730951d * Math.cos(d - 0.7853981633974483d);
    }
}
