package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;

/* JADX INFO: loaded from: classes.dex */
public class LocalGradientCodingHD implements IBinaryPattern {
    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("LGC-HD works only with grayscale images.");
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[32];
        for (int i = 1; i < height; i++) {
            for (int i2 = 1; i2 < width; i2++) {
                int i3 = fastBitmap.getGray(i + (-1), i2 + (-1)) - fastBitmap.getGray(i + (-1), i2 + 1) >= 0 ? 16 : 0;
                if (fastBitmap.getGray(i, i2 - 1) - fastBitmap.getGray(i, i2 + 1) >= 0) {
                    i3 += 8;
                }
                if (fastBitmap.getGray(i + 1, i2 - 1) - fastBitmap.getGray(i + 1, i2 + 1) >= 0) {
                    i3 += 4;
                }
                if (fastBitmap.getGray(i - 1, i2 - 1) - fastBitmap.getGray(i + 1, i2 + 1) >= 0) {
                    i3 += 2;
                }
                if (fastBitmap.getGray(i - 1, i2 + 1) - fastBitmap.getGray(i + 1, i2 - 1) >= 0) {
                    i3++;
                }
                iArr[i3] = iArr[i3] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
