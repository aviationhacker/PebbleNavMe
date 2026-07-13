package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Invert;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class HeatMap implements IApplyInPlace {
    private boolean a;

    public boolean isInvert() {
        return this.a;
    }

    public void setInvert(boolean z) {
        this.a = z;
    }

    public HeatMap() {
        this.a = false;
    }

    public HeatMap(boolean z) {
        this.a = false;
        this.a = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            fastBitmap.toGrayscale();
        }
        if (this.a) {
            new Invert().applyInPlace(fastBitmap);
        }
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iMinimum = ImageStatistics.Minimum(fastBitmap);
        int iMaximum = ImageStatistics.Maximum(fastBitmap);
        fastBitmap.toRGB();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                fastBitmap.setRGB(i, i2, a(fastBitmap.getRed(i, i2), iMinimum, iMaximum));
            }
        }
    }

    private int[] a(double d, double d2, double d3) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        double d4 = (d - d2) / (d3 - d2);
        if (d4 <= 0.2d) {
            i3 = (int) ((d4 / 0.2d) * 255.0d);
        } else if (d4 > 0.2d && d4 <= 0.7d) {
            i3 = (int) ((1.0d - ((d4 - 0.2d) / 0.5d)) * 255.0d);
        }
        if (d4 >= 0.2d && d4 <= 0.6d) {
            i2 = (int) (((d4 - 0.2d) / 0.4d) * 255.0d);
        } else if (d4 > 0.6d && d4 <= 0.9d) {
            i2 = (int) ((1.0d - ((d4 - 0.6d) / 0.3d)) * 255.0d);
        }
        if (d4 >= 0.5d) {
            i = (int) (((d4 - 0.5d) / 0.5d) * 255.0d);
        }
        return new int[]{i, i2, i3};
    }
}
