package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ColorFiltering implements IApplyInPlace {
    private IntRange a;
    private IntRange b;
    private IntRange c;

    public IntRange getRed() {
        return this.a;
    }

    public void setRed(IntRange intRange) {
        this.a = intRange;
    }

    public IntRange getGreen() {
        return this.b;
    }

    public void setGreen(IntRange intRange) {
        this.b = intRange;
    }

    public IntRange getBlue() {
        return this.c;
    }

    public void setBlue(IntRange intRange) {
        this.c = intRange;
    }

    public ColorFiltering() {
    }

    public ColorFiltering(IntRange intRange, IntRange intRange2, IntRange intRange3) {
        this.a = intRange;
        this.b = intRange2;
        this.c = intRange3;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                int red = fastBitmap.getRed(i);
                int green = fastBitmap.getGreen(i);
                int blue = fastBitmap.getBlue(i);
                if (red >= this.a.getMin() && red <= this.a.getMax() && green >= this.b.getMin() && green <= this.b.getMax() && blue >= this.c.getMin() && blue <= this.c.getMax()) {
                    fastBitmap.setRGB(i, red, green, blue);
                } else {
                    fastBitmap.setRGB(i, 0, 0, 0);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Color filtering only works in RGB images.");
    }
}
