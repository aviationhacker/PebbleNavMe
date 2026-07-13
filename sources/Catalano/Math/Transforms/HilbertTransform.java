package Catalano.Math.Transforms;

import Catalano.Math.ComplexNumber;
import Catalano.Math.Transforms.FourierTransform;

/* JADX INFO: loaded from: classes.dex */
public class HilbertTransform {
    public static void FHT(double[] dArr, FourierTransform.Direction direction) {
        int length = dArr.length;
        if (direction == FourierTransform.Direction.Forward) {
            ComplexNumber[] complexNumberArr = new ComplexNumber[length];
            for (int i = 0; i < length; i++) {
                complexNumberArr[i] = new ComplexNumber(dArr[i], 0.0d);
            }
            FourierTransform.FFT(complexNumberArr, FourierTransform.Direction.Forward);
            for (int i2 = 1; i2 < length / 2; i2++) {
                complexNumberArr[i2].real *= 2.0d;
                complexNumberArr[i2].imaginary *= 2.0d;
            }
            for (int i3 = (length / 2) + 1; i3 < length; i3++) {
                complexNumberArr[i3].real = 0.0d;
                complexNumberArr[i3].imaginary = 0.0d;
            }
            FourierTransform.FFT(complexNumberArr, FourierTransform.Direction.Backward);
            for (int i4 = 0; i4 < length; i4++) {
                dArr[i4] = complexNumberArr[i4].imaginary;
            }
            return;
        }
        FHT(dArr, FourierTransform.Direction.Forward);
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr[i5] = -dArr[i5];
        }
    }

    public static void FHT(ComplexNumber[] complexNumberArr, FourierTransform.Direction direction) {
        int length = complexNumberArr.length;
        if (direction == FourierTransform.Direction.Forward) {
            ComplexNumber[] complexNumberArr2 = (ComplexNumber[]) complexNumberArr.clone();
            FourierTransform.FFT(complexNumberArr2, FourierTransform.Direction.Backward);
            for (int i = 1; i < length / 2; i++) {
                complexNumberArr2[i].real *= 2.0d;
                complexNumberArr2[i].imaginary *= 2.0d;
            }
            for (int i2 = (length / 2) + 1; i2 < length; i2++) {
                complexNumberArr2[i2].real = 0.0d;
                complexNumberArr2[i2].imaginary = 0.0d;
            }
            FourierTransform.FFT(complexNumberArr2, FourierTransform.Direction.Forward);
            for (int i3 = 0; i3 < length; i3++) {
                complexNumberArr[i3].imaginary = complexNumberArr2[i3].imaginary;
            }
            return;
        }
        for (ComplexNumber complexNumber : complexNumberArr) {
            complexNumber.imaginary = 0.0d;
        }
    }

    public static void FHT2(ComplexNumber[][] complexNumberArr, FourierTransform.Direction direction) {
        int length = complexNumberArr.length;
        ComplexNumber[] complexNumberArr2 = new ComplexNumber[Math.max(complexNumberArr[0].length, length)];
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                complexNumberArr2[i2] = complexNumberArr[i][i2];
            }
            FHT(complexNumberArr2, direction);
            for (int i3 = 0; i3 < length; i3++) {
                complexNumberArr[i][i3] = complexNumberArr2[i3];
            }
        }
        ComplexNumber[] complexNumberArr3 = new ComplexNumber[length];
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = 0; i5 < length; i5++) {
                complexNumberArr3[i5] = complexNumberArr[i5][i4];
            }
            FHT(complexNumberArr3, direction);
            for (int i6 = 0; i6 < length; i6++) {
                complexNumberArr[i6][i4] = complexNumberArr3[i6];
            }
        }
    }
}
