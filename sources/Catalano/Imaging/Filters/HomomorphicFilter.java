package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.ComplexNumber;

/* JADX INFO: loaded from: classes.dex */
public class HomomorphicFilter implements IApplyInPlace {
    private IntRange a;

    public HomomorphicFilter() {
    }

    public HomomorphicFilter(int i, int i2) {
        this.a = new IntRange(i, i2);
    }

    public HomomorphicFilter(IntRange intRange) {
        this.a = intRange;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FourierTransform fourierTransform = new FourierTransform(fastBitmap);
        ComplexNumber[][] data = fourierTransform.getData();
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                data[i][i2].real = Math.log(data[i][i2].real + 1.0d);
            }
        }
        fourierTransform.setData(data);
        fourierTransform.Forward();
        new FrequencyFilter(this.a).ApplyInPlace(fourierTransform);
        fourierTransform.Backward();
        ComplexNumber[][] data2 = fourierTransform.getData();
        for (int i3 = 0; i3 < height; i3++) {
            for (int i4 = 0; i4 < width; i4++) {
                data2[i3][i4].real = Math.exp(data2[i3][i4].real - 1.0d);
            }
        }
        fourierTransform.setData(data2);
        fastBitmap.setImage(fourierTransform.toFastBitmap());
    }
}
