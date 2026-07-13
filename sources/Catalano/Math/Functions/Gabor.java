package Catalano.Math.Functions;

import Catalano.Math.ComplexNumber;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class Gabor {

    public enum Config {
        Real,
        Imaginary,
        Magnitude,
        SquaredMagnitude
    }

    private Gabor() {
    }

    public static double Function1D(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        return ((Math.exp((-Math.pow(d - d4, 2.0d)) / Math.pow(2.0d * d5, 2.0d)) * d3) + d2) * Math.cos((6.283185307179586d * d7 * (d - d4)) + d6);
    }

    public static ComplexNumber Function2D(int i, int i2, double d, double d2, double d3, double d4, double d5) {
        double dCos = (((double) i) * Math.cos(d2)) + (((double) i2) * Math.sin(d2));
        double dSin = (((double) (-i)) * Math.sin(d2)) + (((double) i2) * Math.cos(d2));
        double dExp = Math.exp(-(((dSin * ((d5 * d5) * dSin)) + (dCos * dCos)) / ((2.0d * d4) * d4)));
        return new ComplexNumber(Math.cos((6.283185307179586d * (dCos / d)) + d3) * dExp, Math.sin(((dCos / d) * 6.283185307179586d) + d3) * dExp);
    }

    public static double RealFunction2D(int i, int i2, double d, double d2, double d3, double d4, double d5) {
        double dCos = (((double) i) * Math.cos(d2)) + (((double) i2) * Math.sin(d2));
        double dSin = (((double) (-i)) * Math.sin(d2)) + (((double) i2) * Math.cos(d2));
        return Math.cos(((dCos / d) * 6.283185307179586d) + d3) * Math.exp(-(((dSin * ((d5 * d5) * dSin)) + (dCos * dCos)) / ((2.0d * d4) * d4)));
    }

    public static double ImaginaryFunction2D(int i, int i2, double d, double d2, double d3, double d4, double d5) {
        double dCos = (((double) i) * Math.cos(d2)) + (((double) i2) * Math.sin(d2));
        double dSin = (((double) (-i)) * Math.sin(d2)) + (((double) i2) * Math.cos(d2));
        return Math.sin(((dCos / d) * 6.283185307179586d) + d3) * Math.exp(-(((dSin * ((d5 * d5) * dSin)) + (dCos * dCos)) / ((2.0d * d4) * d4)));
    }

    public static double[][] Kernel2D(int i, double d, double d2, double d3, double d4, double d5) {
        double d6;
        double d7 = d4 / d5;
        int iCeil = (int) Math.ceil(Math.max(1.0d, Math.max(Math.abs(((double) i) * d4 * Math.cos(d2)), Math.abs(((double) i) * d7 * Math.sin(d2)))));
        int iCeil2 = (int) Math.ceil(Math.max(1.0d, Math.max(Math.abs(((double) i) * d4 * Math.sin(d2)), Math.abs(d7 * ((double) i) * Math.cos(d2)))));
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (iCeil * 2) + 1, (iCeil2 * 2) + 1);
        double d8 = 0.0d;
        int i2 = -iCeil;
        while (i2 <= iCeil) {
            int i3 = -iCeil2;
            while (true) {
                d6 = d8;
                if (i3 <= iCeil2) {
                    dArr[i2 + iCeil][i3 + iCeil2] = ImaginaryFunction2D(i2, i3, d, d2, d3, d4, d5);
                    d8 = dArr[i2 + iCeil][i3 + iCeil2] + d6;
                    i3++;
                }
            }
            i2++;
            d8 = d6;
        }
        for (int i4 = -iCeil; i4 <= iCeil; i4++) {
            for (int i5 = -iCeil2; i5 <= iCeil2; i5++) {
                double[] dArr2 = dArr[i4 + iCeil];
                int i6 = i5 + iCeil2;
                dArr2[i6] = dArr2[i6] / d8;
            }
        }
        return dArr;
    }

    public static double[][] Kernel2D(int i, double d, double d2, double d3, double d4, double d5, Config config) {
        double d6;
        double d7;
        double d8;
        double d9;
        double d10 = d4 / d5;
        int iCeil = (int) Math.ceil(Math.max(1.0d, Math.max(Math.abs(((double) i) * d4 * Math.cos(d2)), Math.abs(((double) i) * d10 * Math.sin(d2)))));
        int iCeil2 = (int) Math.ceil(Math.max(1.0d, Math.max(Math.abs(((double) i) * d4 * Math.sin(d2)), Math.abs(d10 * ((double) i) * Math.cos(d2)))));
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (iCeil * 2) + 1, (iCeil2 * 2) + 1);
        double d11 = 0.0d;
        switch (config) {
            case Real:
                double d12 = 0.0d;
                int i2 = -iCeil;
                while (i2 <= iCeil) {
                    int i3 = -iCeil2;
                    while (true) {
                        d9 = d12;
                        if (i3 <= iCeil2) {
                            dArr[i2 + iCeil][i3 + iCeil2] = RealFunction2D(i2, i3, d, d2, d3, d4, d5);
                            d12 = dArr[i2 + iCeil][i3 + iCeil2] + d9;
                            i3++;
                        }
                    }
                    i2++;
                    d12 = d9;
                }
                d11 = d12;
                break;
            case Imaginary:
                double d13 = 0.0d;
                int i4 = -iCeil;
                while (i4 <= iCeil) {
                    int i5 = -iCeil2;
                    while (true) {
                        d8 = d13;
                        if (i5 <= iCeil2) {
                            dArr[i4 + iCeil][i5 + iCeil2] = ImaginaryFunction2D(i4, i5, d, d2, d3, d4, d5);
                            d13 = dArr[i4 + iCeil][i5 + iCeil2] + d8;
                            i5++;
                        }
                    }
                    i4++;
                    d13 = d8;
                }
                d11 = d13;
                break;
            case Magnitude:
                double d14 = 0.0d;
                int i6 = -iCeil;
                while (i6 <= iCeil) {
                    int i7 = -iCeil2;
                    while (true) {
                        d7 = d14;
                        if (i7 <= iCeil2) {
                            dArr[i6 + iCeil][i7 + iCeil2] = Function2D(i6, i7, d, d2, d3, d4, d5).getMagnitude();
                            d14 = dArr[i6 + iCeil][i7 + iCeil2] + d7;
                            i7++;
                        }
                    }
                    i6++;
                    d14 = d7;
                }
                d11 = d14;
                break;
            case SquaredMagnitude:
                double d15 = 0.0d;
                int i8 = -iCeil;
                while (i8 <= iCeil) {
                    int i9 = -iCeil2;
                    while (true) {
                        d6 = d15;
                        if (i9 <= iCeil2) {
                            dArr[i8 + iCeil][i9 + iCeil2] = Function2D(i8, i9, d, d2, d3, d4, d5).getSquaredMagnitude();
                            d15 = dArr[i8 + iCeil][i9 + iCeil2] + d6;
                            i9++;
                        }
                    }
                    i8++;
                    d15 = d6;
                }
                d11 = d15;
                break;
        }
        for (int i10 = -iCeil; i10 <= iCeil; i10++) {
            for (int i11 = -iCeil2; i11 <= iCeil2; i11++) {
                double[] dArr2 = dArr[i10 + iCeil];
                int i12 = i11 + iCeil2;
                dArr2[i12] = dArr2[i12] / d11;
            }
        }
        return dArr;
    }
}
