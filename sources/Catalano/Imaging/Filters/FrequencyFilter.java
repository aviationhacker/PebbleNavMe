package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Math.ComplexNumber;

/* JADX INFO: loaded from: classes.dex */
public class FrequencyFilter {
    private IntRange a;

    public FrequencyFilter() {
        this.a = new IntRange(0, 1024);
    }

    public FrequencyFilter(int i, int i2) {
        this.a = new IntRange(0, 1024);
        this.a = new IntRange(i, i2);
    }

    public FrequencyFilter(IntRange intRange) {
        this.a = new IntRange(0, 1024);
        this.a = intRange;
    }

    public IntRange getFrequencyRange() {
        return this.a;
    }

    public void setFrequencyRange(IntRange intRange) {
        this.a = intRange;
    }

    public void ApplyInPlace(FourierTransform fourierTransform) {
        if (!fourierTransform.isFourierTransformed()) {
            try {
                throw new Exception("the image should be fourier transformed.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int width = fourierTransform.getWidth();
        int height = fourierTransform.getHeight();
        int i = width / 2;
        int i2 = height / 2;
        int min = this.a.getMin();
        int max = this.a.getMax();
        ComplexNumber[][] data = fourierTransform.getData();
        for (int i3 = 0; i3 < height; i3++) {
            int i4 = i3 - i2;
            for (int i5 = 0; i5 < width; i5++) {
                int i6 = i5 - i;
                int iSqrt = (int) Math.sqrt((i6 * i6) + (i4 * i4));
                if (iSqrt > max || iSqrt < min) {
                    data[i3][i5].real = 0.0d;
                    data[i3][i5].imaginary = 0.0d;
                }
            }
        }
    }
}
