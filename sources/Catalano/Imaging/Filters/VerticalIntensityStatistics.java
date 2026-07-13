package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Statistics.Histogram;

/* JADX INFO: loaded from: classes.dex */
public class VerticalIntensityStatistics {
    private Histogram a;
    private Histogram b;
    private Histogram c;
    private Histogram d;

    public VerticalIntensityStatistics(FastBitmap fastBitmap) {
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
        int size = fastBitmap.getSize();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[height];
            for (int i = 0; i < size; i++) {
                iArr[i] = iArr[i] + fastBitmap.getGray(i);
            }
            this.d = new Histogram(iArr);
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[height];
            int[] iArr3 = new int[height];
            int[] iArr4 = new int[height];
            for (int i2 = 0; i2 < height; i2++) {
                iArr2[i2] = iArr2[i2] + fastBitmap.getRed(i2);
                iArr3[i2] = iArr3[i2] + fastBitmap.getGreen(i2);
                iArr4[i2] = iArr4[i2] + fastBitmap.getBlue(i2);
            }
            this.a = new Histogram(iArr2);
            this.b = new Histogram(iArr3);
            this.c = new Histogram(iArr4);
        }
    }
}
