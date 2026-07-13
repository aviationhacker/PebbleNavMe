package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class HomogenityEdgeDetector implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth() - 2;
            int height = fastBitmap.getHeight() - 2;
            int width2 = fastBitmap.getWidth();
            int i = width2 + 1;
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            int i2 = 0;
            while (i2 < height) {
                int i3 = 0;
                int i4 = i;
                while (i3 < width) {
                    int gray = fastBitmap2.getGray(i4);
                    int gray2 = gray - fastBitmap2.getGray((i4 - width2) - 1);
                    if (gray2 < 0) {
                        gray2 = -gray2;
                    }
                    if (gray2 <= 0) {
                        gray2 = 0;
                    }
                    int gray3 = gray - fastBitmap2.getGray(i4 - width2);
                    if (gray3 < 0) {
                        gray3 = -gray3;
                    }
                    if (gray3 > gray2) {
                        gray2 = gray3;
                    }
                    int gray4 = gray - fastBitmap2.getGray((i4 - width2) + 1);
                    if (gray4 < 0) {
                        gray4 = -gray4;
                    }
                    if (gray4 > gray2) {
                        gray2 = gray4;
                    }
                    int gray5 = gray - fastBitmap2.getGray(i4 - 1);
                    if (gray5 < 0) {
                        gray5 = -gray5;
                    }
                    if (gray5 > gray2) {
                        gray2 = gray5;
                    }
                    int gray6 = gray - fastBitmap2.getGray(i4 + 1);
                    if (gray6 < 0) {
                        gray6 = -gray6;
                    }
                    if (gray6 > gray2) {
                        gray2 = gray6;
                    }
                    int gray7 = gray - fastBitmap2.getGray((i4 + width2) - 1);
                    if (gray7 < 0) {
                        gray7 = -gray7;
                    }
                    if (gray7 > gray2) {
                        gray2 = gray7;
                    }
                    int gray8 = gray - fastBitmap2.getGray(i4 + width2);
                    if (gray8 < 0) {
                        gray8 = -gray8;
                    }
                    if (gray8 > gray2) {
                        gray2 = gray8;
                    }
                    int gray9 = gray - fastBitmap2.getGray((i4 + width2) + 1);
                    if (gray9 < 0) {
                        gray9 = -gray9;
                    }
                    if (gray9 > gray2) {
                        gray2 = gray9;
                    }
                    fastBitmap.setGray(i4, gray2);
                    i3++;
                    i4++;
                }
                i2++;
                i = i4 + 2;
            }
            return;
        }
        throw new IllegalArgumentException("Homogenity Edge Detector only works with grayscale images.");
    }
}
