package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Outline implements IApplyInPlace {
    private final int[][] a = {new int[]{0, 1, 0}, new int[]{1, 1, 1}, new int[]{0, 1, 0}};

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            new BinaryErosion(this.a).applyInPlace(fastBitmap2);
            new Subtract(fastBitmap2).applyInPlace(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Outline only works in grayscale images.");
    }
}
