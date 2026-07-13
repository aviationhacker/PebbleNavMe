package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Tools;

/* JADX INFO: loaded from: classes.dex */
public class ImageQuantization implements IApplyInPlace {
    private int a;

    public ImageQuantization() {
        this.a = 16;
    }

    public ImageQuantization(int i) {
        this.a = 16;
        if (Tools.isPowerOf2(i)) {
            this.a = Math.min(i, 256);
        } else {
            this.a = Math.min(Tools.NextPowerOf2(i), 256);
        }
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = 256 / (this.a - 1);
        int i2 = 256 / i;
        if (fastBitmap.isGrayscale()) {
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    int gray = fastBitmap.getGray(i3, i4);
                    int i5 = i;
                    for (int i6 = 0; i6 < i2; i6++) {
                        if (gray > i6 * i && gray <= i5) {
                            fastBitmap.setGray(i3, i4, i6 * i);
                        }
                        i5 += i;
                    }
                }
            }
            return;
        }
        try {
            throw new IllegalArgumentException("ImageQuantization only works with grayscale images");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
