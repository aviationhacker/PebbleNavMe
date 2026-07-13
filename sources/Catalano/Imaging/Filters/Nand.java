package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Nand implements IApplyInPlace {
    FastBitmap a;

    public Nand() {
    }

    public Nand(FastBitmap fastBitmap) {
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
        if (fastBitmap.isGrayscale() && this.a.isGrayscale() && i == width2) {
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    int gray = fastBitmap.getGray(i2, i3);
                    int gray2 = this.a.getGray(i2, i3);
                    if (gray == 255 && gray2 == 255) {
                        fastBitmap.setGray(i2, i3, 0);
                    } else {
                        fastBitmap.setGray(i2, i3, 255);
                    }
                }
            }
        }
    }
}
