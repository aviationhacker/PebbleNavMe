package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class ImageNormalization implements IApplyInPlace {
    private float a = 160.0f;
    private float b = 150.0f;

    public float getMean() {
        return this.a;
    }

    public void setMean(float f) {
        this.a = Math.max(0.0f, Math.min(255.0f, f));
    }

    public float getVariance() {
        return this.b;
    }

    public void setVariance(float f) {
        this.b = Math.max(0.0f, Math.min(255.0f, f));
    }

    public ImageNormalization() {
    }

    public ImageNormalization(float f, float f2) {
        setMean(f);
        setVariance(f2);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            float fMean = ImageStatistics.Mean(fastBitmap);
            float fVariance = ImageStatistics.Variance(fastBitmap, fMean);
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    int gray = fastBitmap.getGray(i2, i3);
                    float fSqrt = (float) Math.sqrt((this.b * ((float) Math.pow(gray - fMean, 2.0d))) / fVariance);
                    if (gray > fMean) {
                        i = (int) (this.a + fSqrt);
                    } else {
                        i = (int) (this.a - fSqrt);
                    }
                    if (i > 255) {
                        i = 255;
                    }
                    if (i < 0) {
                        i = 0;
                    }
                    fastBitmap.setGray(i2, i3, i);
                }
            }
            return;
        }
        throw new IllegalArgumentException("ImageNormalization only works with grayscale images.");
    }
}
