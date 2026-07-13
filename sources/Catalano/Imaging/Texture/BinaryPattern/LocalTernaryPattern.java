package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Core.ArraysUtil;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class LocalTernaryPattern implements IBinaryPattern {
    private int a;
    private ImageHistogram b;
    private ImageHistogram c;

    public int getThreshold() {
        return this.a;
    }

    public void setThreshold(int i) {
        this.a = i;
    }

    public ImageHistogram getUpperHistogram() {
        return this.b;
    }

    public ImageHistogram getLowerHistogram() {
        return this.c;
    }

    public LocalTernaryPattern() {
        this.a = 5;
    }

    public LocalTernaryPattern(int i) {
        this.a = 5;
        this.a = i;
    }

    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("Local Ternary Pattern only works in grayscale images.");
        }
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 < height - 1) {
                int i3 = 1;
                while (true) {
                    int i4 = i3;
                    if (i4 < width - 1) {
                        int[][] iArrA = a(fastBitmap, i2, i4);
                        int i5 = 128;
                        int i6 = 0;
                        int i7 = 0;
                        for (int i8 = 0; i8 < 3; i8++) {
                            if (iArrA[0][i8] == 1) {
                                i7 += i5;
                            }
                            if (iArrA[0][i8] == -1) {
                                i6 += i5;
                            }
                            i5 /= 2;
                        }
                        if (iArrA[1][2] == 1) {
                            i7 += i5;
                        }
                        if (iArrA[1][2] == -1) {
                            i6 += i5;
                        }
                        int i9 = i5 / 2;
                        for (int i10 = 0; i10 < 3; i10++) {
                            if (iArrA[2][2 - i10] == 1) {
                                i7 += i9;
                            }
                            if (iArrA[2][2 - i10] == -1) {
                                i6 += i9;
                            }
                            i9 /= 2;
                        }
                        iArr[i7] = iArr[i7] + 1;
                        iArr2[i6] = iArr2[i6] + 1;
                        i3 = i4 + 1;
                    }
                }
                i = i2 + 1;
            } else {
                this.b = new ImageHistogram(iArr);
                this.c = new ImageHistogram(iArr2);
                return new ImageHistogram(ArraysUtil.Concatenate(iArr, iArr2));
            }
        }
    }

    private int[][] a(FastBitmap fastBitmap, int i, int i2) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 3);
        int gray = fastBitmap.getGray(i, i2);
        int i3 = i - 1;
        int i4 = 0;
        while (i3 <= i + 1) {
            int i5 = 0;
            for (int i6 = i2 - 1; i6 <= i2 + 1; i6++) {
                if (fastBitmap.getGray(i3, i6) > this.a + gray) {
                    iArr[i4][i5] = 1;
                }
                if (fastBitmap.getGray(i3, i6) > gray - this.a && fastBitmap.getGray(i3, i6) < this.a + gray) {
                    iArr[i4][i5] = 0;
                }
                if (fastBitmap.getGray(i3, i6) < gray - this.a) {
                    iArr[i4][i5] = -1;
                }
                i5++;
            }
            i3++;
            i4++;
        }
        return iArr;
    }
}
