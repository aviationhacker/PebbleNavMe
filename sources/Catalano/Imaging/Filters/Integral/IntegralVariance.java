package Catalano.Imaging.Filters.Integral;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.IntegralImage;

/* JADX INFO: loaded from: classes.dex */
public class IntegralVariance implements IApplyInPlace {
    private int a;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public IntegralVariance() {
        this(1);
    }

    public IntegralVariance(int i) {
        this.a = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            IntegralImage integralImage = new IntegralImage(fastBitmap);
            IntegralImage integralImage2 = new IntegralImage(fastBitmap, 2);
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    float rectangleMean = integralImage.getRectangleMean(i, i2, this.a);
                    fastBitmap.setGray(i, i2, fastBitmap.clampValues((int) (integralImage2.getRectangleMean(i, i2, this.a) - (rectangleMean * rectangleMean)), 0, 255));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Integral variance only works in grayscale images.");
    }
}
