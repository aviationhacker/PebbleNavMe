package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;

/* JADX INFO: loaded from: classes.dex */
public class WeberBinaryPattern implements IBinaryPattern {
    private double a;

    public double getThreshold() {
        return this.a;
    }

    public void setThreshold(double d) {
        this.a = d;
    }

    public WeberBinaryPattern() {
        this(-0.2d);
    }

    public WeberBinaryPattern(double d) {
        this.a = d;
    }

    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("WBP works only with grayscale images.");
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[256];
        for (int i = 1; i < height; i++) {
            for (int i2 = 1; i2 < width; i2++) {
                double gray = fastBitmap.getGray(i, i2);
                int i3 = (((double) fastBitmap.getGray(i + (-1), i2 + (-1))) - gray) / gray > this.a ? 128 : 0;
                if ((((double) fastBitmap.getGray(i - 1, i2)) - gray) / gray > this.a) {
                    i3 += 64;
                }
                if ((((double) fastBitmap.getGray(i - 1, i2 + 1)) - gray) / gray > this.a) {
                    i3 += 32;
                }
                if ((((double) fastBitmap.getGray(i, i2 + 1)) - gray) / gray > this.a) {
                    i3 += 16;
                }
                if ((((double) fastBitmap.getGray(i + 1, i2 + 1)) - gray) / gray > this.a) {
                    i3 += 8;
                }
                if ((((double) fastBitmap.getGray(i + 1, i2)) - gray) / gray > this.a) {
                    i3 += 4;
                }
                if ((((double) fastBitmap.getGray(i + 1, i2 - 1)) - gray) / gray > this.a) {
                    i3 += 2;
                }
                if ((((double) fastBitmap.getGray(i, i2 - 1)) - gray) / gray > this.a) {
                    i3++;
                }
                iArr[i3] = iArr[i3] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
