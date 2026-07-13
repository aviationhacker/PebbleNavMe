package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Integral.IntegralMean;
import Catalano.Imaging.Filters.Integral.IntegralVariance;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SauvolaThreshold implements IApplyInPlace {
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

    public SauvolaThreshold() {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
    }

    public SauvolaThreshold(int i) {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
        this.a = i;
    }

    public SauvolaThreshold(double d, double d2) {
        this.a = 15;
        this.b = 0.5d;
        this.c = 128.0d;
        this.b = d;
        this.c = d2;
    }

    public SauvolaThreshold(int i, double d, double d2) {
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
            for (int i = 0; i < width; i++) {
                fastBitmap.setGray(i, ((double) fastBitmap.getGray(i)) > ((double) fastBitmap2.getGray(i)) * ((((Math.sqrt((double) fastBitmap3.getGray(i)) / this.c) - 1.0d) * this.b) + 1.0d) ? 255 : 0);
            }
            return;
        }
        throw new IllegalArgumentException("Sauvola Threshold only works in grayscale images.");
    }
}
