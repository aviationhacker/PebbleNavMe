package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;
import Catalano.Math.Distances.Distance;
import Catalano.Math.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class RosinThreshold implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            new Threshold(CalculateThreshold(fastBitmap)).applyInPlace(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Rosin Threshold only works in grayscale images.");
    }

    public int CalculateThreshold(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int[] values = new ImageStatistics(fastBitmap).getHistogramGray().getValues();
            int iMaxIndex = Matrix.MaxIndex(values);
            int i = values[iMaxIndex];
            int i2 = iMaxIndex;
            int i3 = iMaxIndex;
            while (i2 < values.length) {
                int i4 = values[i2] > 0 ? i2 : i3;
                i2++;
                i3 = i4;
            }
            int i5 = values[i3];
            double dEuclidean = Distance.Euclidean(iMaxIndex, i, i3, i5);
            if (dEuclidean == 0.0d) {
                return i3;
            }
            double d = -1.0d;
            int i6 = i3;
            for (int i7 = iMaxIndex; i7 < i3; i7++) {
                double d2 = ((double) (((i - values[i7]) * (i3 - iMaxIndex)) - ((iMaxIndex - i7) * (i5 - i)))) / dEuclidean;
                if (d2 > d && values[i7] > 0) {
                    d = (int) d2;
                    i6 = i7;
                }
            }
            return i6;
        }
        throw new IllegalArgumentException("Rosin Threshold only works in grayscale images.");
    }
}
