package Catalano.Math;

import Catalano.Core.ArraysUtil;
import Catalano.Core.IntPoint;
import Catalano.Math.Decompositions.LUDecomposition;
import Catalano.Math.Decompositions.SingularValueDecomposition;
import java.lang.reflect.Array;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Matrix {
    private Matrix() {
    }

    public static double[][] Abs(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr2[i][i2] = Math.abs(dArr[i][i2]);
            }
        }
        return dArr2;
    }

    public static int[][] Abs(int[][] iArr) {
        int length = iArr.length;
        int length2 = iArr[0].length;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                iArr2[i][i2] = Math.abs(iArr[i][i2]);
            }
        }
        return iArr2;
    }

    public static float[][] Abs(float[][] fArr) {
        int length = fArr.length;
        int length2 = fArr[0].length;
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                fArr2[i][i2] = Math.abs(fArr[i][i2]);
            }
        }
        return fArr2;
    }

    public static double[] CreateMatrix1D(int i, double d) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = d;
        }
        return dArr;
    }

    public static int[] CreateMatrix1D(int i, int i2) {
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = i2;
        }
        return iArr;
    }

    public static float[] CreateMatrix1D(int i, float f) {
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = f;
        }
        return fArr;
    }

    public static double[][] CreateMatrix2D(int i, int i2, double d) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                dArr[i3][i4] = d;
            }
        }
        return dArr;
    }

    public static int[][] CreateMatrix2D(int i, int i2, int i3) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i, i2);
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                iArr[i4][i5] = i3;
            }
        }
        return iArr;
    }

    public static float[][] CreateMatrix2D(int i, int i2, float f) {
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr[i3][i4] = f;
            }
        }
        return fArr;
    }

    public static int[] Indices(int i, int i2) {
        int[] iArr = new int[i2 - i];
        int i3 = 0;
        while (i3 < iArr.length) {
            iArr[i3] = i;
            i3++;
            i++;
        }
        return iArr;
    }

    public static double InnerProduct(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
        }
        return d;
    }

    public static int InnerProduct(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i += iArr[i2] * iArr2[i2];
        }
        return i;
    }

    public static float InnerProduct(float[] fArr, float[] fArr2) {
        float f = 0.0f;
        for (int i = 0; i < fArr.length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static double[] Log(double[] dArr) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr2[i] = Math.log(dArr[i]);
        }
        return dArr2;
    }

    public static double[][] Log(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr2[i][i2] = Math.log(dArr[i][i2]);
            }
        }
        return dArr2;
    }

    public static double[] Add(double[] dArr, double[] dArr2) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] + dArr2[i];
        }
        return dArr2;
    }

    public static int[] Add(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = iArr[i] + iArr2[i];
        }
        return iArr2;
    }

    public static float[] Add(float[] fArr, float[] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] + fArr2[i];
        }
        return fArr2;
    }

    public static double[][] Add(double[][] dArr, double[][] dArr2) {
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                double[] dArr3 = dArr[i];
                dArr3[i2] = dArr3[i2] + dArr2[i][i2];
            }
        }
        return dArr;
    }

    public static int[][] Add(int[][] iArr, int[][] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                int[] iArr3 = iArr[i];
                iArr3[i2] = iArr3[i2] + iArr2[i][i2];
            }
        }
        return iArr;
    }

    public static float[][] Add(float[][] fArr, float[][] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                float[] fArr3 = fArr[i];
                fArr3[i2] = fArr3[i2] + fArr2[i][i2];
            }
        }
        return fArr;
    }

    public static void Add(double[] dArr, double d) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] + d;
        }
    }

    public static void Add(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = iArr[i2] + i;
        }
    }

    public static void Add(float[] fArr, float f) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] + f;
        }
    }

    public static void Add(double[][] dArr, double d) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = dArr2[i] + d;
            }
        }
    }

    public static void Add(int[][] iArr, int i) {
        for (int[] iArr2 : iArr) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i2] = iArr2[i2] + i;
            }
        }
    }

    public static void Add(float[][] fArr, float f) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                fArr2[i] = fArr2[i] + f;
            }
        }
    }

    public static void Clear(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    public static void Clear(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = 0.0f;
        }
    }

    public static void Clear(double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = 0.0d;
        }
    }

    public static void Clear(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            for (int i = 0; i < iArr[0].length; i++) {
                iArr2[i] = 0;
            }
        }
    }

    public static void Clear(float[][] fArr) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                fArr2[i] = 0.0f;
            }
        }
    }

    public static void Clear(double[][] dArr) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = 0.0d;
            }
        }
    }

    public static double[][] Copy(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr2[i][i2] = dArr[i][i2];
            }
        }
        return dArr2;
    }

    public static int[][] Copy(int[][] iArr) {
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr[0].length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i][i2] = iArr[i][i2];
            }
        }
        return iArr2;
    }

    public static float[][] Copy(float[][] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr[0].length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                fArr2[i][i2] = fArr[i][i2];
            }
        }
        return fArr2;
    }

    public static double Determinant(double[][] dArr) {
        return new LUDecomposition(dArr).determinant();
    }

    public static void Divide(double[][] dArr, double d) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = dArr2[i] / d;
            }
        }
    }

    public static double[][] Exp(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr2[i][i2] = Math.exp(dArr[i][i2]);
            }
        }
        return dArr2;
    }

    public static void Divide(int[][] iArr, int i) {
        for (int[] iArr2 : iArr) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i2] = iArr2[i2] / i;
            }
        }
    }

    public static void Divide(float[][] fArr, float f) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                fArr2[i] = fArr2[i] / f;
            }
        }
    }

    public static double[][] DotProduct(double[][] dArr, double[][] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr3[i][i2] = dArr[i][i2] * dArr2[i][i2];
            }
        }
        return dArr3;
    }

    public static int[][] DotProduct(int[][] iArr, int[][] iArr2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr[0].length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr3[i][i2] = iArr[i][i2] * iArr2[i][i2];
            }
        }
        return iArr3;
    }

    public static float[][] DotProduct(float[][] fArr, float[][] fArr2) {
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr[0].length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                fArr3[i][i2] = fArr[i][i2] * fArr2[i][i2];
            }
        }
        return fArr3;
    }

    public static void Fill(double[] dArr, double d) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = d;
        }
    }

    public static double[] getColumn(double[][] dArr, int i) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr2[i2] = dArr[i2][i];
        }
        return dArr2;
    }

    public static int[] getColumn(int[][] iArr, int i) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = iArr[i2][i];
        }
        return iArr2;
    }

    public static float[] getColumn(float[][] fArr, int i) {
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i2 = 0; i2 < length; i2++) {
            fArr2[i2] = fArr[i2][i];
        }
        return fArr2;
    }

    public static <T> T[] getColumn(T[][] tArr, int i) {
        int length = tArr.length;
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr[0][i].getClass(), length));
        for (int i2 = 0; i2 < length; i2++) {
            tArr2[i2] = tArr[i2][i];
        }
        return tArr2;
    }

    public static double[] getColumns(double[] dArr, int i, int i2) {
        double[] dArr2 = new double[(i2 - i) + 1];
        for (int i3 = 0; i3 < dArr2.length; i3++) {
            dArr2[i3] = dArr[i + i3];
        }
        return dArr2;
    }

    public static int[] getColumns(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[(i2 - i) + 1];
        for (int i3 = 0; i3 < iArr2.length; i3++) {
            iArr2[i3] = iArr[i + i3];
        }
        return iArr2;
    }

    public static float[] getColumns(float[] fArr, int i, int i2) {
        float[] fArr2 = new float[(i2 - i) + 1];
        for (int i3 = 0; i3 < fArr2.length; i3++) {
            fArr2[i3] = fArr[i + i3];
        }
        return fArr2;
    }

    public static <T> T[] getColumns(T[] tArr, int i, int i2) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr[0].getClass(), tArr.length));
        for (int i3 = 0; i3 < tArr2.length; i3++) {
            tArr2[i3] = tArr[i + i3];
        }
        return tArr2;
    }

    public static double[][] getColumns(double[][] dArr, int[] iArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, iArr.length);
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr2[0].length; i2++) {
                dArr2[i][i2] = dArr[i][iArr[i2]];
            }
        }
        return dArr2;
    }

    public static int[][] getColumns(int[][] iArr, int[] iArr2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr2.length);
        for (int i = 0; i < iArr3.length; i++) {
            for (int i2 = 0; i2 < iArr3[0].length; i2++) {
                iArr3[i][i2] = iArr[i][iArr2[i2]];
            }
        }
        return iArr3;
    }

    public static float[][] getColumns(float[][] fArr, int[] iArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, iArr.length);
        for (int i = 0; i < fArr2.length; i++) {
            for (int i2 = 0; i2 < fArr2[0].length; i2++) {
                fArr2[i][i2] = fArr[i][iArr[i2]];
            }
        }
        return fArr2;
    }

    public static <T> T[][] getColumns(T[][] tArr, int[] iArr) {
        T[][] tArr2 = (T[][]) ((Object[][]) Array.newInstance(tArr[0][0].getClass(), tArr.length, iArr.length));
        for (int i = 0; i < tArr2.length; i++) {
            for (int i2 = 0; i2 < tArr2[0].length; i2++) {
                tArr2[i][i2] = tArr[i][iArr[i2]];
            }
        }
        return tArr2;
    }

    public static double[] getRow(double[][] dArr, int i) {
        int length = dArr[0].length;
        double[] dArr2 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr2[i2] = dArr[i][i2];
        }
        return dArr2;
    }

    public static int[] getRow(int[][] iArr, int i) {
        int length = iArr[0].length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = iArr[i][i2];
        }
        return iArr2;
    }

    public static float[] getRow(float[][] fArr, int i) {
        int length = fArr[0].length;
        float[] fArr2 = new float[length];
        for (int i2 = 0; i2 < length; i2++) {
            fArr2[i2] = fArr[i][i2];
        }
        return fArr2;
    }

    public static double[][] getRows(double[][] dArr, int[] iArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr.length, dArr[0].length);
        for (int i = 0; i < dArr2.length; i++) {
            for (int i2 = 0; i2 < dArr2[0].length; i2++) {
                dArr2[i][i2] = dArr[iArr[i]][i2];
            }
        }
        return dArr2;
    }

    public static int[][] getRows(int[][] iArr, int[] iArr2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr2.length, iArr[0].length);
        for (int i = 0; i < iArr3.length; i++) {
            for (int i2 = 0; i2 < iArr3[0].length; i2++) {
                iArr3[i][i2] = iArr[iArr2[i]][i2];
            }
        }
        return iArr3;
    }

    public static float[][] getRows(float[][] fArr, int[] iArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr.length, fArr[0].length);
        for (int i = 0; i < fArr2.length; i++) {
            for (int i2 = 0; i2 < fArr2[0].length; i2++) {
                fArr2[i][i2] = fArr[iArr[i]][i2];
            }
        }
        return fArr2;
    }

    public static double[] getRows(double[] dArr, int[] iArr) {
        double[] dArr2 = new double[iArr.length];
        for (int i = 0; i < dArr2.length; i++) {
            dArr2[i] = dArr[iArr[i]];
        }
        return dArr2;
    }

    public static int[] getRows(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[iArr2.length];
        for (int i = 0; i < iArr3.length; i++) {
            iArr3[i] = iArr[iArr2[i]];
        }
        return iArr3;
    }

    public static float[] getRows(float[] fArr, int[] iArr) {
        float[] fArr2 = new float[iArr.length];
        for (int i = 0; i < fArr2.length; i++) {
            fArr2[i] = fArr[iArr[i]];
        }
        return fArr2;
    }

    public static <T> T[] getRows(T[] tArr, int[] iArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr[0].getClass(), iArr.length));
        for (int i = 0; i < tArr2.length; i++) {
            tArr2[i] = tArr[iArr[i]];
        }
        return tArr2;
    }

    public static void Fill(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = i;
        }
    }

    public static void Fill(float[] fArr, float f) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = f;
        }
    }

    public static void Fill(double[][] dArr, double d) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = d;
            }
        }
    }

    public static void Fill(int[][] iArr, int i) {
        for (int[] iArr2 : iArr) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i2] = i;
            }
        }
    }

    public static void Fill(float[][] fArr, float f) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                fArr2[i] = f;
            }
        }
    }

    public static double[] Subtract(double[] dArr, double[] dArr2) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] - dArr2[i];
        }
        return dArr2;
    }

    public static int[] Subtract(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = iArr[i] - iArr2[i];
        }
        return iArr2;
    }

    public static float[] Subtract(float[] fArr, float[] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] - fArr2[i];
        }
        return fArr2;
    }

    public static double[][] Subtract(double[][] dArr, double[][] dArr2) {
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                double[] dArr3 = dArr[i];
                dArr3[i2] = dArr3[i2] - dArr2[i][i2];
            }
        }
        return dArr;
    }

    public static int[][] Subtract(int[][] iArr, int[][] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                int[] iArr3 = iArr[i];
                iArr3[i2] = iArr3[i2] - iArr2[i][i2];
            }
        }
        return iArr;
    }

    public static float[][] Subtract(float[][] fArr, float[][] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                float[] fArr3 = fArr[i];
                fArr3[i2] = fArr3[i2] - fArr2[i][i2];
            }
        }
        return fArr;
    }

    public static void Subtract(double[] dArr, double d) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] - d;
        }
    }

    public static void Subtract(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = iArr[i2] - i;
        }
    }

    public static void Subtract(float[] fArr, float f) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] - f;
        }
    }

    public static double Sum(double[][] dArr) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double d2 = dArr2[i] + d;
                i++;
                d = d2;
            }
        }
        return d;
    }

    public static int Sum(int[][] iArr) {
        int i = 0;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                int i3 = iArr2[i2] + i;
                i2++;
                i = i3;
            }
        }
        return i;
    }

    public static float Sum(float[][] fArr) {
        float f = 0.0f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float f2 = fArr2[i] + f;
                i++;
                f = f2;
            }
        }
        return f;
    }

    public static double SumAbs(double[][] dArr) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double dAbs = Math.abs(dArr2[i]) + d;
                i++;
                d = dAbs;
            }
        }
        return d;
    }

    public static int SumAbs(int[][] iArr) {
        int i = 0;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                int iAbs = Math.abs(iArr2[i2]) + i;
                i2++;
                i = iAbs;
            }
        }
        return i;
    }

    public static float SumAbs(float[][] fArr) {
        float f = 0.0f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float fAbs = Math.abs(fArr2[i]) + f;
                i++;
                f = fAbs;
            }
        }
        return f;
    }

    public static void Subtract(double[][] dArr, double d) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                dArr2[i] = dArr2[i] - d;
            }
        }
    }

    public static void Subtract(int[][] iArr, int i) {
        for (int[] iArr2 : iArr) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i2] = iArr2[i2] - i;
            }
        }
    }

    public static void Subtract(float[][] fArr, float f) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                fArr2[i] = fArr2[i] - f;
            }
        }
    }

    public static void SwapColumn(double[][] dArr, int i, int i2) {
        for (int i3 = 0; i3 < dArr.length; i3++) {
            for (int i4 = 0; i4 < dArr[0].length; i4++) {
                double d = dArr[i3][i];
                dArr[i3][i] = dArr[i3][i2];
                dArr[i3][i2] = d;
            }
        }
    }

    public static void SwapColumn(int[][] iArr, int i, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            for (int i4 = 0; i4 < iArr[0].length; i4++) {
                int i5 = iArr[i3][i];
                iArr[i3][i] = iArr[i3][i2];
                iArr[i3][i2] = i5;
            }
        }
    }

    public static void SwapColumn(float[][] fArr, int i, int i2) {
        for (int i3 = 0; i3 < fArr.length; i3++) {
            for (int i4 = 0; i4 < fArr[0].length; i4++) {
                float f = fArr[i3][i];
                fArr[i3][i] = fArr[i3][i2];
                fArr[i3][i2] = f;
            }
        }
    }

    public static void SwapRow(double[][] dArr, int i, int i2) {
        for (int i3 = 0; i3 < dArr.length; i3++) {
            for (int i4 = 0; i4 < dArr[0].length; i4++) {
                double d = dArr[i][i4];
                dArr[i][i4] = dArr[i2][i4];
                dArr[i2][i4] = d;
            }
        }
    }

    public static void SwapRow(int[][] iArr, int i, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            for (int i4 = 0; i4 < iArr[0].length; i4++) {
                int i5 = iArr[i][i4];
                iArr[i][i4] = iArr[i2][i4];
                iArr[i2][i4] = i5;
            }
        }
    }

    public static void SwapRow(float[][] fArr, int i, int i2) {
        for (int i3 = 0; i3 < fArr.length; i3++) {
            for (int i4 = 0; i4 < fArr[0].length; i4++) {
                float f = fArr[i][i4];
                fArr[i][i4] = fArr[i2][i4];
                fArr[i2][i4] = f;
            }
        }
    }

    public static double[][] Multiply(double[][] dArr, double[][] dArr2) {
        if (dArr[0].length != dArr2.length) {
            throw new IllegalArgumentException("Illegal matrix dimensions.");
        }
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr2[0].length);
        int length = dArr[0].length;
        int length2 = dArr.length;
        int length3 = dArr2[0].length;
        double[] dArr4 = new double[length];
        for (int i = 0; i < length3; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                dArr4[i2] = dArr2[i2][i];
            }
            for (int i3 = 0; i3 < length2; i3++) {
                double[] dArr5 = dArr[i3];
                double d = 0.0d;
                for (int i4 = 0; i4 < length; i4++) {
                    d += dArr5[i4] * dArr4[i4];
                }
                dArr3[i3][i] = d;
            }
        }
        return dArr3;
    }

    public static int[][] Multiply(int[][] iArr, int[][] iArr2) {
        if (iArr[0].length != iArr2.length) {
            throw new IllegalArgumentException("Illegal matrix dimensions.");
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr2[0].length);
        int length = iArr[0].length;
        int length2 = iArr.length;
        int length3 = iArr2[0].length;
        int[] iArr4 = new int[length];
        for (int i = 0; i < length3; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr4[i2] = iArr2[i2][i];
            }
            for (int i3 = 0; i3 < length2; i3++) {
                int[] iArr5 = iArr[i3];
                int i4 = 0;
                for (int i5 = 0; i5 < length; i5++) {
                    i4 += iArr5[i5] * iArr4[i5];
                }
                iArr3[i3][i] = i4;
            }
        }
        return iArr3;
    }

    public static float[][] Multiply(float[][] fArr, float[][] fArr2) {
        if (fArr[0].length != fArr2.length) {
            throw new IllegalArgumentException("Illegal matrix dimensions.");
        }
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr2[0].length);
        int length = fArr[0].length;
        int length2 = fArr.length;
        int length3 = fArr2[0].length;
        float[] fArr4 = new float[length];
        for (int i = 0; i < length3; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                fArr4[i2] = fArr2[i2][i];
            }
            for (int i3 = 0; i3 < length2; i3++) {
                float[] fArr5 = fArr[i3];
                float f = 0.0f;
                for (int i4 = 0; i4 < length; i4++) {
                    f += fArr5[i4] * fArr4[i4];
                }
                fArr3[i3][i] = f;
            }
        }
        return fArr3;
    }

    public static double[][] Multiply(double[][] dArr, double d) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr2[i][i2] = dArr[i][i2] * d;
            }
        }
        return dArr2;
    }

    public static float[][] Multiply(float[][] fArr, float f) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr[0].length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                fArr2[i][i2] = fArr[i][i2] * f;
            }
        }
        return fArr2;
    }

    public static int[][] Multiply(int[][] iArr, int i) {
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr[0].length);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            for (int i3 = 0; i3 < iArr[0].length; i3++) {
                iArr2[i2][i3] = iArr[i2][i3] * i;
            }
        }
        return iArr2;
    }

    public static double[][] MultiplyByDiagonal(double[][] dArr, double[] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr2.length);
        for (int i = 0; i < dArr3.length; i++) {
            for (int i2 = 0; i2 < dArr3[0].length; i2++) {
                dArr3[i][i2] = dArr[i][i2] * dArr2[i2];
            }
        }
        return dArr3;
    }

    public static double[][] MultiplyByTranspose(double[][] dArr) {
        return Multiply(dArr, Transpose(dArr));
    }

    public static int[][] MultiplyByTranspose(int[][] iArr) {
        return Multiply(iArr, Transpose(iArr));
    }

    public static float[][] MultiplyByTranspose(float[][] fArr) {
        return Multiply(fArr, Transpose(fArr));
    }

    public static double[][] MultiplyByTranspose(double[][] dArr, double[][] dArr2) {
        return Multiply(dArr, Transpose(dArr2));
    }

    public static int[][] MultiplyByTranspose(int[][] iArr, int[][] iArr2) {
        return Multiply(iArr, Transpose(iArr2));
    }

    public static float[][] MultiplyByTranspose(float[][] fArr, float[][] fArr2) {
        return Multiply(fArr, Transpose(fArr2));
    }

    public static double[] MultiplyByTranspose(double[][] dArr, double[] dArr2) {
        if (dArr[0].length != dArr2.length) {
            throw new IllegalArgumentException("The columns of the matrix A must be the same of the vector B");
        }
        double[] dArr3 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            double d = 0.0d;
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                d += dArr[i][i2] * dArr2[i2];
            }
            dArr3[i] = d;
        }
        return dArr3;
    }

    public static int[] MultiplyByTranspose(int[][] iArr, int[] iArr2) {
        if (iArr[0].length != iArr2.length) {
            throw new IllegalArgumentException("The columns of the matrix A must be the same of the vector B");
        }
        int[] iArr3 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            int i2 = 0;
            for (int i3 = 0; i3 < iArr[0].length; i3++) {
                i2 += iArr[i][i3] * iArr2[i3];
            }
            iArr3[i] = i2;
        }
        return iArr3;
    }

    public static float[] MultiplyByTranspose(float[][] fArr, float[] fArr2) {
        if (fArr[0].length != fArr2.length) {
            throw new IllegalArgumentException("The columns of the matrix A must be the same of the vector B");
        }
        float[] fArr3 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            float f = 0.0f;
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                f += fArr[i][i2] * fArr2[i2];
            }
            fArr3[i] = f;
        }
        return fArr3;
    }

    public static double Norm1(double[][] dArr) {
        double dMax = 0.0d;
        for (int i = 0; i < dArr[0].length; i++) {
            double dAbs = 0.0d;
            for (double[] dArr2 : dArr) {
                dAbs += Math.abs(dArr2[i]);
            }
            dMax = Math.max(dMax, dAbs);
        }
        return dMax;
    }

    public static int Norm1(int[][] iArr) {
        int iMax = 0;
        for (int i = 0; i < iArr[0].length; i++) {
            int iAbs = 0;
            for (int[] iArr2 : iArr) {
                iAbs += Math.abs(iArr2[i]);
            }
            iMax = Math.max(iMax, iAbs);
        }
        return iMax;
    }

    public static float Norm1(float[][] fArr) {
        float fMax = 0.0f;
        for (int i = 0; i < fArr[0].length; i++) {
            float fAbs = 0.0f;
            for (float[] fArr2 : fArr) {
                fAbs += Math.abs(fArr2[i]);
            }
            fMax = Math.max(fMax, fAbs);
        }
        return fMax;
    }

    public static double Norm2(double[][] dArr) {
        return new SingularValueDecomposition(dArr).getS()[0][0];
    }

    public static double NormF(double[][] dArr) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double dPow = Math.pow(Math.abs(dArr2[i]), 2.0d) + d;
                i++;
                d = dPow;
            }
        }
        return Math.sqrt(d);
    }

    public static double NormF(int[][] iArr) {
        double d = 0.0d;
        for (int[] iArr2 : iArr) {
            int i = 0;
            while (i < iArr[0].length) {
                double dPow = Math.pow(Math.abs(iArr2[i]), 2.0d) + d;
                i++;
                d = dPow;
            }
        }
        return Math.sqrt(d);
    }

    public static float NormF(float[][] fArr) {
        float f = 0.0f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float fPow = (float) (((double) f) + Math.pow(Math.abs(fArr2[i]), 2.0d));
                i++;
                f = fPow;
            }
        }
        return (float) Math.sqrt(f);
    }

    public static double NormP(double[] dArr, int i) {
        double dPow = 0.0d;
        for (double d : dArr) {
            dPow += Math.pow(Math.abs(d), i);
        }
        return Math.pow(dPow, 1.0d / ((double) i));
    }

    public static double[][] OuterProduct(double[] dArr) {
        return OuterProduct(dArr, dArr);
    }

    public static double[][] OuterProduct(double[] dArr, double[] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr2.length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr3[i][i2] = dArr[i] * dArr2[i2];
            }
        }
        return dArr3;
    }

    public static int[][] OuterProduct(int[] iArr) {
        return OuterProduct(iArr, iArr);
    }

    public static int[][] OuterProduct(int[] iArr, int[] iArr2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr2.length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr2.length; i2++) {
                iArr3[i][i2] = iArr[i] * iArr2[i2];
            }
        }
        return iArr3;
    }

    public static float[][] OuterProduct(float[] fArr) {
        return OuterProduct(fArr, fArr);
    }

    public static float[][] OuterProduct(float[] fArr, float[] fArr2) {
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr2.length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr2.length; i2++) {
                fArr3[i][i2] = fArr[i] * fArr2[i2];
            }
        }
        return fArr3;
    }

    public static double[][] PseudoInverse(double[][] dArr) {
        return new SingularValueDecomposition(dArr).inverse();
    }

    public static double Trace(double[][] dArr) {
        if (isSquare(dArr)) {
            double d = 0.0d;
            for (int i = 0; i < dArr.length; i++) {
                d += dArr[i][i];
            }
            return d;
        }
        throw new IllegalArgumentException("The matrix must be square.");
    }

    public static int Trace(int[][] iArr) {
        if (isSquare(iArr)) {
            int i = 0;
            for (int i2 = 0; i2 < iArr.length; i2++) {
                i += iArr[i2][i2];
            }
            return i;
        }
        throw new IllegalArgumentException("The matrix must be square.");
    }

    public static float Trace(float[][] fArr) {
        if (isSquare(fArr)) {
            float f = 0.0f;
            for (int i = 0; i < fArr.length; i++) {
                f += fArr[i][i];
            }
            return f;
        }
        throw new IllegalArgumentException("The matrix must be square.");
    }

    public static double[][] Transpose(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr[0].length, dArr.length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr2[i2][i] = dArr[i][i2];
            }
        }
        return dArr2;
    }

    public static int[][] Transpose(int[][] iArr) {
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr[0].length, iArr.length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                iArr2[i2][i] = iArr[i][i2];
            }
        }
        return iArr2;
    }

    public static float[][] Transpose(float[][] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr[0].length, fArr.length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                fArr2[i2][i] = fArr[i][i2];
            }
        }
        return fArr2;
    }

    public static <E> E[][] Transpose(E[][] eArr) {
        E[][] eArr2 = (E[][]) ((Object[][]) Array.newInstance(eArr[0][0].getClass(), eArr[0].length, eArr.length));
        for (int i = 0; i < eArr.length; i++) {
            for (int i2 = 0; i2 < eArr[0].length; i2++) {
                eArr2[i2][i] = eArr[i][i2];
            }
        }
        return eArr2;
    }

    public static double[][] Identity(int i) {
        int iMax = Math.max(i, 2);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iMax, iMax);
        for (int i2 = 0; i2 < iMax; i2++) {
            for (int i3 = 0; i3 < iMax; i3++) {
                dArr[i2][i3] = 0.0d;
            }
        }
        for (int i4 = 0; i4 < iMax; i4++) {
            dArr[i4][i4] = 1.0d;
        }
        return dArr;
    }

    public static double[][] Identity(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        int i3 = 0;
        while (i3 < i) {
            int i4 = 0;
            while (i4 < i2) {
                dArr[i3][i4] = i3 == i4 ? 1.0d : 0.0d;
                i4++;
            }
            i3++;
        }
        return dArr;
    }

    public static double[][] Inverse(double[][] dArr) {
        return new LUDecomposition(dArr).inverse();
    }

    public static double Max(double[][] dArr) {
        double d = -2.147483648E9d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double dMax = Math.max(d, dArr2[i]);
                i++;
                d = dMax;
            }
        }
        return d;
    }

    public static double Max(double[] dArr) {
        double dMax = -2.147483648E9d;
        for (double d : dArr) {
            dMax = Math.max(dMax, d);
        }
        return dMax;
    }

    public static int Max(int[] iArr) {
        int iMax = Integer.MIN_VALUE;
        for (int i : iArr) {
            iMax = Math.max(iMax, i);
        }
        return iMax;
    }

    public static float Max(float[] fArr) {
        float fMax = -2.1474836E9f;
        for (float f : fArr) {
            fMax = Math.max(fMax, f);
        }
        return fMax;
    }

    public static int Max(int[][] iArr) {
        int i = Integer.MIN_VALUE;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                int iMax = Math.max(i, iArr2[i2]);
                i2++;
                i = iMax;
            }
        }
        return i;
    }

    public static float Max(float[][] fArr) {
        float f = -2.1474836E9f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float fMax = Math.max(f, fArr2[i]);
                i++;
                f = fMax;
            }
        }
        return f;
    }

    public static int MaxIndex(double[] dArr) {
        double d = Double.MIN_VALUE;
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double dMax = Math.max(d, dArr[i2]);
            if (dMax > d) {
                d = dMax;
                i = i2;
            }
        }
        return i;
    }

    public static IntPoint MaxIndex(double[][] dArr) {
        IntPoint intPoint = new IntPoint();
        double d = Double.MIN_VALUE;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dMax = Math.max(d, dArr[i][i2]);
                if (dMax > d) {
                    intPoint.setXY(i, i2);
                } else {
                    dMax = d;
                }
                i2++;
                d = dMax;
            }
        }
        return intPoint;
    }

    public static int MaxIndex(int[] iArr) {
        int i = Integer.MIN_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int iMax = Math.max(i, iArr[i3]);
            if (iMax > i) {
                i = iMax;
                i2 = i3;
            }
        }
        return i2;
    }

    public static IntPoint MaxIndex(int[][] iArr) {
        IntPoint intPoint = new IntPoint();
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 0;
            while (i3 < iArr[0].length) {
                int iMax = Math.max(i, iArr[i2][i3]);
                if (iMax > i) {
                    intPoint.setXY(i2, i3);
                } else {
                    iMax = i;
                }
                i3++;
                i = iMax;
            }
        }
        return intPoint;
    }

    public static int MaxIndex(float[] fArr) {
        float f = Float.MIN_VALUE;
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float fMax = Math.max(f, fArr[i2]);
            if (fMax > f) {
                f = fMax;
                i = i2;
            }
        }
        return i;
    }

    public static IntPoint MaxIndex(float[][] fArr) {
        IntPoint intPoint = new IntPoint();
        float f = Float.MIN_VALUE;
        for (int i = 0; i < fArr.length; i++) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                float fMax = Math.max(f, fArr[i][i2]);
                if (fMax > f) {
                    intPoint.setXY(i, i2);
                } else {
                    fMax = f;
                }
                i2++;
                f = fMax;
            }
        }
        return intPoint;
    }

    public static double Mean(double[][] dArr) {
        double d = 0.0d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double d2 = dArr2[i] + d;
                i++;
                d = d2;
            }
        }
        return d / ((double) (dArr.length * dArr[0].length));
    }

    public static double Mean(int[][] iArr) {
        double d = 0.0d;
        for (int[] iArr2 : iArr) {
            int i = 0;
            while (i < iArr[0].length) {
                double d2 = ((double) iArr2[i]) + d;
                i++;
                d = d2;
            }
        }
        return d / ((double) (iArr.length * iArr[0].length));
    }

    public static float Mean(float[][] fArr) {
        float f = 0.0f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float f2 = fArr2[i] + f;
                i++;
                f = f2;
            }
        }
        return f / (fArr.length * fArr[0].length);
    }

    public static int[][] MemberwiseClone(int[][] iArr) {
        int[][] iArr2 = new int[iArr.length][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < iArr.length) {
                iArr2[i2] = (int[]) iArr[i2].clone();
                i = i2 + 1;
            } else {
                return iArr2;
            }
        }
    }

    public static float[][] MemberwiseClone(float[][] fArr) {
        float[][] fArr2 = new float[fArr.length][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < fArr.length) {
                fArr2[i2] = (float[]) fArr[i2].clone();
                i = i2 + 1;
            } else {
                return fArr2;
            }
        }
    }

    public static double[][] MemberwiseClone(double[][] dArr) {
        double[][] dArr2 = new double[dArr.length][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < dArr.length) {
                dArr2[i2] = (double[]) dArr[i2].clone();
                i = i2 + 1;
            } else {
                return dArr2;
            }
        }
    }

    public static double Min(double[] dArr) {
        double dMin = 2.147483647E9d;
        for (double d : dArr) {
            dMin = Math.min(dMin, d);
        }
        return dMin;
    }

    public static double Min(double[][] dArr) {
        double d = 2.147483647E9d;
        for (double[] dArr2 : dArr) {
            int i = 0;
            while (i < dArr[0].length) {
                double dMin = Math.min(d, dArr2[i]);
                i++;
                d = dMin;
            }
        }
        return d;
    }

    public static int Min(int[] iArr) {
        int iMin = Integer.MAX_VALUE;
        for (int i : iArr) {
            iMin = Math.min(iMin, i);
        }
        return iMin;
    }

    public static float Min(float[] fArr) {
        float fMin = 2.1474836E9f;
        for (float f : fArr) {
            fMin = Math.min(fMin, f);
        }
        return fMin;
    }

    public static int Min(int[][] iArr) {
        int i = Integer.MAX_VALUE;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                int iMin = Math.min(i, iArr2[i2]);
                i2++;
                i = iMin;
            }
        }
        return i;
    }

    public static float Min(float[][] fArr) {
        float f = 2.1474836E9f;
        for (float[] fArr2 : fArr) {
            int i = 0;
            while (i < fArr[0].length) {
                float fMin = Math.min(f, fArr2[i]);
                i++;
                f = fMin;
            }
        }
        return f;
    }

    public static int MinIndex(double[] dArr) {
        double d = Double.MAX_VALUE;
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double dMin = Math.min(d, dArr[i2]);
            if (dMin < d) {
                d = dMin;
                i = i2;
            }
        }
        return i;
    }

    public static IntPoint MinIndex(double[][] dArr) {
        IntPoint intPoint = new IntPoint();
        double d = Double.MAX_VALUE;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dMin = Math.min(d, dArr[i][i2]);
                if (dMin < d) {
                    intPoint.setXY(i, i2);
                } else {
                    dMin = d;
                }
                i2++;
                d = dMin;
            }
        }
        return intPoint;
    }

    public static double[] MinMax(double[][] dArr) {
        double d = Double.MAX_VALUE;
        double d2 = -1.7976931348623157E308d;
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                double dMin = Math.min(d, dArr[i][i2]);
                double dMax = Math.max(d2, dArr[i][i2]);
                i2++;
                d2 = dMax;
                d = dMin;
            }
        }
        return new double[]{d, d2};
    }

    public static int[] MinMax(int[][] iArr) {
        int i = Integer.MAX_VALUE;
        int i2 = -2147483647;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = 0;
            while (i4 < iArr[0].length) {
                int iMin = Math.min(i, iArr[i3][i4]);
                int iMax = Math.max(i2, iArr[i3][i4]);
                i4++;
                i2 = iMax;
                i = iMin;
            }
        }
        return new int[]{i, i2};
    }

    public static float[] MinMax(float[][] fArr) {
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        for (int i = 0; i < fArr.length; i++) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                float fMin = Math.min(f, fArr[i][i2]);
                float fMax = Math.max(f2, fArr[i][i2]);
                i2++;
                f2 = fMax;
                f = fMin;
            }
        }
        return new float[]{f, f2};
    }

    public static int MinIndex(int[] iArr) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int iMin = Math.min(i, iArr[i3]);
            if (iMin < i) {
                i = iMin;
                i2 = i3;
            }
        }
        return i2;
    }

    public static IntPoint MinIndex(int[][] iArr) {
        IntPoint intPoint = new IntPoint();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 0;
            while (i3 < iArr[0].length) {
                int iMin = Math.min(i, iArr[i2][i3]);
                if (iMin < i) {
                    intPoint.setXY(i2, i3);
                } else {
                    iMin = i;
                }
                i3++;
                i = iMin;
            }
        }
        return intPoint;
    }

    public static int MinIndex(float[] fArr) {
        float f = Float.MAX_VALUE;
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float fMin = Math.min(f, fArr[i2]);
            if (fMin < f) {
                f = fMin;
                i = i2;
            }
        }
        return i;
    }

    public static IntPoint MinIndex(float[][] fArr) {
        IntPoint intPoint = new IntPoint();
        float f = Float.MAX_VALUE;
        for (int i = 0; i < fArr.length; i++) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                float fMin = Math.min(f, fArr[i][i2]);
                if (fMin < f) {
                    intPoint.setXY(i, i2);
                } else {
                    fMin = f;
                }
                i2++;
                f = fMin;
            }
        }
        return intPoint;
    }

    public static boolean isEqual(double[][] dArr, double[][] dArr2) {
        if (dArr.length != dArr2.length || dArr[0].length != dArr2[0].length) {
            throw new IllegalArgumentException("The matrix A must be the same size of the B.");
        }
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                if (dArr[i][i2] != dArr2[i][i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isEqual(int[][] iArr, int[][] iArr2) {
        if (iArr.length != iArr2.length || iArr[0].length != iArr2[0].length) {
            throw new IllegalArgumentException("The matrix A must be the same size of the B.");
        }
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                if (iArr[i][i2] != iArr2[i][i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isEqual(float[][] fArr, float[][] fArr2) {
        if (fArr.length != fArr2.length || fArr[0].length != fArr2[0].length) {
            throw new IllegalArgumentException("The matrix A must be the same size of the B.");
        }
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                if (fArr[i][i2] != fArr2[i][i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNonNegative(double[][] dArr) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                if (dArr2[i] < 0.0d) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNonNegative(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            for (int i = 0; i < iArr[0].length; i++) {
                if (iArr2[i] < 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNonNegative(float[][] fArr) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                if (fArr2[i] < 0.0f) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isSquare(double[][] dArr) {
        return dArr.length * dArr.length == dArr.length * dArr[0].length;
    }

    public static boolean isSquare(int[][] iArr) {
        return iArr.length * iArr.length == iArr.length * iArr[0].length;
    }

    public static boolean isSquare(float[][] fArr) {
        return fArr.length * fArr.length == fArr.length * fArr[0].length;
    }

    public static boolean isSymmetric(double[][] dArr) {
        return isEqual(dArr, Transpose(dArr));
    }

    public static boolean isSymmetric(int[][] iArr) {
        return isEqual(iArr, Transpose(iArr));
    }

    public static boolean isSymmetric(float[][] fArr) {
        return isEqual(fArr, Transpose(fArr));
    }

    public static boolean isZero(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(float[] fArr) {
        for (float f : fArr) {
            if (f != 0.0f) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(double[] dArr) {
        for (double d : dArr) {
            if (d != 0.0d) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            for (int i = 0; i < iArr[0].length; i++) {
                if (iArr2[i] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isZero(float[][] fArr) {
        for (float[] fArr2 : fArr) {
            for (int i = 0; i < fArr[0].length; i++) {
                if (fArr2[i] != 0.0f) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isZero(double[][] dArr) {
        for (double[] dArr2 : dArr) {
            for (int i = 0; i < dArr[0].length; i++) {
                if (dArr2[i] != 0.0d) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int Rank(double[][] dArr) {
        return new SingularValueDecomposition(dArr, false, false).rank();
    }

    public static int Rank(int[][] iArr) {
        return new SingularValueDecomposition(ArraysUtil.toDouble(iArr), false, false).rank();
    }

    public static int Rank(float[][] fArr) {
        return new SingularValueDecomposition(ArraysUtil.toDouble(fArr), false, false).rank();
    }

    public static int[][] RemoveColumns(int[][] iArr, int[] iArr2) {
        if (iArr[0].length - iArr2.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr[0].length - iArr2.length);
        for (int i = 0; i < iArr.length; i++) {
            int i2 = 0;
            int i3 = 0;
            int i4 = iArr2[0];
            for (int i5 = 0; i5 < iArr[0].length; i5++) {
                if (i5 == i4) {
                    if (i3 < iArr2.length - 1) {
                        i3++;
                        i4 = iArr2[i3];
                    }
                } else {
                    iArr3[i][i2] = iArr[i][i5];
                    i2++;
                }
            }
        }
        return iArr3;
    }

    public static double[][] RemoveColumn(double[][] dArr, int i) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length - 1);
        for (int i2 = 0; i2 < dArr.length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < dArr[0].length; i4++) {
                if (i4 != i) {
                    dArr2[i2][i3] = dArr[i2][i4];
                    i3++;
                }
            }
        }
        return dArr2;
    }

    public static int[][] RemoveColumn(int[][] iArr, int i) {
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr[0].length - 1);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < iArr[0].length; i4++) {
                if (i4 != i) {
                    iArr2[i2][i3] = iArr[i2][i4];
                    i3++;
                }
            }
        }
        return iArr2;
    }

    public static float[][] RemoveColumn(float[][] fArr, int i) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr[0].length - 1);
        for (int i2 = 0; i2 < fArr.length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < fArr[0].length; i4++) {
                if (i4 != i) {
                    fArr2[i2][i3] = fArr[i2][i4];
                    i3++;
                }
            }
        }
        return fArr2;
    }

    public static double[][] RemoveColumns(double[][] dArr, int[] iArr) {
        if (dArr[0].length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length - iArr.length);
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            int i3 = 0;
            int i4 = iArr[0];
            for (int i5 = 0; i5 < dArr[0].length; i5++) {
                if (i5 == i4) {
                    if (i3 < iArr.length - 1) {
                        i3++;
                        i4 = iArr[i3];
                    }
                } else {
                    dArr2[i][i2] = dArr[i][i5];
                    i2++;
                }
            }
        }
        return dArr2;
    }

    public static float[][] RemoveColumns(float[][] fArr, int[] iArr) {
        if (fArr[0].length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length, fArr[0].length - iArr.length);
        for (int i = 0; i < fArr.length; i++) {
            int i2 = 0;
            int i3 = 0;
            int i4 = iArr[0];
            for (int i5 = 0; i5 < fArr[0].length; i5++) {
                if (i5 == i4) {
                    if (i3 < iArr.length - 1) {
                        i3++;
                        i4 = iArr[i3];
                    }
                } else {
                    fArr2[i][i2] = fArr[i][i5];
                    i2++;
                }
            }
        }
        return fArr2;
    }

    public static double[] RemoveColumn(double[] dArr, int i) {
        if (dArr.length - i <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        double[] dArr2 = new double[dArr.length - 1];
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != i) {
                dArr2[i2] = dArr[i3];
                i2++;
            }
        }
        return dArr2;
    }

    public static int[] RemoveColumn(int[] iArr, int i) {
        if (iArr.length - i <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        int[] iArr2 = new int[iArr.length - 1];
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (i3 != i) {
                iArr2[i2] = iArr[i3];
                i2++;
            }
        }
        return iArr2;
    }

    public static float[] RemoveColumn(float[] fArr, int i) {
        if (fArr.length - i <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        float[] fArr2 = new float[fArr.length - 1];
        int i2 = 0;
        for (int i3 = 0; i3 < fArr.length; i3++) {
            if (i3 != i) {
                fArr2[i2] = fArr[i3];
                i2++;
            }
        }
        return fArr2;
    }

    public static <T> T[] RemoveColumn(T[] tArr, int i) {
        if (tArr.length - i <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr[0].getClass(), tArr.length - 1));
        int i2 = 0;
        for (int i3 = 0; i3 < tArr.length; i3++) {
            if (i3 != i) {
                tArr2[i2] = tArr[i3];
                i2++;
            }
        }
        return tArr2;
    }

    public static double[] RemoveColumns(double[] dArr, int[] iArr) {
        if (dArr.length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        double[] dArr2 = new double[dArr.length - iArr.length];
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            boolean z = false;
            for (int i3 : iArr) {
                if (i3 == i2) {
                    z = true;
                }
            }
            if (!z) {
                dArr2[i] = dArr[i2];
                i++;
            }
        }
        return dArr2;
    }

    public static int[] RemoveColumns(int[] iArr, int[] iArr2) {
        if (iArr.length - iArr2.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        int[] iArr3 = new int[iArr.length - iArr2.length];
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            boolean z = false;
            for (int i3 : iArr2) {
                if (i3 == i2) {
                    z = true;
                }
            }
            if (!z) {
                iArr3[i] = iArr[i2];
                i++;
            }
        }
        return iArr3;
    }

    public static float[] RemoveColumns(float[] fArr, int[] iArr) {
        if (fArr.length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        float[] fArr2 = new float[fArr.length - iArr.length];
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            boolean z = false;
            for (int i3 : iArr) {
                if (i3 == i2) {
                    z = true;
                }
            }
            if (!z) {
                fArr2[i] = fArr[i2];
                i++;
            }
        }
        return fArr2;
    }

    public static <T> T[] RemoveColumns(T[] tArr, int[] iArr) {
        if (tArr.length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of columns is less or equal zero.");
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr[0].getClass(), tArr.length - iArr.length));
        int i = 0;
        for (int i2 = 0; i2 < tArr.length; i2++) {
            boolean z = false;
            for (int i3 : iArr) {
                if (i3 == i2) {
                    z = true;
                }
            }
            if (!z) {
                tArr2[i] = tArr[i2];
                i++;
            }
        }
        return tArr2;
    }

    public static double[][] RemoveRow(double[][] dArr, int i) {
        if (dArr.length - 1 <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length - 1, dArr[0].length);
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != i) {
                System.arraycopy(dArr[i3], 0, dArr2[i2], 0, dArr[0].length);
                i2++;
            }
        }
        return dArr2;
    }

    public static int[][] RemoveRow(int[][] iArr, int i) {
        if (iArr.length - 1 <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length - 1, iArr[0].length);
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (i3 != i) {
                System.arraycopy(iArr[i3], 0, iArr2[i2], 0, iArr[0].length);
                i2++;
            }
        }
        return iArr2;
    }

    public static float[][] RemoveRow(float[][] fArr, int i) {
        if (fArr.length - 1 <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length - 1, fArr[0].length);
        int i2 = 0;
        for (int i3 = 0; i3 < fArr.length; i3++) {
            if (i3 != i) {
                System.arraycopy(fArr[i3], 0, fArr2[i2], 0, fArr[0].length);
                i2++;
            }
        }
        return fArr2;
    }

    public static <T> T[][] RemoveRow(T[][] tArr, int i) {
        if (tArr.length - 1 <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        T[][] tArr2 = (T[][]) ((Object[][]) Array.newInstance(tArr[0][0].getClass(), tArr.length - 1, tArr[0].length));
        int i2 = 0;
        for (int i3 = 0; i3 < tArr.length; i3++) {
            if (i3 != i) {
                System.arraycopy(tArr[i3], 0, tArr2[i2], 0, tArr[0].length);
                i2++;
            }
        }
        return tArr2;
    }

    public static int[][] RemoveRows(int[][] iArr, int[] iArr2) {
        if (iArr.length - iArr2.length <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length - iArr2.length, iArr[0].length);
        int i = 0;
        int i2 = 0;
        int i3 = iArr2[0];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (i4 == i3) {
                if (i2 < iArr2.length - 1) {
                    i2++;
                    i3 = iArr2[i2];
                }
            } else {
                for (int i5 = 0; i5 < iArr[0].length; i5++) {
                    iArr3[i][i5] = iArr[i4][i5];
                }
                i++;
            }
        }
        return iArr3;
    }

    public static double[][] RemoveRows(double[][] dArr, int[] iArr) {
        if (dArr.length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length - iArr.length, dArr[0].length);
        int i = 0;
        int i2 = 0;
        int i3 = iArr[0];
        for (int i4 = 0; i4 < dArr.length; i4++) {
            if (i4 == i3) {
                if (i2 < iArr.length - 1) {
                    i2++;
                    i3 = iArr[i2];
                }
            } else {
                for (int i5 = 0; i5 < dArr[0].length; i5++) {
                    dArr2[i][i5] = dArr[i4][i5];
                }
                i++;
            }
        }
        return dArr2;
    }

    public static float[][] RemoveRows(float[][] fArr, int[] iArr) {
        if (fArr.length - iArr.length <= 0) {
            throw new IllegalArgumentException("The number of rows is less or equal zero.");
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length - iArr.length, fArr[0].length);
        int i = 0;
        int i2 = 0;
        int i3 = iArr[0];
        for (int i4 = 0; i4 < fArr.length; i4++) {
            if (i4 == i3) {
                if (i2 < iArr.length - 1) {
                    i2++;
                    i3 = iArr[i2];
                }
            } else {
                for (int i5 = 0; i5 < fArr[0].length; i5++) {
                    fArr2[i][i5] = fArr[i4][i5];
                }
                i++;
            }
        }
        return fArr2;
    }

    public static double[][] Reshape(double[] dArr, int i, int i2) {
        if (dArr.length != i * i2) {
            throw new IllegalArgumentException("The size of vector must be the same of product of m and n.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = i4;
            int i6 = 0;
            while (i6 < i2) {
                dArr2[i3][i6] = dArr[i5];
                i6++;
                i5++;
            }
            i3++;
            i4 = i5;
        }
        return dArr2;
    }

    public static int[][] Reshape(int[] iArr, int i, int i2) {
        if (iArr.length != i * i2) {
            throw new IllegalArgumentException("The size of vector must be the same of product of m and n.");
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i, i2);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = i4;
            int i6 = 0;
            while (i6 < i2) {
                iArr2[i3][i6] = iArr[i5];
                i6++;
                i5++;
            }
            i3++;
            i4 = i5;
        }
        return iArr2;
    }

    public static float[][] Reshape(float[] fArr, int i, int i2) {
        if (fArr.length != i * i2) {
            throw new IllegalArgumentException("The size of vector must be the same of product of m and n.");
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, i, i2);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = i4;
            int i6 = 0;
            while (i6 < i2) {
                fArr2[i3][i6] = fArr[i5];
                i6++;
                i5++;
            }
            i3++;
            i4 = i5;
        }
        return fArr2;
    }

    public static double[] Reshape(double[][] dArr) {
        double[] dArr2 = new double[dArr.length * dArr[0].length];
        int i = 0;
        for (double[] dArr3 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                dArr2[i] = dArr3[i2];
                i2++;
                i++;
            }
        }
        return dArr2;
    }

    public static int[] Reshape(int[][] iArr) {
        int[] iArr2 = new int[iArr.length * iArr[0].length];
        int i = 0;
        for (int[] iArr3 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                iArr2[i] = iArr3[i2];
                i2++;
                i++;
            }
        }
        return iArr2;
    }

    public static float[] Reshape(float[][] fArr) {
        float[] fArr2 = new float[fArr.length * fArr[0].length];
        int i = 0;
        for (float[] fArr3 : fArr) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                fArr2[i] = fArr3[i2];
                i2++;
                i++;
            }
        }
        return fArr2;
    }

    public static double[][] SubMatrix(double[][] dArr, int i, int i2) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                dArr2[i3][i4] = dArr[i3][i4];
            }
        }
        return dArr2;
    }

    public static int[] SubMatrix(int[] iArr, int i) {
        if (i < 0 || i > iArr.length) {
            throw new IllegalArgumentException("first");
        }
        return i == 0 ? iArr : Submatrix(iArr, 0, i - 1);
    }

    public static double[] SubMatrix(double[] dArr, int i) {
        if (i < 0 || i > dArr.length) {
            throw new IllegalArgumentException("first");
        }
        return i == 0 ? dArr : Submatrix(dArr, 0, i - 1);
    }

    public static int[] Submatrix(int[] iArr, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("startRow");
        }
        if (i2 >= iArr.length) {
            throw new IllegalArgumentException("endRow");
        }
        int[] iArr2 = new int[(i2 - i) + 1];
        for (int i3 = i; i3 <= i2; i3++) {
            iArr2[i3 - i] = iArr[i3];
        }
        return iArr2;
    }

    public static double[] Submatrix(double[] dArr, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("startRow");
        }
        if (i2 >= dArr.length) {
            throw new IllegalArgumentException("endRow");
        }
        double[] dArr2 = new double[(i2 - i) + 1];
        for (int i3 = i; i3 <= i2; i3++) {
            dArr2[i3 - i] = dArr[i3];
        }
        return dArr2;
    }

    public static double[][] Submatrix(double[][] dArr, int i, int i2, int i3, int i4) {
        if (i > i2 || i < 0 || i >= dArr.length || i2 < 0 || i2 >= dArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (i2 - i) + 1, (i4 - i3) + 1);
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                dArr2[i5 - i][i6 - i3] = dArr[i5][i6];
            }
        }
        return dArr2;
    }

    public static int[][] Submatrix(int[][] iArr, int i, int i2, int i3, int i4) {
        if (i > i2 || i < 0 || i >= iArr.length || i2 < 0 || i2 >= iArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, (i2 - i) + 1, (i4 - i3) + 1);
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                iArr2[i5 - i][i6 - i3] = iArr[i5][i6];
            }
        }
        return iArr2;
    }

    public static float[][] Submatrix(float[][] fArr, int i, int i2, int i3, int i4) {
        if (i > i2 || i < 0 || i >= fArr.length || i2 < 0 || i2 >= fArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, (i2 - i) + 1, (i4 - i3) + 1);
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                fArr2[i5 - i][i6 - i3] = fArr[i5][i6];
            }
        }
        return fArr2;
    }

    public static double[][] Submatrix(double[][] dArr, int i, int i2, int[] iArr) {
        if (i > i2 || i < 0 || i >= dArr.length || i2 < 0 || i2 >= dArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        if (iArr == null) {
            iArr = Indices(0, dArr[0].length);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (i2 - i) + 1, iArr.length);
        for (int i3 = i; i3 <= i2; i3++) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] < 0 || iArr[i4] >= dArr[0].length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                dArr2[i3 - i][i4] = dArr[i3][iArr[i4]];
            }
        }
        return dArr2;
    }

    public static int[][] Submatrix(int[][] iArr, int i, int i2, int[] iArr2) {
        if (i > i2 || i < 0 || i >= iArr.length || i2 < 0 || i2 >= iArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        if (iArr2 == null) {
            iArr2 = Indices(0, iArr[0].length);
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, (i2 - i) + 1, iArr2.length);
        for (int i3 = i; i3 <= i2; i3++) {
            for (int i4 = 0; i4 < iArr2.length; i4++) {
                if (iArr2[i4] < 0 || iArr2[i4] >= iArr[0].length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                iArr3[i3 - i][i4] = iArr[i3][iArr2[i4]];
            }
        }
        return iArr3;
    }

    public static float[][] Submatrix(float[][] fArr, int i, int i2, int[] iArr) {
        if (i > i2 || i < 0 || i >= fArr.length || i2 < 0 || i2 >= fArr.length) {
            throw new IllegalArgumentException("Argument out of range.");
        }
        if (iArr == null) {
            iArr = Indices(0, fArr[0].length);
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, (i2 - i) + 1, iArr.length);
        for (int i3 = i; i3 <= i2; i3++) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] < 0 || iArr[i4] >= fArr[0].length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                fArr2[i3 - i][i4] = fArr[i3][iArr[i4]];
            }
        }
        return fArr2;
    }

    public static int[][] Submatrix(int[][] iArr, int[] iArr2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr2.length, iArr[0].length);
        for (int i = 0; i < iArr2.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                if (iArr2[i] < 0 || iArr2[i] >= iArr.length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                iArr3[i][i2] = iArr[iArr2[i]][i2];
            }
        }
        return iArr3;
    }

    public static double[][] Submatrix(double[][] dArr, int[] iArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr.length, dArr[0].length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                if (iArr[i] < 0 || iArr[i] >= dArr.length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                dArr2[i][i2] = dArr[iArr[i]][i2];
            }
        }
        return dArr2;
    }

    public static int[][] Submatrix(int[][] iArr, int[] iArr2, int i, int i2) {
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr2.length, (i2 - i) + 1);
        for (int i3 = 0; i3 < iArr3.length; i3++) {
            for (int i4 = 0; i4 < iArr3[0].length; i4++) {
                if (iArr2[i3] < 0 || iArr2[i3] >= iArr.length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                iArr3[i3][i4] = iArr[iArr2[i3]][i + i4];
            }
        }
        return iArr3;
    }

    public static double[][] Submatrix(double[][] dArr, int[] iArr, int i, int i2) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr.length, (i2 - i) + 1);
        for (int i3 = 0; i3 < dArr2.length; i3++) {
            for (int i4 = 0; i4 < dArr2[0].length; i4++) {
                if (iArr[i3] < 0 || iArr[i3] >= dArr.length) {
                    throw new IllegalArgumentException("Argument out of range.");
                }
                dArr2[i3][i4] = dArr[iArr[i3]][i + i4];
            }
        }
        return dArr2;
    }

    public static double[] toDoubleArray(int[][] iArr) {
        double[] dArr = new double[iArr.length * iArr[0].length];
        int i = 0;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                dArr[i] = iArr2[i2];
                i2++;
                i++;
            }
        }
        return dArr;
    }

    public static double[] toDoubleArray(double[][] dArr) {
        double[] dArr2 = new double[dArr.length * dArr[0].length];
        int i = 0;
        for (double[] dArr3 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                dArr2[i] = dArr3[i2];
                i2++;
                i++;
            }
        }
        return dArr2;
    }

    public static double[] toDoubleArray(float[][] fArr) {
        double[] dArr = new double[fArr.length * fArr[0].length];
        int i = 0;
        for (float[] fArr2 : fArr) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                dArr[i] = fArr2[i2];
                i2++;
                i++;
            }
        }
        return dArr;
    }

    public static double[][] toDoubleMatrix(List<double[]> list) {
        int i = 0;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, list.size(), list.get(0).length);
        while (true) {
            int i2 = i;
            if (i2 < dArr.length) {
                dArr[i2] = list.get(i2);
                i = i2 + 1;
            } else {
                return dArr;
            }
        }
    }

    public static int[] toIntArray(int[][] iArr) {
        int[] iArr2 = new int[iArr.length * iArr[0].length];
        int i = 0;
        for (int[] iArr3 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                iArr2[i] = iArr3[i2];
                i2++;
                i++;
            }
        }
        return iArr2;
    }

    public static int[] toIntArray(double[][] dArr) {
        int[] iArr = new int[dArr.length * dArr[0].length];
        int i = 0;
        for (double[] dArr2 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                iArr[i] = (int) dArr2[i2];
                i2++;
                i++;
            }
        }
        return iArr;
    }

    public static int[] toIntArray(float[][] fArr) {
        int[] iArr = new int[fArr.length * fArr[0].length];
        int i = 0;
        for (float[] fArr2 : fArr) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                iArr[i] = (int) fArr2[i2];
                i2++;
                i++;
            }
        }
        return iArr;
    }

    public static int[][] toIntMatrix(List<int[]> list) {
        int i = 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, list.size(), list.get(0).length);
        while (true) {
            int i2 = i;
            if (i2 < iArr.length) {
                iArr[i2] = list.get(i2);
                i = i2 + 1;
            } else {
                return iArr;
            }
        }
    }

    public static float[] toFloatArray(int[][] iArr) {
        float[] fArr = new float[iArr.length * iArr[0].length];
        int i = 0;
        for (int[] iArr2 : iArr) {
            int i2 = 0;
            while (i2 < iArr[0].length) {
                fArr[i] = iArr2[i2];
                i2++;
                i++;
            }
        }
        return fArr;
    }

    public static float[] toFloatArray(double[][] dArr) {
        float[] fArr = new float[dArr.length * dArr[0].length];
        int i = 0;
        for (double[] dArr2 : dArr) {
            int i2 = 0;
            while (i2 < dArr[0].length) {
                fArr[i] = (float) dArr2[i2];
                i2++;
                i++;
            }
        }
        return fArr;
    }

    public static float[] toFloatArray(float[][] fArr) {
        float[] fArr2 = new float[fArr.length * fArr[0].length];
        int i = 0;
        for (float[] fArr3 : fArr) {
            int i2 = 0;
            while (i2 < fArr[0].length) {
                fArr2[i] = fArr3[i2];
                i2++;
                i++;
            }
        }
        return fArr2;
    }

    public static float[][] toFloatMatrix(List<float[]> list) {
        int i = 0;
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, list.size(), list.get(0).length);
        while (true) {
            int i2 = i;
            if (i2 < fArr.length) {
                fArr[i2] = list.get(i2);
                i = i2 + 1;
            } else {
                return fArr;
            }
        }
    }
}
