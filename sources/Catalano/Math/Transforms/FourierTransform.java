package Catalano.Math.Transforms;

import Catalano.Math.ComplexNumber;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class FourierTransform {

    public enum Direction {
        Forward,
        Backward
    }

    public static void DFT(ComplexNumber[] complexNumberArr, Direction direction) {
        int length = complexNumberArr.length;
        ComplexNumber[] complexNumberArr2 = new ComplexNumber[length];
        for (int i = 0; i < length; i++) {
            complexNumberArr2[i] = new ComplexNumber(0.0d, 0.0d);
            double d = (6.283185307179586d * ((double) i)) / ((double) length);
            double d2 = 0.0d;
            double d3 = 0.0d;
            for (int i2 = 0; i2 < length; i2++) {
                double d4 = complexNumberArr[i2].real;
                double d5 = complexNumberArr[i2].imaginary;
                double dCos = Math.cos(((double) i2) * d);
                double dSin = Math.sin(((double) i2) * d);
                if (direction == Direction.Backward) {
                    dSin = -dSin;
                }
                d2 += (d4 * dCos) + (complexNumberArr[i2].imaginary * dSin);
                d3 += (d5 * dCos) - (dSin * complexNumberArr[i2].real);
            }
            complexNumberArr2[i] = new ComplexNumber(d2, d3);
        }
        if (direction == Direction.Backward) {
            for (int i3 = 0; i3 < complexNumberArr2.length; i3++) {
                complexNumberArr[i3].real = complexNumberArr2[i3].real / ((double) length);
                complexNumberArr[i3].imaginary = complexNumberArr2[i3].imaginary / ((double) length);
            }
            return;
        }
        for (int i4 = 0; i4 < complexNumberArr2.length; i4++) {
            complexNumberArr[i4].real = complexNumberArr2[i4].real;
            complexNumberArr[i4].imaginary = complexNumberArr2[i4].imaginary;
        }
    }

    public static void DFT2(ComplexNumber[][] complexNumberArr, Direction direction) {
        int length = complexNumberArr.length;
        ComplexNumber[] complexNumberArr2 = new ComplexNumber[Math.max(complexNumberArr[0].length, length)];
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                complexNumberArr2[i2] = complexNumberArr[i][i2];
            }
            DFT(complexNumberArr2, direction);
            for (int i3 = 0; i3 < length; i3++) {
                complexNumberArr[i][i3] = complexNumberArr2[i3];
            }
        }
        ComplexNumber[] complexNumberArr3 = new ComplexNumber[length];
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = 0; i5 < length; i5++) {
                complexNumberArr3[i5] = complexNumberArr[i5][i4];
            }
            DFT(complexNumberArr3, direction);
            for (int i6 = 0; i6 < length; i6++) {
                complexNumberArr[i6][i4] = complexNumberArr3[i6];
            }
        }
    }

    public static void FFT(ComplexNumber[] complexNumberArr, Direction direction) {
        int i = 0;
        double[] real = ComplexNumber.getReal(complexNumberArr);
        double[] imaginary = ComplexNumber.getImaginary(complexNumberArr);
        if (direction == Direction.Forward) {
            a(real, imaginary);
        } else {
            a(imaginary, real);
        }
        if (direction == Direction.Forward) {
            while (i < real.length) {
                complexNumberArr[i] = new ComplexNumber(real[i], imaginary[i]);
                i++;
            }
        } else {
            int length = real.length;
            while (i < length) {
                complexNumberArr[i] = new ComplexNumber(real[i] / ((double) length), imaginary[i] / ((double) length));
                i++;
            }
        }
    }

    public static void FFT2(ComplexNumber[][] complexNumberArr, Direction direction) {
        int length = complexNumberArr.length;
        int length2 = complexNumberArr[0].length;
        for (int i = 0; i < length; i++) {
            ComplexNumber[] complexNumberArr2 = complexNumberArr[i];
            FFT(complexNumberArr2, direction);
            for (int i2 = 0; i2 < length2; i2++) {
                complexNumberArr[i][i2] = complexNumberArr2[i2];
            }
        }
        ComplexNumber[] complexNumberArr3 = new ComplexNumber[length];
        for (int i3 = 0; i3 < length2; i3++) {
            for (int i4 = 0; i4 < length; i4++) {
                complexNumberArr3[i4] = complexNumberArr[i4][i3];
            }
            FFT(complexNumberArr3, direction);
            for (int i5 = 0; i5 < length; i5++) {
                complexNumberArr[i5][i3] = complexNumberArr3[i5];
            }
        }
    }

    private static void a(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        if (length != 0) {
            if ((length & (length - 1)) == 0) {
                c(dArr, dArr2);
            } else {
                d(dArr, dArr2);
            }
        }
    }

    private static void b(double[] dArr, double[] dArr2) {
        a(dArr2, dArr);
    }

    private static void c(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        int iNumberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(length);
        double[] dArr3 = new double[length / 2];
        double[] dArr4 = new double[length / 2];
        for (int i = 0; i < length / 2; i++) {
            dArr3[i] = Math.cos((6.283185307179586d * ((double) i)) / ((double) length));
            dArr4[i] = Math.sin((6.283185307179586d * ((double) i)) / ((double) length));
        }
        for (int i2 = 0; i2 < length; i2++) {
            int iReverse = Integer.reverse(i2) >>> (32 - iNumberOfLeadingZeros);
            if (iReverse > i2) {
                double d = dArr[i2];
                dArr[i2] = dArr[iReverse];
                dArr[iReverse] = d;
                double d2 = dArr2[i2];
                dArr2[i2] = dArr2[iReverse];
                dArr2[iReverse] = d2;
            }
        }
        for (int i3 = 2; i3 <= length; i3 *= 2) {
            int i4 = i3 / 2;
            int i5 = length / i3;
            for (int i6 = 0; i6 < length; i6 += i3) {
                int i7 = 0;
                int i8 = i6;
                while (i8 < i6 + i4) {
                    double d3 = (dArr[i8 + i4] * dArr3[i7]) + (dArr2[i8 + i4] * dArr4[i7]);
                    double d4 = ((-dArr[i8 + i4]) * dArr4[i7]) + (dArr2[i8 + i4] * dArr3[i7]);
                    dArr[i8 + i4] = dArr[i8] - d3;
                    dArr2[i8 + i4] = dArr2[i8] - d4;
                    dArr[i8] = d3 + dArr[i8];
                    dArr2[i8] = dArr2[i8] + d4;
                    i8++;
                    i7 += i5;
                }
            }
            if (i3 == length) {
                return;
            }
        }
    }

    private static void d(double[] dArr, double[] dArr2) {
        int length = dArr.length;
        int iHighestOneBit = Integer.highestOneBit((length * 2) + 1) << 1;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i = 0; i < length; i++) {
            int i2 = (int) ((((long) i) * ((long) i)) % ((long) (length * 2)));
            dArr3[i] = Math.cos((3.141592653589793d * ((double) i2)) / ((double) length));
            dArr4[i] = Math.sin((3.141592653589793d * ((double) i2)) / ((double) length));
        }
        double[] dArr5 = new double[iHighestOneBit];
        double[] dArr6 = new double[iHighestOneBit];
        for (int i3 = 0; i3 < length; i3++) {
            dArr5[i3] = (dArr[i3] * dArr3[i3]) + (dArr2[i3] * dArr4[i3]);
            dArr6[i3] = ((-dArr[i3]) * dArr4[i3]) + (dArr2[i3] * dArr3[i3]);
        }
        double[] dArr7 = new double[iHighestOneBit];
        double[] dArr8 = new double[iHighestOneBit];
        dArr7[0] = dArr3[0];
        dArr8[0] = dArr4[0];
        for (int i4 = 1; i4 < length; i4++) {
            double d = dArr3[i4];
            dArr7[iHighestOneBit - i4] = d;
            dArr7[i4] = d;
            double d2 = dArr4[i4];
            dArr8[iHighestOneBit - i4] = d2;
            dArr8[i4] = d2;
        }
        double[] dArr9 = new double[iHighestOneBit];
        double[] dArr10 = new double[iHighestOneBit];
        a(dArr5, dArr6, dArr7, dArr8, dArr9, dArr10);
        for (int i5 = 0; i5 < length; i5++) {
            dArr[i5] = (dArr9[i5] * dArr3[i5]) + (dArr10[i5] * dArr4[i5]);
            dArr2[i5] = ((-dArr9[i5]) * dArr4[i5]) + (dArr10[i5] * dArr3[i5]);
        }
    }

    private static void a(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6) {
        int length = dArr.length;
        a(dArr, dArr2);
        a(dArr3, dArr4);
        for (int i = 0; i < length; i++) {
            double d = (dArr[i] * dArr3[i]) - (dArr2[i] * dArr4[i]);
            dArr2[i] = (dArr2[i] * dArr3[i]) + (dArr[i] * dArr4[i]);
            dArr[i] = d;
        }
        b(dArr, dArr2);
        for (int i2 = 0; i2 < length; i2++) {
            dArr5[i2] = dArr[i2] / ((double) length);
            dArr6[i2] = dArr2[i2] / ((double) length);
        }
    }

    public static void FFTShift1D(double[] dArr, Direction direction) {
        int i = 0;
        if (dArr.length != 1) {
            double[] dArr2 = (double[]) dArr.clone();
            int length = dArr.length / 2;
            if (direction == Direction.Forward) {
                int length2 = dArr.length - length;
                int i2 = 0;
                while (length2 < dArr.length) {
                    dArr[i2] = dArr2[length2];
                    length2++;
                    i2++;
                }
                while (i < dArr.length - length) {
                    dArr[i2] = dArr2[i];
                    i++;
                    i2++;
                }
                return;
            }
            int i3 = length;
            int i4 = 0;
            while (i3 < dArr.length) {
                dArr[i4] = dArr2[i3];
                i3++;
                i4++;
            }
            while (i < length) {
                dArr[i4] = dArr2[i];
                i++;
                i4++;
            }
        }
    }

    public static <E> void FFTShift1D(E[] eArr, Direction direction) {
        int i = 0;
        if (eArr.length != 1) {
            Object[] objArr = (Object[]) eArr.clone();
            int length = eArr.length / 2;
            if (direction == Direction.Forward) {
                int length2 = eArr.length - length;
                int i2 = 0;
                while (length2 < eArr.length) {
                    eArr[i2] = objArr[length2];
                    length2++;
                    i2++;
                }
                while (i < eArr.length - length) {
                    eArr[i2] = objArr[i];
                    i++;
                    i2++;
                }
                return;
            }
            int i3 = length;
            int i4 = 0;
            while (i3 < eArr.length) {
                eArr[i4] = objArr[i3];
                i3++;
                i4++;
            }
            while (i < length) {
                eArr[i4] = objArr[i];
                i++;
                i4++;
            }
        }
    }

    public static void FFTShift2D(double[][] dArr, Direction direction) {
        FFTShift2D(dArr, direction, 1);
        FFTShift2D(dArr, direction, 2);
    }

    public static void FFTShift2D(double[][] dArr, Direction direction, int i) {
        int i2 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i3 = 0; i3 < dArr.length; i3++) {
            for (int i4 = 0; i4 < dArr[0].length; i4++) {
                dArr2[i3][i4] = dArr[i3][i4];
            }
        }
        if (direction == Direction.Forward) {
            if (i == 1) {
                int length = dArr2.length / 2;
                for (int i5 = 0; i5 < length; i5++) {
                    for (int i6 = 0; i6 < dArr[0].length; i6++) {
                        dArr[i5][i6] = dArr2[(dArr2.length - length) + i5][i6];
                    }
                }
                for (int i7 = length; i7 < dArr.length; i7++) {
                    for (int i8 = 0; i8 < dArr[0].length; i8++) {
                        dArr[i7][i8] = dArr2[i7 - length][i8];
                    }
                }
            }
            if (i == 2) {
                while (i2 < dArr.length) {
                    FFTShift1D(dArr[i2], Direction.Forward);
                    i2++;
                }
                return;
            }
            return;
        }
        if (i == 1) {
            int length2 = dArr2.length / 2;
            for (int i9 = 0; i9 < dArr.length - length2; i9++) {
                for (int i10 = 0; i10 < dArr[0].length; i10++) {
                    dArr[i9][i10] = dArr2[length2 + i9][i10];
                }
            }
            for (int i11 = 0; i11 < length2; i11++) {
                for (int i12 = 0; i12 < dArr[0].length; i12++) {
                    dArr[(dArr.length - length2) + i11][i12] = dArr2[i11][i12];
                }
            }
        }
        if (i == 2) {
            while (i2 < dArr.length) {
                FFTShift1D(dArr[i2], Direction.Backward);
                i2++;
            }
        }
    }

    public static <E> void FFTShift2D(E[][] eArr, Direction direction) {
        FFTShift2D(eArr, direction, 1);
        FFTShift2D(eArr, direction, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void FFTShift2D(E[][] eArr, Direction direction, int i) {
        int i2 = 0;
        Object[][] objArr = (Object[][]) Array.newInstance((Class<?>) Object.class, eArr.length, eArr[0].length);
        for (int i3 = 0; i3 < eArr.length; i3++) {
            for (int i4 = 0; i4 < eArr[0].length; i4++) {
                objArr[i3][i4] = eArr[i3][i4];
            }
        }
        if (direction == Direction.Forward) {
            if (i == 1) {
                int length = objArr.length / 2;
                for (int i5 = 0; i5 < length; i5++) {
                    for (int i6 = 0; i6 < eArr[0].length; i6++) {
                        eArr[i5][i6] = objArr[(objArr.length - length) + i5][i6];
                    }
                }
                for (int i7 = length; i7 < eArr.length; i7++) {
                    for (int i8 = 0; i8 < eArr[0].length; i8++) {
                        eArr[i7][i8] = objArr[i7 - length][i8];
                    }
                }
            }
            if (i == 2) {
                while (i2 < eArr.length) {
                    FFTShift1D(eArr[i2], Direction.Forward);
                    i2++;
                }
                return;
            }
            return;
        }
        if (i == 1) {
            int length2 = objArr.length / 2;
            for (int i9 = 0; i9 < eArr.length - length2; i9++) {
                for (int i10 = 0; i10 < eArr[0].length; i10++) {
                    eArr[i9][i10] = objArr[length2 + i9][i10];
                }
            }
            for (int i11 = 0; i11 < length2; i11++) {
                for (int i12 = 0; i12 < eArr[0].length; i12++) {
                    eArr[(eArr.length - length2) + i11][i12] = objArr[i11][i12];
                }
            }
        }
        if (i == 2) {
            while (i2 < eArr.length) {
                FFTShift1D(eArr[i2], Direction.Backward);
                i2++;
            }
        }
    }
}
