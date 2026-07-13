package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class WhitePatch implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            double green = 1.0d;
            double blue = 1.0d;
            double red = 1.0d;
            for (int i = 0; i < size; i++) {
                if (fastBitmap.getRed(i) > red) {
                    red = fastBitmap.getRed(i);
                }
                if (fastBitmap.getGreen(i) > green) {
                    green = fastBitmap.getGreen(i);
                }
                if (fastBitmap.getBlue(i) > blue) {
                    blue = fastBitmap.getBlue(i);
                }
            }
            double d = 255.0d / red;
            double d2 = 255.0d / green;
            double d3 = 255.0d / blue;
            for (int i2 = 0; i2 < size; i2++) {
                double red2 = d * ((double) fastBitmap.getRed(i2));
                double green2 = d2 * ((double) fastBitmap.getGreen(i2));
                double blue2 = ((double) fastBitmap.getBlue(i2)) * d3;
                if (red2 > 255.0d) {
                    red2 = 255.0d;
                }
                if (green2 > 255.0d) {
                    green2 = 255.0d;
                }
                if (blue2 > 255.0d) {
                    blue2 = 255.0d;
                }
                fastBitmap.setRGB(i2, (int) red2, (int) green2, (int) blue2);
            }
            return;
        }
        throw new IllegalArgumentException("White Patch only works in RGB space.");
    }
}
