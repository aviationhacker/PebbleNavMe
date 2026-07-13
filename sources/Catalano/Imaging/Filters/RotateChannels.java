package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class RotateChannels implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                fastBitmap.setRGB(i, fastBitmap.getGreen(i), fastBitmap.getBlue(i), fastBitmap.getRed(i));
            }
            return;
        }
        throw new IllegalArgumentException("RotateChannels only works in RGB imagens.");
    }
}
