package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Artistic.Blend;
import Catalano.Imaging.Filters.Desaturation;
import Catalano.Imaging.Filters.GaussianBoxBlur;
import Catalano.Imaging.Filters.Invert;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class FakeHDR implements IApplyInPlace {
    private double a;
    private int b;
    private double c;

    public double getDesaturation() {
        return this.a;
    }

    public void setDesaturation(double d) {
        this.a = d;
    }

    public int getSigma() {
        return this.b;
    }

    public void setSigma(int i) {
        this.b = i;
    }

    public double getPercentage() {
        return this.c;
    }

    public void setPercentage(double d) {
        this.c = Math.max(0.0d, Math.min(1.0d, d));
    }

    public FakeHDR() {
        this.a = 0.0d;
        this.b = 40;
        this.c = 0.62d;
    }

    public FakeHDR(double d) {
        this.a = 0.0d;
        this.b = 40;
        this.c = 0.62d;
        setPercentage(d);
    }

    public FakeHDR(double d, int i, double d2) {
        this.a = 0.0d;
        this.b = 40;
        this.c = 0.62d;
        this.a = d;
        this.b = i;
        this.c = d2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
        new Desaturation(this.a).applyInPlace(fastBitmap2);
        new Invert().applyInPlace(fastBitmap2);
        new GaussianBoxBlur(this.b).applyInPlace(fastBitmap2);
        Blend blend = new Blend(fastBitmap3, Blend.Algorithm.Overlay);
        blend.applyInPlace(fastBitmap2);
        FastBitmap fastBitmap4 = new FastBitmap(fastBitmap);
        blend.setAlgorithm(Blend.Algorithm.LinearLight);
        blend.setOverlay(fastBitmap2);
        blend.applyInPlace(fastBitmap4);
        Opacity opacity = new Opacity(fastBitmap4);
        opacity.setPercentage(this.c);
        opacity.applyInPlace(fastBitmap);
    }
}
