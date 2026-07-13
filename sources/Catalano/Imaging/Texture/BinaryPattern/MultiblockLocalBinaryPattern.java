package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;
import Catalano.Imaging.Tools.IntegralImage;

/* JADX INFO: loaded from: classes.dex */
public class MultiblockLocalBinaryPattern implements IBinaryPattern {
    private int a;
    private int b;

    public MultiblockLocalBinaryPattern() {
        this(3, 2);
    }

    public MultiblockLocalBinaryPattern(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            try {
                throw new Exception("Multiblock LBP works only with grayscale images.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        IntegralImage integralImage = new IntegralImage(fastBitmap);
        int[] iArr = new int[256];
        int width = fastBitmap.getWidth() - (this.a * 3);
        int height = fastBitmap.getHeight() - (this.b * 3);
        int[] iArr2 = new int[9];
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                iArr2[0] = (int) integralImage.getRectangleMean(i, i2, (this.b + i) - 1, (this.a + i2) - 1);
                iArr2[1] = (int) integralImage.getRectangleMean(i, (this.a + i2) - 1, (this.b + i) - 1, ((this.a * 2) + i2) - 1);
                iArr2[2] = (int) integralImage.getRectangleMean(i, (this.a * 2) + i2, (this.b + i) - 1, ((this.a * 3) + i2) - 1);
                iArr2[3] = (int) integralImage.getRectangleMean(this.b + i, i2, ((this.b * 2) + i) - 1, (this.a + i2) - 1);
                iArr2[4] = (int) integralImage.getRectangleMean(this.b + i, (this.a + i2) - 1, ((this.b * 2) + i) - 1, ((this.a * 2) + i2) - 1);
                iArr2[5] = (int) integralImage.getRectangleMean(this.b + i, (this.a * 2) + i2, ((this.b * 2) + i) - 1, ((this.a * 3) + i2) - 1);
                iArr2[6] = (int) integralImage.getRectangleMean((this.b * 2) + i, i2, ((this.b * 3) + i) - 1, (this.a + i2) - 1);
                iArr2[7] = (int) integralImage.getRectangleMean((this.b * 2) + i, (this.a + i2) - 1, ((this.b * 3) + i) - 1, ((this.a * 2) + i2) - 1);
                iArr2[8] = (int) integralImage.getRectangleMean((this.b * 2) + i, (this.a * 2) + i2, ((this.b * 3) + i) - 1, ((this.a * 3) + i2) - 1);
                int i3 = iArr2[0] - iArr2[4] >= 0 ? 128 : 0;
                if (iArr2[1] - iArr2[4] >= 0) {
                    i3 += 64;
                }
                if (iArr2[2] - iArr2[4] >= 0) {
                    i3 += 32;
                }
                if (iArr2[5] - iArr2[4] >= 0) {
                    i3 += 16;
                }
                if (iArr2[8] - iArr2[4] >= 0) {
                    i3 += 8;
                }
                if (iArr2[7] - iArr2[4] >= 0) {
                    i3 += 4;
                }
                if (iArr2[6] - iArr2[4] >= 0) {
                    i3 += 2;
                }
                if (iArr2[3] - iArr2[4] >= 0) {
                    i3++;
                }
                iArr[i3] = iArr[i3] + 1;
            }
        }
        return new ImageHistogram(iArr);
    }
}
