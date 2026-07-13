package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Artistic.Blend;
import Catalano.Imaging.Filters.GaussianBoxBlur;
import Catalano.Imaging.Filters.OtsuThreshold;
import Catalano.Imaging.Filters.RosinThreshold;
import Catalano.Imaging.Filters.SISThreshold;
import Catalano.Imaging.Filters.Threshold;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SpecularBloom implements IApplyInPlace {
    private AdaptiveThreshold a;
    private int b;
    private int c;
    private boolean d;

    public enum AdaptiveThreshold {
        Otsu,
        Rosin,
        Sis
    }

    public int getThreshold() {
        return this.b;
    }

    public void setThreshold(int i) {
        this.b = Math.max(1, Math.min(255, i));
    }

    public double getRadius() {
        return this.c;
    }

    public void setRadius(int i) {
        this.c = Math.max(1, i);
    }

    public SpecularBloom() {
        this.a = AdaptiveThreshold.Rosin;
        this.b = 180;
        this.c = 20;
        this.d = true;
    }

    public SpecularBloom(int i, int i2) {
        this.a = AdaptiveThreshold.Rosin;
        this.b = 180;
        this.c = 20;
        this.d = true;
        this.b = i;
        this.c = i2;
        this.d = false;
    }

    public SpecularBloom(AdaptiveThreshold adaptiveThreshold, int i) {
        this.a = AdaptiveThreshold.Rosin;
        this.b = 180;
        this.c = 20;
        this.d = true;
        this.a = adaptiveThreshold;
        this.c = i;
        this.d = true;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        fastBitmap2.toGrayscale();
        switch (this.a) {
            case Otsu:
                new OtsuThreshold().applyInPlace(fastBitmap2);
                break;
            case Rosin:
                new RosinThreshold().applyInPlace(fastBitmap2);
                break;
            case Sis:
                new SISThreshold().applyInPlace(fastBitmap2);
                break;
        }
        if (!this.d) {
            new Threshold(this.b).applyInPlace(fastBitmap2);
        }
        fastBitmap2.toRGB();
        new GaussianBoxBlur(this.c).applyInPlace(fastBitmap2);
        new Blend(fastBitmap2, Blend.Algorithm.Screen).applyInPlace(fastBitmap);
        fastBitmap2.recycle();
    }
}
