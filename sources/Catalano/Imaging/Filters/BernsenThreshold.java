package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BernsenThreshold implements IApplyInPlace {
    private int a;
    private double b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public double getContrastThreshold() {
        return this.b;
    }

    public void setContrastThreshold(double d) {
        this.b = Math.max(0.0d, d);
    }

    public BernsenThreshold() {
        this.a = 15;
        this.b = 15.0d;
    }

    public BernsenThreshold(int i) {
        this.a = 15;
        this.b = 15.0d;
        this.a = i;
    }

    public BernsenThreshold(int i, double d) {
        this.a = 15;
        this.b = 15.0d;
        this.a = i;
        this.b = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
            new Maximum(this.a).applyInPlace(fastBitmap2);
            new Minimum(this.a).applyInPlace(fastBitmap3);
            int width = fastBitmap.getWidth() * fastBitmap.getHeight();
            for (int i = 0; i < width; i++) {
                double gray = fastBitmap2.getGray(i) - fastBitmap3.getGray(i);
                double gray2 = (fastBitmap2.getGray(i) + fastBitmap3.getGray(i)) / 2;
                fastBitmap.setGray(i, gray < this.b ? gray2 >= 128.0d ? 255 : 0 : ((double) fastBitmap.getGray(i)) >= gray2 ? 255 : 0);
            }
            return;
        }
        throw new IllegalArgumentException("Bernsen Threshold only works in grayscale images.");
    }
}
