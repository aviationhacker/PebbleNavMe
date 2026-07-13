package Catalano.Imaging.Tools;

import Catalano.Core.ArraysUtil;
import Catalano.Math.Decompositions.SingularValueDecomposition;
import Catalano.Math.Matrix;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Kernel {
    public static double[][] Decompose(double[][] dArr) {
        SingularValueDecomposition singularValueDecomposition = new SingularValueDecomposition(dArr);
        double[][] u = singularValueDecomposition.getU();
        double[][] v = singularValueDecomposition.getV();
        double dSqrt = Math.sqrt(singularValueDecomposition.getS()[0][0]);
        double[] dArr2 = new double[singularValueDecomposition.getU().length];
        double[] dArr3 = new double[singularValueDecomposition.getV().length];
        double[][] dArr4 = new double[2][];
        for (int i = 0; i < dArr2.length; i++) {
            dArr2[i] = u[i][0] * dSqrt;
        }
        for (int i2 = 0; i2 < dArr3.length; i2++) {
            dArr3[i2] = v[i2][0] * dSqrt;
        }
        dArr4[0] = dArr2;
        dArr4[1] = dArr3;
        return dArr4;
    }

    public static boolean isNormalized(double[][] dArr) {
        return Math.round(Matrix.Sum(dArr)) == 1;
    }

    public static boolean isSeparable(int[][] iArr) {
        return new SingularValueDecomposition(ArraysUtil.toDouble(iArr)).rank() == 1;
    }

    public static double[][] toDouble(int[][] iArr) {
        double d = 0.0d;
        for (int[] iArr2 : iArr) {
            int i = 0;
            while (i < iArr[0].length) {
                double dAbs = ((double) Math.abs(iArr2[i])) + d;
                i++;
                d = dAbs;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr.length, iArr[0].length);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            for (int i3 = 0; i3 < iArr[0].length; i3++) {
                dArr[i2][i3] = iArr[i2][i3] < 0 ? -(((double) iArr[i2][i3]) / d) : ((double) iArr[i2][i3]) / d;
            }
        }
        return dArr;
    }

    public static int[][] toInt(double[][] dArr) {
        double dMin = Matrix.Min(dArr);
        if (dMin == 0.0d) {
            throw new IllegalArgumentException("The kernel can't be normalized.");
        }
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                iArr[i][i2] = (int) (dArr[i][i2] / dMin);
            }
        }
        return iArr;
    }
}
