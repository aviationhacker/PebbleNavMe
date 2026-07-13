package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ColorMoments {
    private double[] a;

    public double[] getWeight() {
        return this.a;
    }

    public void setWeight(double[] dArr) {
        this.a = dArr;
    }

    public ColorMoments() {
        this.a = new double[]{1.0d, 1.0d, 1.0d};
    }

    public ColorMoments(double d, double d2, double d3) {
        this.a = new double[]{1.0d, 1.0d, 1.0d};
        this.a = new double[]{d, d2, d3};
    }

    public double Compute(FastBitmap fastBitmap, FastBitmap fastBitmap2) {
        return Compute(ComputeMatrixMoment(fastBitmap), ComputeMatrixMoment(fastBitmap2));
    }

    public double Compute(double[][] dArr, double[][] dArr2) {
        double dAbs = 0.0d;
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                dAbs += this.a[i2] * Math.abs(dArr[i][i2] - dArr2[i][i2]);
            }
        }
        return dAbs;
    }

    public double[][] ComputeMatrixMoment(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double d = width * height;
        int red = 0;
        int green = 0;
        int blue = 0;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= height) {
                break;
            }
            for (int i3 = 0; i3 < width; i3++) {
                red += fastBitmap.getRed(i2, i3);
                green += fastBitmap.getGreen(i2, i3);
                blue += fastBitmap.getBlue(i2, i3);
            }
            i = i2 + 1;
        }
        double d2 = ((double) red) / d;
        double d3 = ((double) green) / d;
        double d4 = ((double) blue) / d;
        double dPow = 0.0d;
        double dPow2 = 0.0d;
        double dPow3 = 0.0d;
        double dPow4 = 0.0d;
        double dPow5 = 0.0d;
        double dPow6 = 0.0d;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < height) {
                for (int i6 = 0; i6 < width; i6++) {
                    dPow += Math.pow(((double) fastBitmap.getRed(i5, i6)) - d2, 2.0d);
                    dPow2 += Math.pow(((double) fastBitmap.getGreen(i5, i6)) - d3, 2.0d);
                    dPow3 += Math.pow(((double) fastBitmap.getBlue(i5, i6)) - d4, 2.0d);
                    dPow4 += Math.pow(((double) fastBitmap.getRed(i5, i6)) - d2, 3.0d);
                    dPow5 += Math.pow(((double) fastBitmap.getGreen(i5, i6)) - d3, 3.0d);
                    dPow6 += Math.pow(((double) fastBitmap.getBlue(i5, i6)) - d4, 3.0d);
                }
                i4 = i5 + 1;
            } else {
                double dSqrt = Math.sqrt(dPow / d);
                double dSqrt2 = Math.sqrt(dPow2 / d);
                double dSqrt3 = Math.sqrt(dPow3 / d);
                double dPow7 = Math.pow(dPow4, 0.33d);
                double dPow8 = Math.pow(dPow5, 0.33d);
                double dPow9 = Math.pow(dPow6, 0.33d);
                double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 3, 3);
                dArr[0][0] = d2;
                dArr[0][1] = dSqrt;
                dArr[0][2] = dPow7;
                dArr[1][0] = d3;
                dArr[1][1] = dSqrt2;
                dArr[1][2] = dPow8;
                dArr[2][0] = d4;
                dArr[2][1] = dSqrt3;
                dArr[2][2] = dPow9;
                return dArr;
            }
        }
    }
}
