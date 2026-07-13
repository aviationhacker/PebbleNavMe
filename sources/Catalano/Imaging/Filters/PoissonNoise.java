package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class PoissonNoise implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                fastBitmap.setGray(i, a(fastBitmap.getGray(i)));
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int size2 = fastBitmap.getSize();
            for (int i2 = 0; i2 < size2; i2++) {
                int red = fastBitmap.getRed(i2);
                int green = fastBitmap.getGreen(i2);
                int blue = fastBitmap.getBlue(i2);
                int iA = a(red);
                int iA2 = a(green);
                int iA3 = a(blue);
                if (iA > 255) {
                    iA = 255;
                }
                if (iA2 > 255) {
                    iA2 = 255;
                }
                if (iA3 > 255) {
                    iA3 = 255;
                }
                if (iA < 0) {
                    iA = 0;
                }
                if (iA2 < 0) {
                    iA2 = 0;
                }
                if (iA3 < 0) {
                    iA3 = 0;
                }
                fastBitmap.setRGB(i2, iA, iA2, iA3);
            }
            return;
        }
        throw new IllegalArgumentException("Poisson Noise only works in Grayscale and RGB images.");
    }

    private int a(float f) {
        double dExp = Math.exp(-f);
        int i = 0;
        double dRandom = 1.0d;
        do {
            i++;
            dRandom *= Math.random();
        } while (dRandom >= dExp);
        return i - 1;
    }
}
