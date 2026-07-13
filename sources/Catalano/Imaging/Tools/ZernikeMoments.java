package Catalano.Imaging.Tools;

import Catalano.Math.ComplexNumber;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ZernikeMoments {
    private ZernikeMoments() {
    }

    public static double RadialPolynomial(int i, int i2, double d, double d2) {
        int iAbs = Math.abs(i2);
        if ((i - iAbs) % 2 != 0) {
            throw new IllegalArgumentException("RadialPolynomial: n-|m| is odd");
        }
        double dPow = 0.0d;
        if ((d * d) + (d2 * d2) <= 1.0d) {
            int i3 = 1;
            int iA = a(i);
            int i4 = 1;
            int iA2 = a((i + iAbs) / 2);
            int iA3 = a((i - iAbs) / 2);
            for (int i5 = 0; i5 <= (i - iAbs) / 2; i5++) {
                dPow += ((double) i3) * ((((double) iA) * 1.0d) / ((double) ((i4 * iA2) * iA3))) * Math.pow((d * d) + (d2 * d2), (((double) i) / 2.0d) - ((double) i5));
                if (i5 < (i - iAbs) / 2) {
                    i3 = -i3;
                    iA /= i - i5;
                    i4 *= i5 + 1;
                    iA2 /= ((i + iAbs) / 2) - i5;
                    iA3 /= ((i - iAbs) / 2) - i5;
                }
            }
        }
        return dPow;
    }

    public static ComplexNumber ZernikeBasisFunction(int i, int i2, double d, double d2) {
        if ((d * d) + (d2 * d2) > 1.0d) {
            return new ComplexNumber(0.0d, 0.0d);
        }
        double dRadialPolynomial = RadialPolynomial(i, i2, d, d2);
        double dAtan2 = ((double) i2) * Math.atan2(d2, d);
        return new ComplexNumber(Math.cos(dAtan2) * dRadialPolynomial, Math.sin(dAtan2) * dRadialPolynomial);
    }

    public static ComplexNumber ZernikeMoments(double[] dArr, double[] dArr2, int i, int i2, int i3) {
        int iAbs = i2 - Math.abs(i3);
        if (i2 < 0 || Math.abs(i3) > i2 || iAbs % 2 != 0) {
            throw new IllegalArgumentException("zer_mom: n=" + i2 + ", m=" + i3 + ", n-|m|=" + iAbs);
        }
        double dMin = Double.MAX_VALUE;
        double dMin2 = Double.MAX_VALUE;
        double dMax = Double.MIN_VALUE;
        double dMax2 = Double.MIN_VALUE;
        int i4 = 0;
        while (true) {
            double d = dMin2;
            if (i4 < i) {
                dMin = Math.min(dMin, dArr[i4]);
                dMax = Math.max(dMax, dArr[i4]);
                dMin2 = Math.min(d, dArr2[i4]);
                dMax2 = Math.max(dMax2, dArr2[i4]);
                i4++;
            } else {
                double d2 = dMax - dMin;
                double d3 = dMax2 - d;
                return ZernikeMoments(dArr, dArr2, i, d2, d3, dMin + (d2 / 2.0d), d + (d3 / 2.0d), i2, i3);
            }
        }
    }

    public static ComplexNumber ZernikeMoments(double[] dArr, double[] dArr2, int i, double d, double d2, double d3, double d4, int i2, int i3) {
        int iAbs = i2 - Math.abs(i3);
        if (i2 < 0 || Math.abs(i3) > i2 || iAbs % 2 != 0) {
            throw new IllegalArgumentException("zer_mom: n=" + i2 + ", m=" + i3 + ", n-|m|=" + iAbs);
        }
        double dSqrt = Math.sqrt(2.0d) * (d / 2.0d);
        double dSqrt2 = Math.sqrt(2.0d) * (d2 / 2.0d);
        ComplexNumber complexNumber = new ComplexNumber();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < i) {
                double d5 = (dArr[i5] - d3) / dSqrt;
                double d6 = (dArr2[i5] - d4) / dSqrt2;
                if ((d5 * d5) + (d6 * d6) <= 1.0d) {
                    ComplexNumber complexNumberZernikeBasisFunction = ZernikeBasisFunction(i2, i3, d5, d6);
                    complexNumber.real += complexNumberZernikeBasisFunction.real;
                    complexNumber.imaginary = complexNumberZernikeBasisFunction.imaginary + complexNumber.imaginary;
                }
                i4 = i5 + 1;
            } else {
                complexNumber.real = (complexNumber.real * ((double) (i2 + 1))) / 3.141592653589793d;
                complexNumber.imaginary = (complexNumber.imaginary * ((double) (i2 + 1))) / 3.141592653589793d;
                return complexNumber;
            }
        }
    }

    public static ComplexNumber[] ZernikeMoments(int i, double[] dArr, double[] dArr2, int i2) {
        double dMin = Double.MAX_VALUE;
        double dMax = Double.MIN_VALUE;
        double dMax2 = Double.MIN_VALUE;
        int i3 = 0;
        double d = Double.MAX_VALUE;
        while (i3 < i2) {
            dMin = Math.min(dMin, dArr[i3]);
            dMax = Math.max(dMax, dArr[i3]);
            double dMin2 = Math.min(d, dArr2[i3]);
            dMax2 = Math.max(dMax2, dArr2[i3]);
            i3++;
            d = dMin2;
        }
        double d2 = dMax - dMin;
        double d3 = dMax2 - d;
        return ZernikeMoments(i, dArr, dArr2, i2, d2, d3, dMin + (d2 / 2.0d), d + (d3 / 2.0d));
    }

    public static ComplexNumber[] ZernikeMoments(int i, double[] dArr, double[] dArr2, int i2, double d, double d2, double d3, double d4) {
        ArrayList arrayList = new ArrayList(i);
        int i3 = 0;
        int i4 = 0;
        while (i4 <= i) {
            int i5 = i3;
            for (int i6 = 0; i6 <= i4; i6++) {
                if ((i4 - Math.abs(i6)) % 2 == 0) {
                    ComplexNumber complexNumberZernikeMoments = ZernikeMoments(dArr, dArr2, i2, d, d2, d3, d4, i4, i6);
                    arrayList.add(i5, complexNumberZernikeMoments);
                    arrayList.add(complexNumberZernikeMoments);
                    i5++;
                }
            }
            i4++;
            i3 = i5;
        }
        ComplexNumber[] complexNumberArr = new ComplexNumber[i3];
        for (int i7 = 0; i7 < i3; i7++) {
            complexNumberArr[i7] = (ComplexNumber) arrayList.get(i7);
        }
        return complexNumberArr;
    }

    private static int a(int i) {
        int i2 = 1;
        for (int i3 = 2; i3 <= i; i3++) {
            i2 *= i3;
        }
        return i2;
    }
}
