package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class GaussianNoise implements IApplyInPlace {
    private double a;

    public double getStdDev() {
        return this.a;
    }

    public void setStdDev(double d) {
        this.a = d;
    }

    public GaussianNoise() {
        this.a = 10.0d;
    }

    public GaussianNoise(double d) {
        this.a = 10.0d;
        this.a = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int size = fastBitmap.getSize();
            Random random = new Random();
            for (int i = 0; i < size; i++) {
                int gray = (int) (((double) fastBitmap.getGray(i)) + (this.a * random.nextGaussian()));
                if (gray > 255) {
                    gray = 255;
                }
                if (gray < 0) {
                    gray = 0;
                }
                fastBitmap.setGray(i, gray);
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int size2 = fastBitmap.getSize();
            Random random2 = new Random();
            for (int i2 = 0; i2 < size2; i2++) {
                int red = fastBitmap.getRed(i2);
                int green = fastBitmap.getGreen(i2);
                int blue = fastBitmap.getBlue(i2);
                int iNextGaussian = (int) (((double) red) + (this.a * random2.nextGaussian()));
                int iNextGaussian2 = (int) (((double) green) + (this.a * random2.nextGaussian()));
                int iNextGaussian3 = (int) (((double) blue) + (this.a * random2.nextGaussian()));
                if (iNextGaussian > 255) {
                    iNextGaussian = 255;
                }
                if (iNextGaussian < 0) {
                    iNextGaussian = 0;
                }
                if (iNextGaussian2 > 255) {
                    iNextGaussian2 = 255;
                }
                if (iNextGaussian2 < 0) {
                    iNextGaussian2 = 0;
                }
                if (iNextGaussian3 > 255) {
                    iNextGaussian3 = 255;
                }
                if (iNextGaussian3 < 0) {
                    iNextGaussian3 = 0;
                }
                fastBitmap.setRGB(i2, iNextGaussian, iNextGaussian2, iNextGaussian3);
            }
            return;
        }
        throw new IllegalArgumentException("Gaussian noise only works in grayscale and rgb images.");
    }
}
