package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Artistic.Blend;
import Catalano.Imaging.Filters.Invert;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Solarize implements IApplyInPlace {
    private double a;

    public double getPercentage() {
        return this.a;
    }

    public void setPercentage(double d) {
        this.a = Math.max(0.0d, Math.min(1.0d, d));
    }

    public Solarize() {
    }

    public Solarize(double d) {
        setPercentage(d);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
        new Invert().applyInPlace(fastBitmap2);
        new Blend(fastBitmap2, Blend.Algorithm.Difference).applyInPlace(fastBitmap3);
        fastBitmap2.recycle();
        Opacity opacity = new Opacity(fastBitmap3);
        opacity.setPercentage(this.a);
        opacity.applyInPlace(fastBitmap);
        fastBitmap3.recycle();
    }
}
