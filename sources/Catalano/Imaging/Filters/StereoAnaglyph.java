package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class StereoAnaglyph implements IApplyInPlace {
    private FastBitmap a;
    private Algorithm b;

    public enum Algorithm {
        TrueAnaglyph,
        GrayAnaglyph,
        ColorAnaglyph,
        HalfColorAnaglyph,
        OptimizedAnaglyph
    }

    public StereoAnaglyph() {
    }

    public StereoAnaglyph(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public StereoAnaglyph(FastBitmap fastBitmap, Algorithm algorithm) {
        this.a = fastBitmap;
        this.b = algorithm;
    }

    public Algorithm getAlgorithm() {
        return this.b;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.b = algorithm;
    }

    public FastBitmap getOverlayImage() {
        return this.a;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int size = fastBitmap.getSize();
        switch (this.b) {
            case TrueAnaglyph:
                for (int i2 = 0; i2 < size; i2++) {
                    fastBitmap.setRGB(i2, (int) ((((double) fastBitmap.getRed(i2)) * 0.299d) + (((double) fastBitmap.getGreen(i2)) * 0.587d) + (((double) fastBitmap.getBlue(i2)) * 0.114d)), 0, (int) ((((double) this.a.getRed(i2)) * 0.299d) + (((double) this.a.getGreen(i2)) * 0.587d) + (((double) this.a.getBlue(i2)) * 0.114d)));
                }
                break;
            case GrayAnaglyph:
                while (i < size) {
                    int red = (int) ((((double) fastBitmap.getRed(i)) * 0.299d) + (((double) fastBitmap.getGreen(i)) * 0.587d) + (((double) fastBitmap.getBlue(i)) * 0.114d));
                    int red2 = (int) ((((double) this.a.getRed(i)) * 0.299d) + (((double) this.a.getGreen(i)) * 0.587d) + (((double) this.a.getBlue(i)) * 0.114d));
                    fastBitmap.setRGB(i, red, red2, red2);
                    i++;
                }
                break;
            case ColorAnaglyph:
                while (i < size) {
                    int green = this.a.getGreen(i);
                    int blue = this.a.getBlue(i);
                    fastBitmap.setGreen(i, green);
                    fastBitmap.setBlue(i, blue);
                    i++;
                }
                break;
            case HalfColorAnaglyph:
                while (i < size) {
                    fastBitmap.setRGB(i, (int) ((((double) fastBitmap.getRed(i)) * 0.299d) + (((double) fastBitmap.getGreen(i)) * 0.587d) + (((double) fastBitmap.getBlue(i)) * 0.114d)), this.a.getGreen(i), this.a.getBlue(i));
                    i++;
                }
                break;
            case OptimizedAnaglyph:
                while (i < size) {
                    fastBitmap.setRGB(i, (int) ((((double) fastBitmap.getGreen(i)) * 0.7d) + (((double) fastBitmap.getBlue(i)) * 0.3d)), this.a.getGreen(i), this.a.getBlue(i));
                    i++;
                }
                break;
        }
    }
}
