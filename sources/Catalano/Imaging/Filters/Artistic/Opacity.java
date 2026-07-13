package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Opacity implements IApplyInPlace {
    private FastBitmap a;
    private double b = 0.65d;

    public FastBitmap getOverlay() {
        return this.a;
    }

    public void setOverlay(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public double getPercentage() {
        return this.b;
    }

    public void setPercentage(double d) {
        this.b = Math.max(0.0d, Math.min(1.0d, d));
    }

    public Opacity(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public Opacity(FastBitmap fastBitmap, double d) {
        this.a = fastBitmap;
        setPercentage(d);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int height = fastBitmap.getHeight() * fastBitmap.getWidth();
            for (int i = 0; i < height; i++) {
                double red = fastBitmap.getRed(i);
                double green = fastBitmap.getGreen(i);
                double blue = fastBitmap.getBlue(i);
                fastBitmap.setRGB(i, (int) ((red * (1.0d - this.b)) + (this.a.getRed(i) * this.b)), (int) ((green * (1.0d - this.b)) + (this.b * this.a.getGreen(i))), (int) ((blue * (1.0d - this.b)) + (this.b * this.a.getBlue(i))));
            }
            return;
        }
        throw new IllegalArgumentException("Opacity only works in RGB or ARGB images.");
    }
}
