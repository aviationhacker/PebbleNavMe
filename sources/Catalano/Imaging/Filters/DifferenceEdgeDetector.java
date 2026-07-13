package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class DifferenceEdgeDetector implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            int width = fastBitmap2.getWidth() - 2;
            int height = fastBitmap2.getHeight() - 2;
            int width2 = fastBitmap.getWidth();
            int i = width2 + 1;
            int i2 = 0;
            while (i2 < height) {
                int i3 = 0;
                int i4 = i;
                while (i3 < width) {
                    int gray = fastBitmap2.getGray((i4 - width2) - 1) - fastBitmap2.getGray((i4 + width2) + 1);
                    if (gray < 0) {
                        gray = -gray;
                    }
                    if (gray <= 0) {
                        gray = 0;
                    }
                    int gray2 = fastBitmap2.getGray(i4 - width2) - fastBitmap2.getGray(i4 + width2);
                    if (gray2 < 0) {
                        gray2 = -gray2;
                    }
                    if (gray2 > gray) {
                        gray = gray2;
                    }
                    int gray3 = fastBitmap2.getGray((i4 - width2) + 1) - fastBitmap2.getGray((i4 + width2) - 1);
                    if (gray3 < 0) {
                        gray3 = -gray3;
                    }
                    if (gray3 > gray) {
                        gray = gray3;
                    }
                    int gray4 = fastBitmap2.getGray(i4 + 1) - fastBitmap2.getGray(i4 - 1);
                    if (gray4 < 0) {
                        gray4 = -gray4;
                    }
                    if (gray4 > gray) {
                        gray = gray4;
                    }
                    fastBitmap.setGray(i4, gray);
                    i3++;
                    i4++;
                }
                i2++;
                i = i4 + 2;
            }
            return;
        }
        throw new IllegalArgumentException("DifferenceEdgeDetector only works in grayscale images.");
    }
}
