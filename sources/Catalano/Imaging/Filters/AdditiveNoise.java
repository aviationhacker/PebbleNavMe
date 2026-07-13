package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class AdditiveNoise implements IApplyInPlace {
    private int a;
    private int b;

    public int getMin() {
        return this.a;
    }

    public void setMin(int i) {
        this.a = i;
    }

    public int getMax() {
        return this.b;
    }

    public void setMax(int i) {
        this.b = i;
    }

    public AdditiveNoise() {
        this.a = -10;
        this.b = 10;
    }

    public AdditiveNoise(int i, int i2) {
        this.a = -10;
        this.b = 10;
        this.a = i;
        this.b = i2;
    }

    public AdditiveNoise(IntRange intRange) {
        this.a = -10;
        this.b = 10;
        this.a = intRange.getMin();
        this.b = intRange.getMax();
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    fastBitmap.setGray(i, i2, Math.min(255, Math.max(0, fastBitmap.getGray(i, i2) + a(this.a, this.b))));
                }
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int width2 = fastBitmap.getWidth();
            int height2 = fastBitmap.getHeight();
            for (int i3 = 0; i3 < height2; i3++) {
                for (int i4 = 0; i4 < width2; i4++) {
                    fastBitmap.setRGB(i3, i4, Math.min(255, Math.max(0, fastBitmap.getRed(i3, i4) + a(this.a, this.b))), Math.min(255, Math.max(0, a(this.a, this.b) + fastBitmap.getGreen(i3, i4))), Math.min(255, Math.max(0, a(this.a, this.b) + fastBitmap.getBlue(i3, i4))));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Additive Noise only supports Grayscale and RGB images.");
    }

    private int a(int i, int i2) {
        return Math.min(i, i2) + ((int) Math.round((-0.5d) + (((double) (Math.abs(i - i2) + 1)) * Math.random())));
    }
}
