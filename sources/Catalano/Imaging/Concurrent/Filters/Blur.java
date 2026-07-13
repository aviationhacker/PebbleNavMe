package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Blur implements IApplyInPlace {
    int[][] a = {new int[]{1, 2, 3, 2, 1}, new int[]{2, 4, 5, 4, 2}, new int[]{3, 5, 6, 5, 3}, new int[]{2, 4, 5, 4, 2}, new int[]{1, 2, 3, 2, 1}};

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Convolution(this.a).applyInPlace(fastBitmap);
    }
}
