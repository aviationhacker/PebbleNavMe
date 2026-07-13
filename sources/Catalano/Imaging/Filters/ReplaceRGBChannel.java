package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ReplaceRGBChannel implements IApplyInPlace {
    private FastBitmap a;
    private RGB b;

    public enum RGB {
        R,
        G,
        B
    }

    public ReplaceRGBChannel() {
    }

    public ReplaceRGBChannel(FastBitmap fastBitmap, RGB rgb) {
        this.a = fastBitmap;
        this.b = rgb;
    }

    public FastBitmap getBand() {
        return this.a;
    }

    public void setBand(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public RGB getRGB() {
        return this.b;
    }

    public void setRGB(RGB rgb) {
        this.b = rgb;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (!this.a.isGrayscale() || !fastBitmap.isRGB()) {
            try {
                throw new Exception("ReplaceRGBChannel needs one image grayscale and another RGB image");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.a.getWidth() != fastBitmap.getWidth() || this.a.getHeight() != fastBitmap.getHeight()) {
            try {
                throw new Exception("The image must be the same dimension");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        switch (this.b) {
            case R:
                for (int i = 0; i < height; i++) {
                    for (int i2 = 0; i2 < width; i2++) {
                        fastBitmap.setRed(i, i2, this.a.getGray(i, i2));
                    }
                }
                break;
            case G:
                for (int i3 = 0; i3 < height; i3++) {
                    for (int i4 = 0; i4 < width; i4++) {
                        fastBitmap.setGreen(i3, i4, this.a.getGray(i3, i4));
                    }
                }
                break;
            case B:
                for (int i5 = 0; i5 < height; i5++) {
                    for (int i6 = 0; i6 < width; i6++) {
                        fastBitmap.setBlue(i5, i6, this.a.getGray(i5, i6));
                    }
                }
                break;
        }
    }
}
