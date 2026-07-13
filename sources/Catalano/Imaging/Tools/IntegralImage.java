package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class IntegralImage {
    private int a;
    private int b;
    protected int[][] integralImage;

    public IntegralImage(FastBitmap fastBitmap) {
        this(fastBitmap, 1);
    }

    public IntegralImage(FastBitmap fastBitmap, int i) {
        this.integralImage = (int[][]) null;
        this.a = fastBitmap.getWidth();
        this.b = fastBitmap.getHeight();
        a(fastBitmap, i);
    }

    protected IntegralImage(int i, int i2) {
        this.integralImage = (int[][]) null;
        this.a = i;
        this.b = i2;
        this.integralImage = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2 + 1, i + 1);
    }

    public int getWidth() {
        return this.a;
    }

    public int getHeight() {
        return this.b;
    }

    public int[][] getInternalData() {
        return this.integralImage;
    }

    public int getInternalData(int i, int i2) {
        return this.integralImage[i][i2];
    }

    public static IntegralImage FromFastBitmap(FastBitmap fastBitmap) {
        return FromFastBitmap(fastBitmap, 1);
    }

    public static IntegralImage FromFastBitmap(FastBitmap fastBitmap, int i) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        IntegralImage integralImage = new IntegralImage(width, height);
        int[][] iArr = integralImage.integralImage;
        for (int i2 = 1; i2 <= height; i2++) {
            int iPow = 0;
            for (int i3 = 1; i3 <= width; i3++) {
                iPow = (int) (((double) iPow) + Math.pow(fastBitmap.getGray(i2 - 1, i3 - 1), i));
                iArr[i2][i3] = iArr[i2 - 1][i3] + iPow;
            }
        }
        return integralImage;
    }

    private void a(FastBitmap fastBitmap, int i) {
        if (!fastBitmap.isGrayscale()) {
            try {
                throw new Exception("IntegralImage works only with Grayscale images");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.integralImage = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.b + 1, this.a + 1);
        for (int i2 = 1; i2 < this.b + 1; i2++) {
            int iPow = 0;
            for (int i3 = 1; i3 < this.a + 1; i3++) {
                iPow = (int) (((double) iPow) + Math.pow(fastBitmap.getGray(i2 - 1, i3 - 1), i));
                this.integralImage[i2][i3] = this.integralImage[i2 - 1][i3] + iPow;
            }
        }
    }

    public int getRectangleSum(int i, int i2, int i3, int i4) {
        if (i3 < 0 || i4 < 0 || i >= this.b || i2 >= this.a) {
            return 0;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        if (i5 > this.b) {
            i5 = this.b;
        }
        if (i6 > this.a) {
            i6 = this.a;
        }
        return ((this.integralImage[i5][i6] + this.integralImage[i][i2]) - this.integralImage[i][i6]) - this.integralImage[i5][i6];
    }

    public int getRectangleSum(int i, int i2, int i3) {
        return getRectangleSum(i - i3, i2 - i3, i + i3, i2 + i3);
    }

    public int getHarrXWavelet(int i, int i2, int i3) {
        int i4 = i2 - i3;
        int i5 = (i2 + i3) - 1;
        return getRectangleSum(i, i4, (i + i3) - 1, i5) - getRectangleSum(i - i3, i4, i - 1, i5);
    }

    public int getHaarYWavelet(int i, int i2, int i3) {
        int i4 = i - i3;
        int i5 = (i + i3) - 1;
        return (int) (getRectangleSum(i4, i2, i5, (i2 + i3) - 1) - getRectangleSum(i4, i2 - i3, i5, i2 - 1));
    }

    public float getRectangleMean(int i, int i2, int i3, int i4) {
        if (i3 < 0 || i4 < 0 || i >= this.b || i2 >= this.a) {
            return 0.0f;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        if (i5 > this.b) {
            i5 = this.b;
        }
        if (i6 > this.a) {
            i6 = this.a;
        }
        return (float) (((double) (((this.integralImage[i5][i6] + this.integralImage[i][i2]) - this.integralImage[i][i6]) - this.integralImage[i5][i2])) / ((double) ((i5 - i) * (i6 - i2))));
    }

    public float getRectangleMean(int i, int i2, int i3) {
        return getRectangleMean(i - i3, i2 - i3, i + i3, i2 + i3);
    }

    public int getRectangleSumUnsafe(int i, int i2, int i3, int i4) {
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        return ((this.integralImage[i5][i6] + this.integralImage[i][i2]) - this.integralImage[i5][i2]) - this.integralImage[i][i6];
    }

    public int getRectangleSumUnsafe(int i, int i2, int i3) {
        return getRectangleSumUnsafe(i - i3, i2 - i3, i + i3, i2 + i3);
    }

    public float getRectangleMeanUnsafe(int i, int i2, int i3, int i4) {
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        return (float) (((double) (((this.integralImage[i5][i6] + this.integralImage[i][i2]) - this.integralImage[i][i6]) - this.integralImage[i5][i2])) / ((double) ((i5 - i) * (i6 - i2))));
    }

    public float getRectangleMeanUnsafe(int i, int i2, int i3) {
        return getRectangleMeanUnsafe(i - i3, i2 - i3, i + i3, i2 + i3);
    }
}
