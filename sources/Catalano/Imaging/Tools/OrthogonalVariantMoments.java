package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.Matrix;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class OrthogonalVariantMoments {
    public double[] Compute(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("Orthogonal Variant Moments only works in grayscale images.");
        }
        double[] dArr = new double[5];
        dArr[0] = ImageMoments.getRawMoment(fastBitmap, 0, 0);
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double d = width * height;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height - 1, width);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= height - 1) {
                break;
            }
            for (int i3 = 0; i3 < width; i3++) {
                dArr2[i2][i3] = fastBitmap.getGray(i2 + 1, i3) - fastBitmap.getGray(i2, i3);
            }
            i = i2 + 1;
        }
        double dSumAbs = Matrix.SumAbs(dArr2);
        double d2 = 0.0d;
        for (int i4 = 0; i4 < dArr2.length; i4++) {
            int i5 = 0;
            while (i5 < dArr2[0].length) {
                double dSqrt = Math.sqrt((dArr2[i4][i5] * dArr2[i4][i5]) + 1.0d) + d2;
                i5++;
                d2 = dSqrt;
            }
        }
        dArr[2] = (d2 + 3.0d) / d;
        double d3 = (dSumAbs / 8.0d) + 0.1d;
        double d4 = 1.0d;
        for (int i6 = 0; i6 < dArr2.length; i6++) {
            int i7 = 0;
            while (i7 < dArr2[0].length) {
                double dAbs = (Math.abs(dArr2[i6][i7]) * ((double) (i6 + 1))) + d4;
                i7++;
                d4 = dAbs;
            }
        }
        dArr[4] = (d4 + 1.0d) / d3;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width - 1);
        for (int i8 = 0; i8 < dArr3.length; i8++) {
            for (int i9 = 0; i9 < dArr3[0].length; i9++) {
                dArr3[i8][i9] = fastBitmap.getGray(i8, i9 + 1) - fastBitmap.getGray(i8, i9);
            }
        }
        double dSumAbs2 = Matrix.SumAbs(dArr3);
        double d5 = 0.0d;
        for (int i10 = 0; i10 < dArr3.length; i10++) {
            int i11 = 0;
            while (i11 < dArr3[0].length) {
                double dSqrt2 = Math.sqrt((dArr3[i10][i11] * dArr3[i10][i11]) + 1.0d) + d5;
                i11++;
                d5 = dSqrt2;
            }
        }
        dArr[1] = (d5 + 3.0d) / d;
        double d6 = (dSumAbs2 / 4.5d) + 0.1d;
        double d7 = 1.0d;
        for (double[] dArr4 : dArr3) {
            int i12 = 0;
            while (i12 < dArr3[0].length) {
                double dAbs2 = (Math.abs(dArr4[i12]) * ((double) (i12 + 1))) + d7;
                i12++;
                d7 = dAbs2;
            }
        }
        dArr[3] = (d7 + 1.0d) / d6;
        return dArr;
    }
}
