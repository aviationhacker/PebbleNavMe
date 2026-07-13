package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;

/* JADX INFO: loaded from: classes.dex */
public class GradientLocalBinaryPattern implements IBinaryPattern {
    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            try {
                throw new Exception("GLBP works only with grayscale images.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[256];
        for (int i = 1; i < height; i++) {
            for (int i2 = 1; i2 < width; i2++) {
                int gray = fastBitmap.getGray(i, i2);
                int iAbs = (int) (0.5d * ((double) (Math.abs(fastBitmap.getGray(i - 1, i2 - 1) - fastBitmap.getGray(i, i2)) + Math.abs(fastBitmap.getGray(i + 1, i2) - fastBitmap.getGray(i - 1, i2)))));
                int i3 = iAbs - Math.abs(fastBitmap.getGray(i + (-1), i2 + (-1)) - gray) >= 0 ? 128 : 0;
                if (iAbs - Math.abs(fastBitmap.getGray(i - 1, i2) - gray) >= 0) {
                    i3 += 64;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i - 1, i2 + 1) - gray) >= 0) {
                    i3 += 32;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i, i2 + 1) - gray) >= 0) {
                    i3 += 16;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i + 1, i2 + 1) - gray) >= 0) {
                    i3 += 8;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i + 1, i2) - gray) >= 0) {
                    i3 += 4;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i + 1, i2 - 1) - gray) >= 0) {
                    i3 += 2;
                }
                if (iAbs - Math.abs(fastBitmap.getGray(i, i2 - 1) - gray) >= 0) {
                    i3++;
                }
                iArr[i3] = iArr[i3] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
