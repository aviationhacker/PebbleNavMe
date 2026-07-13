package Catalano.Math.Transforms;

/* JADX INFO: loaded from: classes.dex */
public class DiscreteSineTransform {
    private DiscreteSineTransform() {
    }

    public static void Forward(double[] dArr) {
        a(dArr, 1.0d);
    }

    private static void a(double[] dArr, double d) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 1; i < dArr2.length + 1; i++) {
            double dSin = 0.0d;
            for (int i2 = 1; i2 < dArr.length + 1; i2++) {
                dSin += dArr[i2 - 1] * Math.sin(3.141592653589793d * (((double) (i * i2)) / (((double) dArr.length) + 1.0d)));
            }
            dArr2[i - 1] = dSin * d;
        }
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    public static void Backward(double[] dArr) {
        a(dArr, 2.0d / ((double) (dArr.length + 1)));
    }

    public static void Forward(double[][] dArr) {
        a(dArr, 1.0d);
    }

    private static void a(double[][] dArr, double d) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr2[i2] = dArr[i][i2];
            }
            a(dArr2, d);
            for (int i3 = 0; i3 < dArr2.length; i3++) {
                dArr[i][i3] = dArr2[i3];
            }
        }
        for (int i4 = 0; i4 < length2; i4++) {
            for (int i5 = 0; i5 < dArr3.length; i5++) {
                dArr3[i5] = dArr[i5][i4];
            }
            a(dArr3, d);
            for (int i6 = 0; i6 < dArr3.length; i6++) {
                dArr[i6][i4] = dArr3[i6];
            }
        }
    }

    public static void Backward(double[][] dArr) {
        a(dArr, 2.0d / ((double) (dArr.length + 1)));
    }
}
