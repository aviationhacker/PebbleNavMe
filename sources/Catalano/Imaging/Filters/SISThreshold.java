package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SISThreshold implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Threshold(CalculateThreshold(fastBitmap)).applyInPlace(fastBitmap);
    }

    public int CalculateThreshold(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            double d = 0.0d;
            double d2 = 0.0d;
            int width = fastBitmap.getWidth() - 1;
            int height = fastBitmap.getHeight() - 1;
            int i = 1;
            while (i < height) {
                double d3 = d2;
                double d4 = d;
                int i2 = 1;
                while (i2 < width) {
                    double dAbs = Math.abs(fastBitmap.getGray(i + 1, i2) - fastBitmap.getGray(i - 1, i2));
                    double dAbs2 = Math.abs(fastBitmap.getGray(i, i2 + 1) - fastBitmap.getGray(i, i2 - 1));
                    if (dAbs <= dAbs2) {
                        dAbs = dAbs2;
                    }
                    d4 += dAbs;
                    double gray = d3 + (dAbs * ((double) fastBitmap.getGray(i, i2)));
                    i2++;
                    d3 = gray;
                }
                i++;
                d2 = d3;
                d = d4;
            }
            if (d == 0.0d) {
                return 0;
            }
            return (int) (d2 / d);
        }
        throw new IllegalArgumentException("SIS threshold only works in grayscale images.");
    }
}
