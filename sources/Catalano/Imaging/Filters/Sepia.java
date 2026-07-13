package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Sepia implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int size = fastBitmap.getSize();
        for (int i = 0; i < size; i++) {
            double blue = (0.114d * ((double) fastBitmap.getBlue(i))) + (((double) fastBitmap.getGreen(i)) * 0.587d) + (0.299d * ((double) fastBitmap.getRed(i)));
            int i2 = (int) ((1.0d * blue) + (0.956d * 51.0d) + (0.621d * 0.0d));
            int i3 = (int) (((1.0d * blue) - (0.272d * 51.0d)) - (0.647d * 0.0d));
            int i4 = (int) (((blue * 1.0d) - (51.0d * 1.105d)) + (1.702d * 0.0d));
            if (i2 < 0) {
                i2 = 0;
            }
            if (i2 > 255) {
                i2 = 255;
            }
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 > 255) {
                i3 = 255;
            }
            if (i4 < 0) {
                i4 = 0;
            }
            if (i4 > 255) {
                i4 = 255;
            }
            fastBitmap.setRGB(i, i2, i3, i4);
        }
    }
}
