package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Integral.IntegralMean;
import Catalano.Imaging.Filters.Integral.IntegralVariance;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class WolfJolionThreshold implements IApplyInPlace {
    private int a;
    private double b;
    private double c;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public double getK() {
        return this.b;
    }

    public void setK(double d) {
        this.b = d;
    }

    public double getR() {
        return this.c;
    }

    public void setR(double d) {
        this.c = d;
    }

    public WolfJolionThreshold() {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
    }

    public WolfJolionThreshold(int i) {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
        this.a = i;
    }

    public WolfJolionThreshold(double d, double d2) {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
        this.b = d;
        this.c = d2;
    }

    public WolfJolionThreshold(int i, double d, double d2) {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
        this.a = i;
        this.b = d;
        this.c = d2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
            new IntegralMean(this.a).applyInPlace(fastBitmap2);
            new IntegralVariance(this.a).applyInPlace(fastBitmap);
            int width = fastBitmap.getWidth() * fastBitmap.getHeight();
            int i = 0;
            int i2 = 0;
            while (i2 < width) {
                int gray = fastBitmap3.getGray(i2);
                if (gray <= i) {
                    gray = i;
                }
                i2++;
                i = gray;
            }
            int i3 = 255;
            int i4 = 0;
            while (i4 < width) {
                int gray2 = fastBitmap.getGray(i4);
                if (gray2 >= i3) {
                    gray2 = i3;
                }
                i4++;
                i3 = gray2;
            }
            for (int i5 = 0; i5 < width; i5++) {
                double gray3 = fastBitmap.getGray(i5);
                double gray4 = fastBitmap2.getGray(i5);
                fastBitmap.setGray(i5, gray3 > gray4 + ((((Math.sqrt((double) fastBitmap3.getGray(i5)) / ((double) i)) - 1.0d) * (gray4 - ((double) i3))) * this.b) ? 255 : 0);
            }
            return;
        }
        throw new IllegalArgumentException("Wolf Threshold only works in grayscale images.");
    }
}
