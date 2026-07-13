package Catalano.Imaging.Filters.Integral;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.IntegralImage;

/* JADX INFO: loaded from: classes.dex */
public class IntegralMean implements IApplyInPlace {
    private int a;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public IntegralMean() {
        this(1);
    }

    public IntegralMean(int i) {
        setRadius(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            IntegralImage integralImage = new IntegralImage(fastBitmap);
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    fastBitmap.setGray(i, i2, fastBitmap.clampValues((int) integralImage.getRectangleMean(i, i2, this.a), 0, 255));
                }
            }
            return;
        }
        throw new IllegalArgumentException("IntegralMean only works in grayscale images.");
    }
}
