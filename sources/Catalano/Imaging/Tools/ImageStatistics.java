package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class ImageStatistics {
    private ImageHistogram a;
    private ImageHistogram b;
    private ImageHistogram c;
    private ImageHistogram d;
    private int e;

    public ImageHistogram getHistogramGray() {
        if (this.a == null) {
            throw new IllegalArgumentException("Histogram gray is null");
        }
        return this.a;
    }

    public ImageHistogram getHistogramRed() {
        if (this.b == null) {
            throw new IllegalArgumentException("Histogram red is null");
        }
        return this.b;
    }

    public ImageHistogram getHistogramGreen() {
        if (this.c == null) {
            throw new IllegalArgumentException("Histogram green is null");
        }
        return this.c;
    }

    public ImageHistogram getHistogramBlue() {
        if (this.d == null) {
            throw new IllegalArgumentException("Histogram blue is null");
        }
        return this.d;
    }

    public ImageStatistics(FastBitmap fastBitmap) {
        this(fastBitmap, 256);
    }

    public ImageStatistics(FastBitmap fastBitmap, int i) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        this.e = 0;
        this.a = null;
        this.d = null;
        this.c = null;
        this.b = null;
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    int gray = (fastBitmap.getGray(i2, i3) * i) / 256;
                    iArr[gray] = iArr[gray] + 1;
                    this.e++;
                }
            }
            this.a = new ImageHistogram(iArr);
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[i];
            int[] iArr3 = new int[i];
            int[] iArr4 = new int[i];
            for (int i4 = 0; i4 < height; i4++) {
                for (int i5 = 0; i5 < width; i5++) {
                    int red = fastBitmap.getRed(i4, i5);
                    int green = fastBitmap.getGreen(i4, i5);
                    int blue = fastBitmap.getBlue(i4, i5);
                    int i6 = (red * i) / 256;
                    iArr2[i6] = iArr2[i6] + 1;
                    int i7 = (green * i) / 256;
                    iArr3[i7] = iArr3[i7] + 1;
                    int i8 = (blue * i) / 256;
                    iArr4[i8] = iArr4[i8] + 1;
                    this.e++;
                }
            }
            this.b = new ImageHistogram(iArr2);
            this.c = new ImageHistogram(iArr3);
            this.d = new ImageHistogram(iArr4);
        }
    }

    public int PixelsCount() {
        return this.e;
    }

    public static float Mean(FastBitmap fastBitmap) {
        return Mean(fastBitmap, 0, 0, fastBitmap.getWidth(), fastBitmap.getHeight());
    }

    public static float Mean(FastBitmap fastBitmap, int i, int i2, int i3, int i4) {
        float f = 0.0f;
        if (fastBitmap.isGrayscale()) {
            while (i < i4) {
                float gray = f;
                for (int i5 = i2; i5 < i3; i5++) {
                    gray += fastBitmap.getGray(i, i5);
                }
                i++;
                f = gray;
            }
            return f / (i3 * i4);
        }
        throw new IllegalArgumentException("ImageStatistics: Only compute mean in grayscale images.");
    }

    public static float Variance(FastBitmap fastBitmap) {
        return Variance(fastBitmap, Mean(fastBitmap));
    }

    public static float Variance(FastBitmap fastBitmap, float f) {
        return Variance(fastBitmap, f, 0, 0, fastBitmap.getWidth(), fastBitmap.getHeight());
    }

    public static float Variance(FastBitmap fastBitmap, float f, int i, int i2, int i3, int i4) {
        float f2 = 0.0f;
        if (fastBitmap.isGrayscale()) {
            while (i < i4) {
                float fPow = f2;
                for (int i5 = i2; i5 < i3; i5++) {
                    fPow = (float) (((double) fPow) + Math.pow(fastBitmap.getGray(i, i5) - f, 2.0d));
                }
                i++;
                f2 = fPow;
            }
            return f2 / ((i3 * i4) - 1);
        }
        throw new IllegalArgumentException("ImageStatistics: Only compute variance in grayscale images.");
    }

    public static int Maximum(FastBitmap fastBitmap) {
        return Maximum(fastBitmap, 0, 0, fastBitmap.getWidth(), fastBitmap.getHeight());
    }

    public static int Maximum(FastBitmap fastBitmap, int i, int i2, int i3, int i4) {
        int i5 = 0;
        while (i < i4) {
            int i6 = i2;
            while (i6 < i3) {
                int gray = fastBitmap.getGray(i, i6);
                if (gray <= i5) {
                    gray = i5;
                }
                i6++;
                i5 = gray;
            }
            i++;
        }
        return i5;
    }

    public static int Minimum(FastBitmap fastBitmap) {
        return Minimum(fastBitmap, 0, 0, fastBitmap.getWidth(), fastBitmap.getHeight());
    }

    public static int Minimum(FastBitmap fastBitmap, int i, int i2, int i3, int i4) {
        int i5 = 255;
        while (i < i4) {
            int i6 = i2;
            while (i6 < i3) {
                int gray = fastBitmap.getGray(i, i6);
                if (gray >= i5) {
                    gray = i5;
                }
                i6++;
                i5 = gray;
            }
            i++;
        }
        return i5;
    }
}
