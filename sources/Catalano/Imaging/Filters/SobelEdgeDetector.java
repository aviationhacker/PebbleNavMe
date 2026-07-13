package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SobelEdgeDetector implements IApplyInPlace {
    private boolean a = true;

    public boolean isScaleIntensity() {
        return this.a;
    }

    public void setScaleIntensity(boolean z) {
        this.a = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth() - 2;
            int height = fastBitmap.getHeight() - 2;
            int width2 = fastBitmap.getWidth();
            int i = width2 + 1;
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            double d = 0.0d;
            int i2 = 0;
            while (i2 < height) {
                int i3 = 0;
                int i4 = i;
                double d2 = d;
                while (i3 < width) {
                    int gray = fastBitmap2.getGray((i4 - width2) - 1);
                    int gray2 = fastBitmap2.getGray(i4 - width2);
                    int gray3 = fastBitmap2.getGray((i4 - width2) + 1);
                    int gray4 = fastBitmap2.getGray(i4 + 1);
                    int gray5 = fastBitmap2.getGray(i4 + width2);
                    int gray6 = fastBitmap2.getGray(i4 + width2 + 1);
                    int gray7 = fastBitmap2.getGray((i4 + width2) - 1);
                    double dMin = Math.min(255, Math.abs((((gray2 + gray6) - gray) - gray7) + ((gray4 - fastBitmap2.getGray(i4 - 1)) * 2)) + Math.abs((((gray3 + gray) - gray7) - gray2) + ((gray2 - gray5) * 2)));
                    if (dMin > d2) {
                        d2 = dMin;
                    }
                    fastBitmap.setGray(i4, (int) dMin);
                    i3++;
                    i4++;
                }
                i2++;
                i = i4 + 2;
                d = d2;
            }
            int size = fastBitmap.getSize();
            if (this.a && d != 255.0d) {
                double d3 = 255.0d / d;
                for (int i5 = 0; i5 < size; i5++) {
                    fastBitmap.setGray(i5, (int) (((double) fastBitmap.getGray(i5)) * d3));
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("SobelEdgeDetector only works in grayscale images.");
    }
}
