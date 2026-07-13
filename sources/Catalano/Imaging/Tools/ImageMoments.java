package Catalano.Imaging.Tools;

import Catalano.Core.DoublePoint;
import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public final class ImageMoments {
    private ImageMoments() {
    }

    public static double getRawMoment(FastBitmap fastBitmap, int i, int i2) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double dPow = 0.0d;
        for (int i3 = 0; i3 < height; i3++) {
            for (int i4 = 0; i4 < width; i4++) {
                dPow += Math.pow(i3, i) * Math.pow(i4, i2) * ((double) fastBitmap.getGray(i3, i4));
            }
        }
        return dPow;
    }

    public static double getCentralMoment(FastBitmap fastBitmap, int i, int i2) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        DoublePoint centroid = getCentroid(fastBitmap);
        double dPow = 0.0d;
        for (int i3 = 0; i3 < height; i3++) {
            for (int i4 = 0; i4 < width; i4++) {
                dPow += Math.pow(((double) i3) - centroid.x, i) * Math.pow(((double) i4) - centroid.y, i2) * ((double) fastBitmap.getGray(i3, i4));
            }
        }
        return dPow;
    }

    public static DoublePoint getCentroid(FastBitmap fastBitmap) {
        double rawMoment = getRawMoment(fastBitmap, 0, 0);
        return new DoublePoint(getRawMoment(fastBitmap, 1, 0) / rawMoment, getRawMoment(fastBitmap, 0, 1) / rawMoment);
    }

    public static double getCovarianceXY(FastBitmap fastBitmap, int i, int i2) {
        return getCentralMoment(fastBitmap, 1, 1) / getCentralMoment(fastBitmap, 0, 0);
    }

    public static double getVarianceX(FastBitmap fastBitmap, int i, int i2) {
        return getCentralMoment(fastBitmap, 2, 0) / getCentralMoment(fastBitmap, 0, 0);
    }

    public static double getVarianceY(FastBitmap fastBitmap, int i, int i2) {
        return getCentralMoment(fastBitmap, 0, 2) / getCentralMoment(fastBitmap, 0, 0);
    }

    public static double getOrientation(FastBitmap fastBitmap) {
        return Math.atan((getCentralMoment(fastBitmap, 1, 1) * 2.0d) / (getCentralMoment(fastBitmap, 2, 0) - getCentralMoment(fastBitmap, 0, 2))) * 0.5d;
    }

    public static DoublePoint getProjectionSkewness(FastBitmap fastBitmap) {
        double centralMoment = getCentralMoment(fastBitmap, 3, 0);
        double centralMoment2 = getCentralMoment(fastBitmap, 0, 3);
        return new DoublePoint(centralMoment / Math.pow(getCentralMoment(fastBitmap, 2, 0), 1.5d), centralMoment2 / Math.pow(getCentralMoment(fastBitmap, 0, 2), 1.5d));
    }

    public static DoublePoint getProjectionKurtosis(FastBitmap fastBitmap) {
        return new DoublePoint((getCentralMoment(fastBitmap, 4, 0) / Math.pow(getCentralMoment(fastBitmap, 2, 0), 2.0d)) - 3.0d, (getCentralMoment(fastBitmap, 0, 4) / Math.pow(getCentralMoment(fastBitmap, 0, 2), 2.0d)) - 3.0d);
    }

    public static double getNormalizedCentralMoment(FastBitmap fastBitmap, int i, int i2) {
        double centralMoment = getCentralMoment(fastBitmap, i, i2);
        return centralMoment / Math.pow(centralMoment, ((i + i2) / 2) + 1);
    }

    public static double getZaidNormalizedCentralMoment(FastBitmap fastBitmap, int i, int i2) {
        double centralMoment = getCentralMoment(fastBitmap, i, i2);
        double centralMoment2 = getCentralMoment(fastBitmap, 0, 0);
        return centralMoment * (1.0d / centralMoment2) * Math.pow(centralMoment2 / (getCentralMoment(fastBitmap, 2, 0) + getCentralMoment(fastBitmap, 0, 2)), (i + i2) / 2);
    }
}
