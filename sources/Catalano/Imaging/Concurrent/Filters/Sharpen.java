package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Sharpen implements IApplyInPlace {
    int[][] a = {new int[]{0, -1, 0}, new int[]{-1, 5, -1}, new int[]{0, -1, 0}};

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Convolution(this.a).applyInPlace(fastBitmap);
    }
}
