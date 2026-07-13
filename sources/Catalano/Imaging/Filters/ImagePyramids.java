package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ImagePyramids {
    float[][] a;
    float[][] b;
    private int c;

    public int getLevel() {
        return this.c;
    }

    public void setLevel(int i) {
        this.c = Math.max(1, i);
    }

    public ImagePyramids() {
        this.c = 1;
        this.a = new float[][]{new float[]{0.00390625f, 0.015625f, 0.0234375f, 0.015625f, 0.00390625f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.0234375f, 0.09375f, 0.140625f, 0.09375f, 0.0234375f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.00390625f, 0.015625f, 0.0234375f, 0.015625f, 0.00390625f}};
        this.b = new float[][]{new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.0625f, 0.25f, 0.375f, 0.25f, 0.0625f}, new float[]{0.09375f, 0.375f, 0.5625f, 0.375f, 0.09375f}, new float[]{0.0625f, 0.25f, 0.375f, 0.25f, 0.0625f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}};
    }

    public ImagePyramids(int i) {
        this.c = 1;
        this.a = new float[][]{new float[]{0.00390625f, 0.015625f, 0.0234375f, 0.015625f, 0.00390625f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.0234375f, 0.09375f, 0.140625f, 0.09375f, 0.0234375f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.00390625f, 0.015625f, 0.0234375f, 0.015625f, 0.00390625f}};
        this.b = new float[][]{new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}, new float[]{0.0625f, 0.25f, 0.375f, 0.25f, 0.0625f}, new float[]{0.09375f, 0.375f, 0.5625f, 0.375f, 0.09375f}, new float[]{0.0625f, 0.25f, 0.375f, 0.25f, 0.0625f}, new float[]{0.015625f, 0.0625f, 0.09375f, 0.0625f, 0.015625f}};
        setLevel(i);
    }

    public void Downscale(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < this.c; i++) {
                float[][] fArrA = a(fastBitmap, this.a, true);
                int length = fArrA[0].length;
                int length2 = fArrA.length;
                FastBitmap fastBitmap2 = new FastBitmap(length / 2, length2 / 2, FastBitmap.ColorSpace.Grayscale);
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < length2 - 1) {
                        for (int i4 = 0; i4 < length - 1; i4 += 2) {
                            fastBitmap2.setGray(i3 / 2, i4 / 2, (int) (fArrA[i3][i4] * 255.0f));
                        }
                        i2 = i3 + 2;
                    }
                }
                fastBitmap.setImage(fastBitmap2);
            }
            return;
        }
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 < this.c) {
                float[][][] fArrA2 = a(fastBitmap, this.a);
                int length3 = fArrA2[0].length;
                int length4 = fArrA2.length;
                FastBitmap fastBitmap3 = new FastBitmap(length3 / 2, length4 / 2);
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i8 < length4 - 1) {
                        int i9 = 0;
                        while (true) {
                            int i10 = i9;
                            if (i10 < length3 - 1) {
                                fastBitmap3.setRGB(i8 / 2, i10 / 2, (int) (fArrA2[i8][i10][0] * 255.0f), (int) (fArrA2[i8][i10][1] * 255.0f), (int) (fArrA2[i8][i10][2] * 255.0f));
                                i9 = i10 + 2;
                            }
                        }
                        i7 = i8 + 2;
                    }
                }
                fastBitmap.setImage(fastBitmap3);
                i5 = i6 + 1;
            } else {
                return;
            }
        }
    }

    private float[][] a(FastBitmap fastBitmap, float[][] fArr, boolean z) {
        float gray;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        int length = (fArr[0].length - 1) / 2;
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                float f = 0.0f;
                for (int i3 = 0; i3 < fArr.length; i3++) {
                    int i4 = i + (i3 - length);
                    int i5 = 0;
                    while (i5 < fArr[0].length) {
                        int i6 = (i5 - length) + i2;
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            gray = ((fastBitmap.getGray(i4, i6) / 255.0f) * fArr[i3][i5]) + f;
                        } else if (z) {
                            int i7 = (i + i3) - 1;
                            int i8 = (i2 + i5) - 1;
                            if (i7 < 0) {
                                i7 = 0;
                            }
                            if (i7 >= height) {
                                i7 = height - 1;
                            }
                            if (i8 < 0) {
                                i8 = 0;
                            }
                            if (i8 >= width) {
                                i8 = width - 1;
                            }
                            fastBitmap.getGray(i7, i8);
                            gray = ((fastBitmap.getGray(i7, i8) / 255.0f) * fArr[i3][i5]) + f;
                        } else {
                            gray = f;
                        }
                        i5++;
                        f = gray;
                    }
                }
                float f2 = f > 1.0f ? 1.0f : f;
                if (f2 < 0.0f) {
                    f2 = 0.0f;
                }
                fArr2[i][i2] = f2;
            }
        }
        return fArr2;
    }

    private float[][][] a(FastBitmap fastBitmap, float[][] fArr) {
        float red;
        float green;
        float f;
        int blue;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        float[][][] fArr2 = (float[][][]) Array.newInstance((Class<?>) Float.TYPE, height, width, 3);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                float f2 = 0.0f;
                float f3 = 0.0f;
                float f4 = 0.0f;
                for (int i3 = 0; i3 < fArr.length; i3++) {
                    int i4 = i + (i3 - 2);
                    int i5 = 0;
                    while (i5 < fArr[0].length) {
                        int i6 = i2 + (i5 - 2);
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            red = ((fArr[i3][i5] * fastBitmap.getRed(i4, i6)) / 255.0f) + f4;
                            green = ((fArr[i3][i5] * fastBitmap.getGreen(i4, i6)) / 255.0f) + f3;
                            f = fArr[i3][i5];
                            blue = fastBitmap.getBlue(i4, i6);
                        } else {
                            red = ((fArr[i3][i5] * fastBitmap.getRed(i, i2)) / 255.0f) + f4;
                            green = ((fArr[i3][i5] * fastBitmap.getGreen(i, i2)) / 255.0f) + f3;
                            f = fArr[i3][i5];
                            blue = fastBitmap.getBlue(i, i2);
                        }
                        i5++;
                        f2 = ((f * blue) / 255.0f) + f2;
                        f3 = green;
                        f4 = red;
                    }
                }
                float f5 = f4 > 1.0f ? 1.0f : f4;
                float f6 = f5 < 0.0f ? 0.0f : f5;
                float f7 = f3 > 1.0f ? 1.0f : f3;
                float f8 = f7 < 0.0f ? 0.0f : f7;
                float f9 = f2 > 1.0f ? 1.0f : f2;
                if (f9 < 0.0f) {
                    f9 = 0.0f;
                }
                fArr2[i][i2][0] = f6;
                fArr2[i][i2][1] = f8;
                fArr2[i][i2][2] = f9;
            }
        }
        return fArr2;
    }
}
