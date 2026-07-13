package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class RobertsCrossEdgeDetector implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            FastBitmap fastBitmap2 = new FastBitmap(width, height, FastBitmap.ColorSpace.Grayscale);
            for (int i = 1; i < height - 1; i++) {
                for (int i2 = 1; i2 < width - 1; i2++) {
                    fastBitmap2.setGray(i, i2, Math.abs(fastBitmap.getGray(i - 1, i2 - 1) - fastBitmap.getGray(i, i2)) + Math.abs(fastBitmap.getGray(i - 1, i2) - fastBitmap.getGray(i, i2 - 1)));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            fastBitmap2.recycle();
            return;
        }
        throw new IllegalArgumentException("Roberts Cross Edge Detector only works with grayscale images.");
    }
}
