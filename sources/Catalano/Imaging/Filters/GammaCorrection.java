package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class GammaCorrection implements IApplyInPlace {
    private double a;

    public GammaCorrection() {
    }

    public GammaCorrection(double d) {
        this.a = d;
    }

    public double getGamma() {
        return this.a;
    }

    public void setGamma(double d) {
        this.a = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        if (fastBitmap.isRGB()) {
            int[] iArrA = a(this.a);
            int size = fastBitmap.getSize();
            while (i < size) {
                fastBitmap.setRGB(i, iArrA[fastBitmap.getRed(i)], iArrA[fastBitmap.getGreen(i)], iArrA[fastBitmap.getBlue(i)]);
                i++;
            }
            return;
        }
        if (fastBitmap.isGrayscale()) {
            int[] iArrA2 = a(this.a);
            int size2 = fastBitmap.getSize();
            while (i < size2) {
                fastBitmap.setGray(i, iArrA2[fastBitmap.getGray(i)]);
                i++;
            }
        }
    }

    private static int[] a(double d) {
        int[] iArr = new int[256];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = (int) (Math.pow(((double) i) / 255.0d, d) * 255.0d);
        }
        return iArr;
    }
}
