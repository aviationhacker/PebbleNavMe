package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Emboss implements IApplyInPlace {
    int[][] a = {new int[]{-2, 0, 0}, new int[]{0, 1, 0}, new int[]{0, 0, 2}};

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Convolution(this.a).applyInPlace(fastBitmap);
    }
}
