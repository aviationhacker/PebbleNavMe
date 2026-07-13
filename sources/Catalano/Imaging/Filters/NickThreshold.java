package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Integral.IntegralMean;
import Catalano.Imaging.Filters.Integral.IntegralVariance;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class NickThreshold implements IApplyInPlace {
    private int a;
    private double b;

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

    public NickThreshold() {
        this.a = 15;
        this.b = -0.2d;
    }

    public NickThreshold(int i) {
        this.a = 15;
        this.b = -0.2d;
        this.a = i;
    }

    public NickThreshold(int i, double d) {
        this.a = 15;
        this.b = -0.2d;
        this.a = i;
        this.b = d;
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
                float gray = fastBitmap.getGray(i);
                float gray2 = fastBitmap2.getGray(i);
                fastBitmap.setGray(i, ((double) gray) > (Math.sqrt((double) ((gray2 * gray2) + ((float) fastBitmap3.getGray(i)))) * this.b) + ((double) gray2) ? 255 : 0);
            }
            return;
        }
        throw new IllegalArgumentException("Nick Threshold only works in grayscale images.");
    }
}
