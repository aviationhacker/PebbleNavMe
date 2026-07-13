package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Morph implements IApplyInPlace {
    private FastBitmap a;
    private double b = 0.5d;

    public Morph() {
    }

    public Morph(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public double getSourcePercent() {
        return this.b;
    }

    public void setSourcePercent(double d) {
        double d2 = d >= 0.0d ? d : 0.0d;
        this.b = d2 <= 1.0d ? d2 : 1.0d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int size = fastBitmap.getSize();
        int width = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (size == width) {
                double d = 1.0d - this.b;
                while (i < size) {
                    int gray = fastBitmap.getGray(i);
                    fastBitmap.setGray(i, (int) ((((double) this.a.getGray(i)) * d) + (this.b * ((double) gray))));
                    i++;
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && size == width) {
            double d2 = 1.0d - this.b;
            while (i < size) {
                fastBitmap.setRGB(i, (int) ((this.b * ((double) fastBitmap.getRed(i))) + (((double) this.a.getRed(i)) * d2)), (int) ((this.b * ((double) fastBitmap.getGreen(i))) + (((double) this.a.getGreen(i)) * d2)), (int) ((fastBitmap.getBlue(i) * this.b) + (((double) this.a.getBlue(i)) * d2)));
                i++;
            }
        }
    }
}
