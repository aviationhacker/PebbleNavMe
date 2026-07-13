package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ModifiedWhitePatch implements IApplyInPlace {
    int a;

    public ModifiedWhitePatch() {
        this.a = 128;
    }

    public ModifiedWhitePatch(int i) {
        this.a = 128;
        this.a = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            double green = 0.0d;
            double blue = 0.0d;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            double red = 0.0d;
            for (int i4 = 0; i4 < size; i4++) {
                if (fastBitmap.getRed(i4) > this.a) {
                    red += (double) fastBitmap.getRed(i4);
                    i3++;
                }
                if (fastBitmap.getGreen(i4) > this.a) {
                    green += (double) fastBitmap.getGreen(i4);
                    i++;
                }
                if (fastBitmap.getBlue(i4) > this.a) {
                    blue += (double) fastBitmap.getBlue(i4);
                    i2++;
                }
            }
            double d = 255.0d / (red / ((double) i3));
            double d2 = 255.0d / (green / ((double) i));
            double d3 = 255.0d / (blue / ((double) i2));
            for (int i5 = 0; i5 < size; i5++) {
                double red2 = d * ((double) fastBitmap.getRed(i5));
                double green2 = d2 * ((double) fastBitmap.getGreen(i5));
                double blue2 = ((double) fastBitmap.getBlue(i5)) * d3;
                if (red2 > 255.0d) {
                    red2 = 255.0d;
                }
                if (green2 > 255.0d) {
                    green2 = 255.0d;
                }
                if (blue2 > 255.0d) {
                    blue2 = 255.0d;
                }
                fastBitmap.setRGB(i5, (int) red2, (int) green2, (int) blue2);
            }
            return;
        }
        throw new IllegalArgumentException("Modified White Patch only works in RGB images.");
    }
}
