package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class GrayWorld implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            double red = 0.0d;
            double green = 0.0d;
            double blue = 0.0d;
            for (int i = 0; i < size; i++) {
                red += (double) fastBitmap.getRed(i);
                green += (double) fastBitmap.getGreen(i);
                blue += (double) fastBitmap.getBlue(i);
            }
            double d = red / ((double) size);
            double d2 = green / ((double) size);
            double d3 = blue / ((double) size);
            double d4 = ((d + d2) + d3) / 3.0d;
            double d5 = d4 / d;
            double d6 = d4 / d2;
            double d7 = d4 / d3;
            for (int i2 = 0; i2 < size; i2++) {
                double red2 = d5 * ((double) fastBitmap.getRed(i2));
                double green2 = d6 * ((double) fastBitmap.getGreen(i2));
                double blue2 = ((double) fastBitmap.getBlue(i2)) * d7;
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
        throw new IllegalArgumentException("Gray World only works in RGB images.");
    }
}
