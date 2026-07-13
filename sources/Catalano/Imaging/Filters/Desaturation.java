package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Desaturation implements IApplyInPlace {
    private double a = 0.2d;

    public double getSaturationFactor() {
        return this.a;
    }

    public void setSaturationFactor(double d) {
        this.a = Math.min(1.0d, Math.max(0.0d, d));
    }

    public Desaturation() {
    }

    public Desaturation(double d) {
        setSaturationFactor(d);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                double red = fastBitmap.getRed(i);
                double green = fastBitmap.getGreen(i);
                double blue = fastBitmap.getBlue(i);
                double d = (0.2125d * red) + (0.7154d * green) + (0.0721d * blue);
                fastBitmap.setRGB(i, (int) (((red - d) * this.a) + d), (int) (((green - d) * this.a) + d), (int) (((blue - d) * this.a) + d));
            }
            return;
        }
        throw new IllegalArgumentException("Desaturation only works in RGB space color.");
    }
}
