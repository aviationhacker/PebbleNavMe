package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Statistics.Histogram;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalIntensityStatistics {
    private Histogram a;
    private Histogram b;
    private Histogram c;
    private Histogram d;

    public HorizontalIntensityStatistics(FastBitmap fastBitmap) {
        a(fastBitmap);
    }

    public Histogram getGray() {
        return this.d;
    }

    public Histogram getRed() {
        return this.a;
    }

    public Histogram getGreen() {
        return this.b;
    }

    public Histogram getBlue() {
        return this.c;
    }

    private void a(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[width];
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    iArr[i2] = iArr[i2] + fastBitmap.getGray(i, i2);
                }
            }
            this.d = new Histogram(iArr);
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[width];
            int[] iArr3 = new int[width];
            int[] iArr4 = new int[width];
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    iArr2[i4] = iArr2[i4] + fastBitmap.getRed(i3, i4);
                    iArr3[i4] = iArr3[i4] + fastBitmap.getGreen(i3, i4);
                    iArr4[i4] = iArr4[i4] + fastBitmap.getBlue(i3, i4);
                }
            }
            this.a = new Histogram(iArr2);
            this.b = new Histogram(iArr3);
            this.c = new Histogram(iArr4);
        }
    }
}
