package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class MedianBinaryPattern implements IBinaryPattern {
    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("MBP only works in grayscale images.");
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[511];
        int[] iArr2 = new int[9];
        for (int i = 1; i < height; i++) {
            for (int i2 = 1; i2 < width; i2++) {
                iArr2[0] = fastBitmap.getGray(i - 1, i2 - 1);
                iArr2[1] = fastBitmap.getGray(i - 1, i2);
                iArr2[2] = fastBitmap.getGray(i - 1, i2 + 1);
                iArr2[3] = fastBitmap.getGray(i, i2 - 1);
                iArr2[4] = fastBitmap.getGray(i, i2);
                iArr2[5] = fastBitmap.getGray(i, i2 + 1);
                iArr2[6] = fastBitmap.getGray(i + 1, i2 - 1);
                iArr2[7] = fastBitmap.getGray(i + 1, i2);
                iArr2[8] = fastBitmap.getGray(i + 1, i2 + 1);
                Arrays.sort(iArr2);
                int i3 = iArr2[4];
                int i4 = fastBitmap.getGray(i + (-1), i2 + (-1)) - i3 >= 0 ? 128 : 0;
                if (fastBitmap.getGray(i - 1, i2) - i3 >= 0) {
                    i4 += 64;
                }
                if (fastBitmap.getGray(i - 1, i2 + 1) - i3 >= 0) {
                    i4 += 32;
                }
                if (fastBitmap.getGray(i, i2 + 1) - i3 >= 0) {
                    i4 += 16;
                }
                if (fastBitmap.getGray(i + 1, i2 + 1) - i3 >= 0) {
                    i4 += 8;
                }
                if (fastBitmap.getGray(i + 1, i2) - i3 >= 0) {
                    i4 += 4;
                }
                if (fastBitmap.getGray(i + 1, i2 - 1) - i3 >= 0) {
                    i4 += 2;
                }
                if (fastBitmap.getGray(i, i2 - 1) - i3 >= 0) {
                    i4++;
                }
                if (fastBitmap.getGray(i, i2) - i3 >= 0) {
                    i4 += 256;
                }
                if (i4 == 511) {
                    i4 = 0;
                }
                iArr[i4] = iArr[i4] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
