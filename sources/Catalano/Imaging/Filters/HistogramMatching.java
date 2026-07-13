package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;
import Catalano.Statistics.Histogram;

/* JADX INFO: loaded from: classes.dex */
public class HistogramMatching implements IApplyInPlace {
    private int[] a;
    private int[] b;
    private int[] c;
    private int[] d;

    public HistogramMatching(FastBitmap fastBitmap) {
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        ImageStatistics imageStatistics = new ImageStatistics(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            this.a = imageStatistics.getHistogramGray().getValues();
        }
        if (fastBitmap.isRGB()) {
            this.b = imageStatistics.getHistogramRed().getValues();
            this.c = imageStatistics.getHistogramGreen().getValues();
            this.d = imageStatistics.getHistogramBlue().getValues();
        }
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        ImageStatistics imageStatistics = new ImageStatistics(fastBitmap);
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            int[] iArrMatchHistograms = Histogram.MatchHistograms(imageStatistics.getHistogramGray().getValues(), this.a);
            while (i < size) {
                fastBitmap.setGray(i, iArrMatchHistograms[fastBitmap.getGray(i)]);
                i++;
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] values = imageStatistics.getHistogramRed().getValues();
            int[] values2 = imageStatistics.getHistogramGreen().getValues();
            int[] values3 = imageStatistics.getHistogramBlue().getValues();
            int[] iArrMatchHistograms2 = Histogram.MatchHistograms(values, this.b);
            int[] iArrMatchHistograms3 = Histogram.MatchHistograms(values2, this.c);
            int[] iArrMatchHistograms4 = Histogram.MatchHistograms(values3, this.d);
            while (i < size) {
                fastBitmap.setRGB(i, iArrMatchHistograms2[fastBitmap.getRed(i)], iArrMatchHistograms3[fastBitmap.getGreen(i)], iArrMatchHistograms4[fastBitmap.getBlue(i)]);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Histogram Matching only works with Grayscale and RGB images.");
    }
}
