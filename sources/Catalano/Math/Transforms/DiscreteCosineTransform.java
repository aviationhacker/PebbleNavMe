package Catalano.Math.Transforms;

/* JADX INFO: loaded from: classes.dex */
public final class DiscreteCosineTransform {
    private DiscreteCosineTransform() {
    }

    public static void Forward(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        double dSqrt = Math.sqrt(2.0d / ((double) dArr.length));
        for (int i = 0; i < dArr.length; i++) {
            double dCos = 0.0d;
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dCos += Math.cos(((((2.0d * ((double) i2)) + 1.0d) * ((double) i)) * 3.141592653589793d) / (2.0d * ((double) dArr.length))) * dArr[i2] * a(i);
            }
            dArr2[i] = dCos * dSqrt;
        }
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    public static void Forward(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr2[i2] = dArr[i][i2];
            }
            Forward(dArr2);
            for (int i3 = 0; i3 < dArr2.length; i3++) {
                dArr[i][i3] = dArr2[i3];
            }
        }
        for (int i4 = 0; i4 < length2; i4++) {
            for (int i5 = 0; i5 < dArr3.length; i5++) {
                dArr3[i5] = dArr[i5][i4];
            }
            Forward(dArr3);
            for (int i6 = 0; i6 < dArr3.length; i6++) {
                dArr[i6][i4] = dArr3[i6];
            }
        }
    }

    public static void Backward(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        double dSqrt = Math.sqrt(2.0d / ((double) dArr.length));
        for (int i = 0; i < dArr.length; i++) {
            double dCos = 0.0d;
            for (int i2 = 0; i2 < dArr.length; i2++) {
                dCos += Math.cos((((double) (((i * 2) + 1) * i2)) * 3.141592653589793d) / ((double) (dArr.length * 2))) * a(i2) * dArr[i2];
            }
            dArr2[i] = dCos * dSqrt;
        }
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    public static void Backward(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        for (int i = 0; i < length2; i++) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr3[i2] = dArr[i2][i];
            }
            Backward(dArr3);
            for (int i3 = 0; i3 < dArr3.length; i3++) {
                dArr[i3][i] = dArr3[i3];
            }
        }
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = 0; i5 < dArr2.length; i5++) {
                dArr2[i5] = dArr[i4][i5];
            }
            Backward(dArr2);
            for (int i6 = 0; i6 < dArr2.length; i6++) {
                dArr[i4][i6] = dArr2[i6];
            }
        }
    }

    private static double a(double d) {
        if (d == 0.0d) {
            return 1.0d / Math.sqrt(2.0d);
        }
        return 1.0d;
    }
}
