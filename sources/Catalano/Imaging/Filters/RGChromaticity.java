package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ColorConverter;

/* JADX INFO: loaded from: classes.dex */
public class RGChromaticity implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                double[] dArrRGChromaticity = ColorConverter.RGChromaticity(fastBitmap.getRed(i), fastBitmap.getGreen(i), fastBitmap.getBlue(i));
                fastBitmap.setRGB(i, (int) (dArrRGChromaticity[0] * 255.0d), (int) (dArrRGChromaticity[1] * 255.0d), (int) (dArrRGChromaticity[2] * 255.0d));
            }
            return;
        }
        throw new IllegalArgumentException("RGChromaticity only works with RGB images");
    }
}
