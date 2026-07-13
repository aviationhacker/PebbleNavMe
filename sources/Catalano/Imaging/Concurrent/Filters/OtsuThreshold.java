package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class OtsuThreshold implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Threshold(CalculateThreshold(fastBitmap)).applyInPlace(fastBitmap);
    }

    public int CalculateThreshold(FastBitmap fastBitmap) {
        double d;
        int[] values = new ImageStatistics(fastBitmap).getHistogramGray().getValues();
        int width = fastBitmap.getWidth() * fastBitmap.getHeight();
        double d2 = 0.0d;
        int i = 0;
        while (true) {
            d = d2;
            if (i >= 256) {
                break;
            }
            d2 = ((double) (values[i] * i)) + d;
            i++;
        }
        double d3 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        double d4 = 0.0d;
        int i4 = 0;
        while (i3 < 256) {
            int i5 = i4 + values[i3];
            if (i5 != 0) {
                int i6 = width - i5;
                if (i6 == 0) {
                    break;
                }
                double d5 = ((double) (values[i3] * i3)) + d4;
                double d6 = d5 / ((double) i5);
                double d7 = (d - d5) / ((double) i6);
                double d8 = (d6 - d7) * ((double) i5) * ((double) i6) * (d6 - d7);
                if (d8 > d3) {
                    i2 = i3;
                    d3 = d8;
                    d4 = d5;
                } else {
                    d4 = d5;
                }
            }
            i3++;
            i4 = i5;
        }
        return i2;
    }
}
