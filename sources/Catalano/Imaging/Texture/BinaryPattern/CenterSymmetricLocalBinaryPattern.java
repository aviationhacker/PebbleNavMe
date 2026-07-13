package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;

/* JADX INFO: loaded from: classes.dex */
public class CenterSymmetricLocalBinaryPattern implements IBinaryPattern {
    private int a;

    public int getThreshold() {
        return this.a;
    }

    public void setThreshold(int i) {
        this.a = i;
    }

    public CenterSymmetricLocalBinaryPattern() {
        this(0);
    }

    public CenterSymmetricLocalBinaryPattern(int i) {
        this.a = i;
    }

    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("CS-LBP only works in grayscale images.");
        }
        int width = fastBitmap.getWidth() - 1;
        int height = fastBitmap.getHeight() - 1;
        int[] iArr = new int[16];
        for (int i = 1; i < height; i++) {
            for (int i2 = 1; i2 < width; i2++) {
                this.a = fastBitmap.getGray(i, i2);
                int i3 = Math.abs(fastBitmap.getGray(i + (-1), i2 + (-1)) - fastBitmap.getGray(i + 1, i2 + 1)) - this.a >= 0 ? 8 : 0;
                if (Math.abs(fastBitmap.getGray(i - 1, i2) - fastBitmap.getGray(i + 1, i2)) - this.a >= 0) {
                    i3 += 4;
                }
                if (Math.abs(fastBitmap.getGray(i - 1, i2 + 1) - fastBitmap.getGray(i + 1, i2 - 1)) - this.a >= 0) {
                    i3 += 2;
                }
                if (Math.abs(fastBitmap.getGray(i, i2 + 1) - fastBitmap.getGray(i, i2 - 1)) - this.a >= 0) {
                    i3++;
                }
                iArr[i3] = iArr[i3] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
