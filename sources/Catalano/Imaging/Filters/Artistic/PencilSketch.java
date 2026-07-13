package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Artistic.Blend;
import Catalano.Imaging.Filters.GammaCorrection;
import Catalano.Imaging.Filters.GaussianBlur;
import Catalano.Imaging.Filters.Invert;
import Catalano.Imaging.Filters.SaturationCorrection;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class PencilSketch implements IApplyInPlace {
    private int a;
    private double b;
    private int c;
    private double d;

    public int getSaturationCorrection() {
        return this.a;
    }

    public void setSaturationCorrection(int i) {
        this.a = i;
    }

    public double getSigma() {
        return this.b;
    }

    public void setSigma(double d) {
        this.b = d;
    }

    public int getSize() {
        return this.c;
    }

    public void setSize(int i) {
        this.c = i;
    }

    public double getGamma() {
        return this.d;
    }

    public void setGamma(double d) {
        this.d = d;
    }

    public PencilSketch() {
        this.a = -70;
        this.b = 1.4d;
        this.c = 5;
        this.d = -5.0d;
    }

    public PencilSketch(int i, double d, int i2, double d2) {
        this.a = -70;
        this.b = 1.4d;
        this.c = 5;
        this.d = -5.0d;
        this.a = i;
        this.b = d;
        this.c = i2;
        this.d = d2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
            new SaturationCorrection(this.a).applyInPlace(fastBitmap2);
            fastBitmap3.setImage(fastBitmap2);
            new Invert().applyInPlace(fastBitmap3);
            new GaussianBlur(this.b, this.c).applyInPlace(fastBitmap3);
            Blend blend = new Blend(fastBitmap3, Blend.Algorithm.ColorDodge);
            blend.applyInPlace(fastBitmap2);
            new GammaCorrection(this.d).applyInPlace(fastBitmap2);
            blend.setAlgorithm(Blend.Algorithm.Overlay);
            blend.setOverlay(fastBitmap2);
            blend.applyInPlace(fastBitmap);
        }
    }
}
