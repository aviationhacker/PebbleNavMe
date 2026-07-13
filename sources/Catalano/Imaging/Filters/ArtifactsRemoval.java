package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ArtifactsRemoval implements IApplyInPlace {
    private int a;

    public ArtifactsRemoval() {
        this.a = 15;
    }

    public ArtifactsRemoval(int i) {
        this.a = 15;
        this.a = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            int i = this.a / 2;
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    double gray = 0.0d;
                    int i4 = 0;
                    int i5 = i2 - i;
                    while (i5 < i2 + i) {
                        int i6 = i4;
                        for (int i7 = i3 - i; i7 < i3 + i; i7++) {
                            if (i5 >= 0 && i7 >= 0 && i5 < height && i7 < width) {
                                gray += (double) fastBitmap2.getGray(i5, i7);
                                i6++;
                            }
                        }
                        i5++;
                        i4 = i6;
                    }
                    fastBitmap.setGray(i2, i3, (int) (((double) fastBitmap.getGray(i2, i3)) - (gray / ((double) i4))));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Artifacts Removal only works in grayscale images.");
    }
}
