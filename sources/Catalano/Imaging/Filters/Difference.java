package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Difference implements IApplyInPlace {
    private FastBitmap a;

    public Difference() {
    }

    public Difference(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = width * height;
        int width2 = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (i == width2) {
                for (int i2 = 0; i2 < height; i2++) {
                    for (int i3 = 0; i3 < width; i3++) {
                        int gray = fastBitmap.getGray(i2, i3) - this.a.getGray(i2, i3);
                        if (gray < 0) {
                            gray = -gray;
                        }
                        fastBitmap.setGray(i2, i3, gray);
                    }
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && i == width2) {
            for (int i4 = 0; i4 < height; i4++) {
                for (int i5 = 0; i5 < width; i5++) {
                    int red = fastBitmap.getRed(i4, i5) - this.a.getRed(i4, i5);
                    int green = fastBitmap.getGreen(i4, i5) - this.a.getGreen(i4, i5);
                    int blue = fastBitmap.getBlue(i4, i5) - this.a.getBlue(i4, i5);
                    if (red < 0) {
                        red = -red;
                    }
                    if (green < 0) {
                        green = -green;
                    }
                    if (blue < 0) {
                        blue = -blue;
                    }
                    fastBitmap.setRGB(i4, i5, red, green, blue);
                }
            }
        }
    }
}
