package Catalano.Core;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ArraysUtil {
    private ArraysUtil() {
    }

    public static int[] Argsort(final double[] dArr, final boolean z) {
        Integer[] numArr = new Integer[dArr.length];
        for (int i = 0; i < numArr.length; i++) {
            numArr[i] = Integer.valueOf(i);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: Catalano.Core.ArraysUtil.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return (z ? 1 : -1) * Double.compare(dArr[num.intValue()], dArr[num2.intValue()]);
            }
        });
        return asArray(numArr);
    }

    public static int[] Argsort(final int[] iArr, final boolean z) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < numArr.length; i++) {
            numArr[i] = Integer.valueOf(i);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: Catalano.Core.ArraysUtil.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return (z ? 1 : -1) * Integer.compare(iArr[num.intValue()], iArr[num2.intValue()]);
            }
        });
        return asArray(numArr);
    }

    public static int[] Argsort(final float[] fArr, final boolean z) {
        Integer[] numArr = new Integer[fArr.length];
        for (int i = 0; i < numArr.length; i++) {
            numArr[i] = Integer.valueOf(i);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: Catalano.Core.ArraysUtil.3
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Integer num, Integer num2) {
                return (z ? 1 : -1) * Float.compare(fArr[num.intValue()], fArr[num2.intValue()]);
            }
        });
        return asArray(numArr);
    }

    public static int[] Concatenate(int[] iArr, int[] iArr2) {
        int i = 0;
        int[] iArr3 = new int[iArr.length + iArr2.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length) {
            iArr3[i3] = iArr[i2];
            i2++;
            i3++;
        }
        while (i < iArr2.length) {
            iArr3[i3] = iArr2[i];
            i++;
            i3++;
        }
        return iArr3;
    }

    public static double[] Concatenate(double[] dArr, double[] dArr2) {
        int i = 0;
        double[] dArr3 = new double[dArr.length + dArr2.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < dArr.length) {
            dArr3[i3] = dArr[i2];
            i2++;
            i3++;
        }
        while (i < dArr2.length) {
            dArr3[i3] = dArr2[i];
            i++;
            i3++;
        }
        return dArr3;
    }

    public static float[] Concatenate(float[] fArr, float[] fArr2) {
        int i = 0;
        float[] fArr3 = new float[fArr.length + fArr2.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < fArr.length) {
            fArr3[i3] = fArr[i2];
            i2++;
            i3++;
        }
        while (i < fArr2.length) {
            fArr3[i3] = fArr2[i];
            i++;
            i3++;
        }
        return fArr3;
    }

    public static int[] ConcatenateInt(List<int[]> list) {
        int length = 0;
        for (int i = 0; i < list.size(); i++) {
            length += list.get(i).length;
        }
        int[] iArr = new int[length];
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int[] iArr2 = list.get(i3);
            int i4 = 0;
            while (i4 < iArr2.length) {
                iArr[i2] = iArr2[i3];
                i4++;
                i2++;
            }
        }
        return iArr;
    }

    public static double[] ConcatenateDouble(List<double[]> list) {
        int length = 0;
        for (int i = 0; i < list.size(); i++) {
            length += list.get(i).length;
        }
        double[] dArr = new double[length];
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            double[] dArr2 = list.get(i3);
            int i4 = 0;
            while (i4 < dArr2.length) {
                dArr[i2] = dArr2[i3];
                i4++;
                i2++;
            }
        }
        return dArr;
    }

    public static float[] ConcatenateFloat(List<float[]> list) {
        int length = 0;
        for (int i = 0; i < list.size(); i++) {
            length += list.get(i).length;
        }
        float[] fArr = new float[length];
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            float[] fArr2 = list.get(i3);
            int i4 = 0;
            while (i4 < fArr2.length) {
                fArr[i2] = fArr2[i3];
                i4++;
                i2++;
            }
        }
        return fArr;
    }

    public static <T extends Number> int[] asArray(T... tArr) {
        int[] iArr = new int[tArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = tArr[i].intValue();
        }
        return iArr;
    }

    public static void Shuffle(double[] dArr) {
        Random random = new Random();
        for (int length = dArr.length - 1; length > 0; length--) {
            int iNextInt = random.nextInt(length + 1);
            double d = dArr[iNextInt];
            dArr[iNextInt] = dArr[length];
            dArr[length] = d;
        }
    }

    public static void Shuffle(int[] iArr) {
        Random random = new Random();
        for (int length = iArr.length - 1; length > 0; length--) {
            int iNextInt = random.nextInt(length + 1);
            int i = iArr[iNextInt];
            iArr[iNextInt] = iArr[length];
            iArr[length] = i;
        }
    }

    public static void Shuffle(float[] fArr) {
        Random random = new Random();
        for (int length = fArr.length - 1; length > 0; length--) {
            int iNextInt = random.nextInt(length + 1);
            float f = fArr[iNextInt];
            fArr[iNextInt] = fArr[length];
            fArr[length] = f;
        }
    }

    public static float[] toFloat(int[] iArr) {
        float[] fArr = new float[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            fArr[i] = iArr[i];
        }
        return fArr;
    }

    public static float[][] toFloat(int[][] iArr) {
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr.length, iArr[0].length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                fArr[i][i2] = iArr[i][i2];
            }
        }
        return fArr;
    }

    public static float[] toFloat(double[] dArr) {
        float[] fArr = new float[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            fArr[i] = (float) dArr[i];
        }
        return fArr;
    }

    public static float[][] toFloat(double[][] dArr) {
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                fArr[i][i2] = (float) dArr[i][i2];
            }
        }
        return fArr;
    }

    public static int[] toInt(double[] dArr) {
        int[] iArr = new int[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            iArr[i] = (int) dArr[i];
        }
        return iArr;
    }

    public static int[][] toInt(double[][] dArr) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                iArr[i][i2] = (int) dArr[i][i2];
            }
        }
        return iArr;
    }

    public static int[] toInt(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = (int) fArr[i];
        }
        return iArr;
    }

    public static int[][] toInt(float[][] fArr) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, fArr.length, fArr[0].length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                iArr[i][i2] = (int) fArr[i][i2];
            }
        }
        return iArr;
    }

    public static double[] toDouble(int[] iArr) {
        double[] dArr = new double[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            dArr[i] = iArr[i];
        }
        return dArr;
    }

    public static double[][] toDouble(int[][] iArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr.length, iArr[0].length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[0].length; i2++) {
                dArr[i][i2] = iArr[i][i2];
            }
        }
        return dArr;
    }

    public static double[] toDouble(float[] fArr) {
        double[] dArr = new double[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            dArr[i] = fArr[i];
        }
        return dArr;
    }

    public static double[][] toDouble(float[][] fArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, fArr.length, fArr[0].length);
        for (int i = 0; i < fArr.length; i++) {
            for (int i2 = 0; i2 < fArr[0].length; i2++) {
                dArr[i][i2] = fArr[i][i2];
            }
        }
        return dArr;
    }
}
