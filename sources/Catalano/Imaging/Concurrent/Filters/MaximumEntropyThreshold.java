package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class MaximumEntropyThreshold implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Threshold(CalculateThreshold(fastBitmap)).applyInPlace(fastBitmap);
    }

    public int CalculateThreshold(FastBitmap fastBitmap) {
        int[] values = new ImageStatistics(fastBitmap).getHistogramGray().getValues();
        double d = 0.0d;
        for (int i : values) {
            d += (double) i;
        }
        if (d == 0.0d) {
            throw new IllegalArgumentException("Empty histogram: sum of all bins is zero.");
        }
        double[] dArr = new double[values.length];
        for (int i2 = 0; i2 < values.length; i2++) {
            dArr[i2] = ((double) values[i2]) / d;
        }
        double[] dArr2 = new double[values.length];
        dArr2[0] = dArr[0];
        for (int i3 = 1; i3 < values.length; i3++) {
            dArr2[i3] = dArr2[i3 - 1] + dArr[i3];
        }
        double[] dArr3 = new double[values.length];
        double[] dArr4 = new double[values.length];
        for (int i4 = 0; i4 < values.length; i4++) {
            if (dArr2[i4] > Double.MIN_VALUE) {
                double dLog = 0.0d;
                for (int i5 = 0; i5 <= i4; i5++) {
                    if (dArr[i5] > Double.MIN_VALUE) {
                        dLog -= (dArr[i5] / dArr2[i4]) * Math.log(dArr[i5] / dArr2[i4]);
                    }
                }
                dArr3[i4] = dLog;
            } else {
                dArr3[i4] = 0.0d;
            }
            double d2 = 1.0d - dArr2[i4];
            if (d2 > Double.MIN_VALUE) {
                double dLog2 = 0.0d;
                for (int i6 = i4 + 1; i6 < values.length; i6++) {
                    if (dArr[i6] > Double.MIN_VALUE) {
                        dLog2 -= (dArr[i6] / d2) * Math.log(dArr[i6] / d2);
                    }
                }
                dArr4[i4] = dLog2;
            } else {
                dArr4[i4] = 0.0d;
            }
        }
        double d3 = dArr4[0] + dArr3[0];
        int i7 = 0;
        for (int i8 = 1; i8 < values.length; i8++) {
            double d4 = dArr3[i8] + dArr4[i8];
            if (d4 > d3) {
                i7 = i8;
                d3 = d4;
            }
        }
        return i7;
    }
}
