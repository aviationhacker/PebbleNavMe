package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Merge implements IApplyInPlace {
    private FastBitmap a;

    public Merge() {
    }

    public Merge(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int size = fastBitmap.getSize();
        int width = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (size == width) {
                while (i < size) {
                    int gray = this.a.getGray(i);
                    if (gray > fastBitmap.getGray(i)) {
                        fastBitmap.setGray(i, gray);
                    }
                    i++;
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && size == width) {
            while (i < size) {
                int red = this.a.getRed(i);
                int green = this.a.getGreen(i);
                int blue = this.a.getBlue(i);
                if (red > fastBitmap.getRed(i)) {
                    fastBitmap.setRed(i, red);
                }
                if (green > fastBitmap.getGreen(i)) {
                    fastBitmap.setGreen(i, green);
                }
                if (blue > fastBitmap.getBlue(i)) {
                    fastBitmap.setBlue(i, blue);
                }
                i++;
            }
        }
    }
}
