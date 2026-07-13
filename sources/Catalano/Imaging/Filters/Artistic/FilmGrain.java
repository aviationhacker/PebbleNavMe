package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Artistic.Blend;
import Catalano.Imaging.Filters.GaussianNoise;
import Catalano.Imaging.IApplyInPlace;
import android.support.v4.media.TransportMediator;

/* JADX INFO: loaded from: classes.dex */
public class FilmGrain implements IApplyInPlace {
    private int a;
    private double b;

    public int getGrain() {
        return this.a;
    }

    public void setGrain(int i) {
        this.a = i;
    }

    public double getStdDev() {
        return this.b;
    }

    public void setStdDev(double d) {
        this.b = d;
    }

    public FilmGrain() {
        this.a = TransportMediator.KEYCODE_MEDIA_PAUSE;
        this.b = 8.0d;
    }

    public FilmGrain(int i) {
        this.a = TransportMediator.KEYCODE_MEDIA_PAUSE;
        this.b = 8.0d;
        this.a = i;
    }

    public FilmGrain(int i, double d) {
        this.a = TransportMediator.KEYCODE_MEDIA_PAUSE;
        this.b = 8.0d;
        this.a = i;
        this.b = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            FastBitmap fastBitmap2 = new FastBitmap(width, height, FastBitmap.ColorSpace.RGB);
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    fastBitmap2.setRGB(i, i2, this.a, this.a, this.a);
                }
            }
            new GaussianNoise(this.b).applyInPlace(fastBitmap2);
            new Blend(fastBitmap2, Blend.Algorithm.Overlay).applyInPlace(fastBitmap);
        }
    }
}
