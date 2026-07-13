package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Invert implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            while (i < size) {
                fastBitmap.setGray(i, 255 - fastBitmap.getGray(i));
                i++;
            }
        } else if (fastBitmap.isRGB()) {
            while (i < size) {
                fastBitmap.setRGB(i, 255 - fastBitmap.getRed(i), 255 - fastBitmap.getGreen(i), 255 - fastBitmap.getBlue(i));
                i++;
            }
        }
    }
}
