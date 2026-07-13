package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SukFlusserMoments {
    public double[] Compute(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            ArrayList<Integer> arrayList = new ArrayList<>();
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            a(fastBitmap, width, height, arrayList, arrayList2);
            double[] dArrA = a(arrayList);
            double[] dArrA2 = a(arrayList2);
            double dA = a(fastBitmap, width, height);
            double[] dArrA3 = a(dArrA, fastBitmap, width, height, dA);
            double[] dArrA4 = a(dArrA2, fastBitmap, width, height, dA);
            double dA2 = a(dArrA3, dArrA4, 2, 0, fastBitmap, width, height);
            double dA3 = a(dArrA3, dArrA4, 0, 2, fastBitmap, width, height);
            double dA4 = a(dArrA3, dArrA4, 1, 1, fastBitmap, width, height);
            double dA5 = a(dArrA3, dArrA4, 3, 0, fastBitmap, width, height);
            double dA6 = a(dArrA3, dArrA4, 0, 3, fastBitmap, width, height);
            double dA7 = a(dArrA3, dArrA4, 2, 1, fastBitmap, width, height);
            double dA8 = a(dArrA3, dArrA4, 1, 2, fastBitmap, width, height);
            double dA9 = a(dArrA3, dArrA4, 4, 0, fastBitmap, width, height);
            double dA10 = a(dArrA3, dArrA4, 0, 4, fastBitmap, width, height);
            double dA11 = a(dArrA3, dArrA4, 3, 1, fastBitmap, width, height);
            double dA12 = a(dArrA3, dArrA4, 1, 3, fastBitmap, width, height);
            double dA13 = a(dArrA3, dArrA4, 2, 2, fastBitmap, width, height);
            double dA14 = a(dArrA3, dArrA4, 5, 0, fastBitmap, width, height);
            double dA15 = a(dArrA3, dArrA4, 0, 5, fastBitmap, width, height);
            double dA16 = a(dArrA3, dArrA4, 4, 1, fastBitmap, width, height);
            double dA17 = a(dArrA3, dArrA4, 1, 4, fastBitmap, width, height);
            double dA18 = a(dArrA3, dArrA4, 3, 2, fastBitmap, width, height);
            double dA19 = a(dArrA3, dArrA4, 2, 3, fastBitmap, width, height);
            double dA20 = a(dArrA3, dArrA4, 7, 0, fastBitmap, width, height);
            double dA21 = a(dArrA3, dArrA4, 0, 7, fastBitmap, width, height);
            double dA22 = a(dArrA3, dArrA4, 1, 6, fastBitmap, width, height);
            double dA23 = a(dArrA3, dArrA4, 6, 1, fastBitmap, width, height);
            double dA24 = a(dArrA3, dArrA4, 5, 2, fastBitmap, width, height);
            double dA25 = a(dArrA3, dArrA4, 2, 5, fastBitmap, width, height);
            double dA26 = a(dArrA3, dArrA4, 4, 3, fastBitmap, width, height);
            double dA27 = a(dArrA3, dArrA4, 3, 4, fastBitmap, width, height);
            double d = dA14 - (((10.0d * dA5) * dA2) / dA);
            double d2 = dA16 - ((2.0d * (((3.0d * dA7) * dA2) + ((2.0d * dA5) * dA4))) / dA);
            double d3 = dA18 - (((((3.0d * dA8) * dA2) + (dA5 * dA3)) + ((6.0d * dA7) * dA4)) / dA);
            double d4 = dA19 - (((((3.0d * dA7) * dA3) + (dA6 * dA2)) + ((6.0d * dA8) * dA4)) / dA);
            double d5 = dA17 - ((2.0d * (((3.0d * dA8) * dA3) + ((2.0d * dA6) * dA4))) / dA);
            double d6 = dA15 - (((10.0d * dA6) * dA3) / dA);
            double d7 = (dA20 - ((7.0d * (((3.0d * d) * dA2) + ((5.0d * dA5) * dA9))) / dA)) + (((210.0d * dA5) * (dA2 * dA2)) / (dA * dA));
            double d8 = (dA23 - ((((((6.0d * d) * dA4) + ((15.0d * d2) * dA2)) + ((15.0d * dA9) * dA7)) + ((20.0d * dA11) * dA5)) / dA)) + ((30.0d * (((3.0d * dA7) * (dA2 * dA2)) + (((4.0d * dA5) * dA2) * dA4))) / (dA * dA));
            double d9 = (dA24 - (((((((d * dA3) + ((10.0d * dA5) * dA13)) + ((10.0d * d3) * dA2)) + ((20.0d * dA11) * dA7)) + ((10.0d * d2) * dA4)) + ((5.0d * dA9) * dA8)) / dA)) + ((10.0d * (((((3.0d * dA8) * (dA2 * dA2)) + (((2.0d * dA5) * dA2) * dA3)) + ((4.0d * dA5) * (dA4 * dA4))) + (((12.0d * dA7) * dA2) * dA4))) / (dA * dA));
            double d10 = (dA26 - ((((((((dA9 * dA6) + ((18.0d * dA7) * dA13)) + ((12.0d * dA11) * dA8)) + ((4.0d * dA5) * dA12)) + ((3.0d * d2) * dA3)) + ((12.0d * d3) * dA4)) + ((6.0d * d4) * dA2)) / dA)) + (6.0d * ((dA2 * dA2 * dA6) + (4.0d * dA5 * dA4 * dA3) + (12.0d * dA7 * dA4 * dA4) + (12.0d * dA8 * dA2 * dA4) + (6.0d * dA7 * dA3 * dA2)));
            double d11 = (dA27 - ((((((dA11 * (4.0d * dA6)) + (((dA10 * dA5) + ((18.0d * dA8) * dA13)) + ((12.0d * dA12) * dA7))) + ((3.0d * d5) * dA2)) + ((12.0d * d4) * dA4)) + ((6.0d * d3) * dA3)) / dA)) + ((6.0d * ((((((dA3 * dA3) * dA5) + (((4.0d * dA6) * dA4) * dA2)) + ((12.0d * dA8) * (dA4 * dA4))) + (((12.0d * dA7) * dA3) * dA4)) + (((6.0d * dA8) * dA2) * dA3))) / (dA * dA));
            double d12 = ((((((dA2 * ((2.0d * dA6) * dA3)) + ((3.0d * dA7) * (dA3 * dA3))) + ((4.0d * dA6) * (dA4 * dA4))) + (((12.0d * dA8) * dA3) * dA4)) * 10.0d) / (dA * dA)) + (dA25 - (((((((d6 * dA2) + (dA13 * (10.0d * dA6))) + ((10.0d * d4) * dA3)) + ((20.0d * dA12) * dA8)) + ((10.0d * d5) * dA4)) + ((5.0d * dA10) * dA7)) / dA));
            double d13 = ((((dA4 * ((4.0d * dA6) * dA3)) + ((3.0d * dA8) * (dA3 * dA3))) * 30.0d) / (dA * dA)) + (dA22 - ((((((6.0d * d6) * dA4) + ((15.0d * d5) * dA3)) + ((15.0d * dA10) * dA8)) + ((dA12 * 20.0d) * dA6)) / dA));
            double d14 = (((dA3 * dA3) * (210.0d * dA6)) / (dA * dA)) + (dA21 - ((((dA10 * (5.0d * dA6)) + ((3.0d * d6) * dA3)) * 7.0d) / dA));
            return new double[]{((((((dA5 * dA5) * (dA6 * dA6)) - ((((6.0d * dA5) * dA7) * dA8) * dA6)) + ((4.0d * dA5) * ((dA8 * dA8) * dA8))) + ((4.0d * ((dA7 * dA7) * dA7)) * dA6)) - ((3.0d * (dA7 * dA7)) * (dA8 * dA8))) / Math.pow(dA, 10.0d), (((((((((((((d * d) * (d6 * d6)) - ((((10.0d * d) * d2) * d5) * d6)) + ((((4.0d * d) * d3) * d4) * d6)) + (((16.0d * d) * d3) * (d5 * d5))) - (((12.0d * d) * (d4 * d4)) * d5)) + (((16.0d * (d2 * d2)) * d4) * d6)) + ((9.0d * (d2 * d2)) * (d5 * d5))) - (((12.0d * d2) * (d3 * d3)) * d6)) - ((((76.0d * d2) * d3) * d4) * d5)) + ((48.0d * d2) * ((d4 * d4) * d4))) + ((48.0d * ((d3 * d3) * d3)) * d5)) - ((32.0d * (d3 * d3)) * (d4 * d4))) / Math.pow(dA, 14.0d), ((((((((((((((((((dA5 * dA5) * dA8) * d6) - (((dA5 * dA5) * dA6) * d5)) - (((dA7 * dA7) * dA5) * d6)) - ((((2.0d * dA5) * dA7) * dA8) * d5)) + ((((4.0d * dA5) * dA7) * dA6) * d4)) + (((2.0d * dA5) * (dA8 * dA8)) * d4)) - ((((4.0d * dA5) * dA8) * dA6) * d3)) + (((dA6 * dA6) * dA5) * d2)) + ((3.0d * ((dA7 * dA7) * dA7)) * d5)) - (((6.0d * (dA7 * dA7)) * dA8) * d4)) - (((2.0d * (dA7 * dA7)) * dA6) * d3)) + (((6.0d * dA7) * (dA8 * dA8)) * d3)) + ((((2.0d * dA7) * dA8) * dA6) * d2)) - (((dA6 * dA6) * dA7) * d)) - ((3.0d * ((dA8 * dA8) * dA8)) * d2)) + (((dA8 * dA8) * dA6) * d)) / Math.pow(dA, 11.0d), (((((((((((((((((((((2.0d * dA5) * dA8) * d2) * d6) - ((((8.0d * dA5) * dA8) * d3) * d5)) + (((6.0d * dA5) * dA8) * (d4 * d4))) - (((dA5 * dA6) * d) * d6)) + ((((3.0d * dA5) * dA6) * d2) * d5)) - ((((2.0d * dA5) * dA6) * d3) * d4)) - (((2.0d * (dA7 * dA7)) * d2) * d6)) + (((8.0d * (dA7 * dA7)) * d3) * d5)) - ((6.0d * (dA7 * dA7)) * (d4 * d4))) + (((dA7 * dA8) * d) * d6)) - ((((3.0d * dA7) * dA8) * d2) * d5)) + ((((2.0d * dA7) * dA8) * d3) * d4)) + ((((2.0d * dA7) * dA6) * d) * d5)) - ((((8.0d * dA7) * dA6) * d2) * d4)) + (((6.0d * dA7) * dA6) * (d3 * d3))) - (((2.0d * (dA8 * dA8)) * d) * d5)) + (((8.0d * (dA8 * dA8)) * d2) * d4)) - ((6.0d * (dA8 * dA8)) * (d3 * d3))) / Math.pow(dA, 12.0d), ((((((((((((((((((((((((dA5 * d2) * d4) * d6) - ((dA5 * d2) * (d5 * d5))) - (((d3 * d3) * dA5) * d6)) + ((((2.0d * dA5) * d3) * d4) * d5)) - (dA5 * ((d4 * d4) * d4))) - (((dA7 * d) * d4) * d6)) + ((dA7 * d) * (d5 * d5))) + (((dA7 * d2) * d3) * d6)) - (((dA7 * d2) * d4) * d5)) - (((d3 * d3) * dA7) * d5)) + ((dA7 * d3) * (d4 * d4))) + (((dA8 * d) * d3) * d6)) - (((dA8 * d) * d4) * d5)) - (((d2 * d2) * dA8) * d6)) + (((dA8 * d2) * d3) * d5)) + ((dA8 * d2) * (d4 * d4))) - (((d3 * d3) * dA8) * d4)) - (((dA6 * d) * d3) * d5)) + ((d * dA6) * (d4 * d4))) + (((d2 * d2) * dA6) * d5)) - ((((2.0d * dA6) * d2) * d3) * d4)) + (((d3 * d3) * d3) * dA6)) / Math.pow(dA, 13.0d), (((d12 * (600.0d * ((d10 * d10) * d10))) + ((((((((((d14 * ((40.0d * d8) * (d10 * d10))) + ((((((((((((d7 * d7) * (d14 * d14)) - ((((14.0d * d7) * d8) * d13) * d14)) + ((((18.0d * d7) * d9) * d12) * d14)) + (((24.0d * d7) * d9) * (d13 * d13))) - ((((10.0d * d7) * d10) * d11) * d14)) - ((((60.0d * d7) * d10) * d12) * d13)) + (((40.0d * d7) * (d11 * d11)) * d13)) + (((24.0d * (d8 * d8)) * d12) * d14)) + ((25.0d * (d8 * d8)) * (d13 * d13))) - ((((60.0d * d8) * d9) * d11) * d14)) - ((((234.0d * d8) * d9) * d12) * d13))) + ((((50.0d * d8) * d10) * d11) * d13)) + (((360.0d * d8) * d10) * (d12 * d12))) - (((240.0d * d8) * (d11 * d11)) * d12)) + (((360.0d * (d9 * d9)) * d11) * d13)) + ((81.0d * (d9 * d9)) * (d12 * d12))) - (d13 * ((240.0d * d9) * (d10 * d10)))) - ((((990.0d * d9) * d10) * d11) * d12)) + ((600.0d * d9) * ((d11 * d11) * d11)))) - ((d11 * d11) * (375.0d * (d10 * d10)))) / Math.pow(dA, 18.0d)};
        }
        throw new IllegalArgumentException("Suk Flusser Moments only works with grayscale images.");
    }

    private void a(FastBitmap fastBitmap, int i, int i2, ArrayList<Integer> arrayList, ArrayList<Integer> arrayList2) {
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                if (fastBitmap.getGray(i4, i3) > 0) {
                    arrayList.add(Integer.valueOf(i4 + 1));
                    arrayList2.add(Integer.valueOf(i3 + 1));
                }
            }
        }
    }

    private double[] a(ArrayList<Integer> arrayList) {
        double[] dArr = new double[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                dArr[i2] = arrayList.get(i2).intValue();
                i = i2 + 1;
            } else {
                return dArr;
            }
        }
    }

    private double a(FastBitmap fastBitmap, int i, int i2) {
        double gray = 0.0d;
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                gray += (double) fastBitmap.getGray(i3, i4);
            }
        }
        return gray;
    }

    private double[] a(double[] dArr, FastBitmap fastBitmap, int i, int i2, double d) {
        double gray = 0.0d;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            int i5 = i3;
            for (int i6 = 0; i6 < i2; i6++) {
                if (fastBitmap.getGray(i6, i4) > 0) {
                    gray += dArr[i5] * ((double) fastBitmap.getGray(i6, i4));
                    i5++;
                }
            }
            i4++;
            i3 = i5;
        }
        for (int i7 = 0; i7 < dArr.length; i7++) {
            dArr[i7] = dArr[i7] - (gray / d);
        }
        return dArr;
    }

    private double a(double[] dArr, double[] dArr2, int i, int i2, FastBitmap fastBitmap, int i3, int i4) {
        double dPow = 0.0d;
        int i5 = 0;
        int i6 = 0;
        while (i6 < i3) {
            int i7 = i5;
            for (int i8 = 0; i8 < i4; i8++) {
                if (fastBitmap.getGray(i8, i6) > 0) {
                    dPow += Math.pow(dArr[i7], i) * Math.pow(dArr2[i7], i2) * ((double) fastBitmap.getGray(i8, i6));
                    i7++;
                }
            }
            i6++;
            i5 = i7;
        }
        return dPow;
    }
}
