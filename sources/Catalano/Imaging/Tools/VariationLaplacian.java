package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Convolution;

/* JADX INFO: loaded from: classes.dex */
public class VariationLaplacian {
    public double Compute(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            new Convolution(new int[][]{new int[]{0, 1, 0}, new int[]{1, -4, 1}, new int[]{0, 1, 0}}).applyInPlace(fastBitmap);
            return ImageStatistics.Variance(fastBitmap);
        }
        throw new IllegalArgumentException("Variation laplacian only works in grayscale images.");
    }
}
