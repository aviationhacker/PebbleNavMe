package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;

/* JADX INFO: loaded from: classes.dex */
public class ImprovedLocalBinaryPattern implements IBinaryPattern {
    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("ILBP works only with grayscale images.");
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[511];
        for (int i = 1; i < height; i++) {
            int i2 = 1;
            int i3 = 0;
            while (i2 < width) {
                int gray = (((((((((i3 + fastBitmap.getGray(i - 1, i2 - 1)) + fastBitmap.getGray(i - 1, i2)) + fastBitmap.getGray(i - 1, i2 + 1)) + fastBitmap.getGray(i, i2 - 1)) + fastBitmap.getGray(i, i2)) + fastBitmap.getGray(i, i2 + 1)) + fastBitmap.getGray(i + 1, i2 - 1)) + fastBitmap.getGray(i + 1, i2)) + fastBitmap.getGray(i + 1, i2 + 1)) / 9;
                int i4 = fastBitmap.getGray(i + (-1), i2 + (-1)) - gray >= 0 ? 128 : 0;
                if (fastBitmap.getGray(i - 1, i2) - gray >= 0) {
                    i4 += 64;
                }
                if (fastBitmap.getGray(i - 1, i2 + 1) - gray >= 0) {
                    i4 += 32;
                }
                if (fastBitmap.getGray(i, i2 + 1) - gray >= 0) {
                    i4 += 16;
                }
                if (fastBitmap.getGray(i + 1, i2 + 1) - gray >= 0) {
                    i4 += 8;
                }
                if (fastBitmap.getGray(i + 1, i2) - gray >= 0) {
                    i4 += 4;
                }
                if (fastBitmap.getGray(i + 1, i2 - 1) - gray >= 0) {
                    i4 += 2;
                }
                if (fastBitmap.getGray(i, i2 - 1) - gray >= 0) {
                    i4++;
                }
                if (fastBitmap.getGray(i, i2) - gray >= 0) {
                    i4 += 256;
                }
                if (i4 == 511) {
                    i4 = 0;
                }
                iArr[i4] = iArr[i4] + 1;
                i2++;
                i3 = gray;
            }
        }
        return new ImageHistogram(iArr);
    }
}
