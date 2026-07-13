package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class TsaiThreshold implements IApplyInPlace {
    private boolean a;

    public boolean isInvert() {
        return this.a;
    }

    public void setInvert(boolean z) {
        this.a = z;
    }

    public TsaiThreshold() {
        this(false);
    }

    public TsaiThreshold(boolean z) {
        this.a = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            new Threshold(CalculateThreshold(fastBitmap), this.a).applyInPlace(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Tsai threshold only works in grayscale images.");
    }

    public int CalculateThreshold(FastBitmap fastBitmap) {
        double[] dArrNormalize = new ImageStatistics(fastBitmap).getHistogramGray().Normalize();
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i = 0; i < dArrNormalize.length; i++) {
            d += ((double) i) * dArrNormalize[i];
            d2 += ((double) (i * i)) * dArrNormalize[i];
            d3 += ((double) (i * i * i)) * dArrNormalize[i];
        }
        double d4 = d2 - (d * d);
        double d5 = (((-d2) * d2) + (d * d3)) / d4;
        double d6 = ((-d3) + (d2 * d)) / d4;
        double dSqrt = 0.5d * ((-d6) - Math.sqrt((d6 * d6) - (4.0d * d5)));
        double dSqrt2 = (Math.sqrt((d6 * d6) - (d5 * 4.0d)) + (-d6)) * 0.5d;
        double d7 = (dSqrt2 - d) / (dSqrt2 - dSqrt);
        double d8 = 0.0d;
        for (int i2 = 0; i2 < dArrNormalize.length; i2++) {
            d8 += dArrNormalize[i2];
            if (d8 > d7) {
                return i2;
            }
        }
        return 255;
    }
}
