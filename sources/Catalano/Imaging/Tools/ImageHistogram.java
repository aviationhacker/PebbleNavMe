package Catalano.Imaging.Tools;

import Catalano.Statistics.HistogramStatistics;

/* JADX INFO: loaded from: classes.dex */
public class ImageHistogram {
    private int[] a;
    private double b = 0.0d;
    private double c = 0.0d;
    private double d = 0.0d;
    private double e = 0.0d;
    private double f = 0.0d;
    private int g = 0;
    private int h;
    private int i;
    private int j;
    private long k;

    public static int[] MatchHistograms(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        double[] dArrCDF = CDF(iArr);
        double[] dArrCDF2 = CDF(iArr2);
        int[] iArr3 = new int[length];
        for (int i = 0; i < length; i++) {
            int i2 = length - 1;
            do {
                iArr3[i] = i2;
                i2--;
                if (i2 >= 0) {
                }
            } while (dArrCDF[i] <= dArrCDF2[i2]);
        }
        return iArr3;
    }

    public static int[] MatchHistograms(ImageHistogram imageHistogram, ImageHistogram imageHistogram2) {
        return MatchHistograms(imageHistogram.a, imageHistogram2.a);
    }

    public static double[] CDF(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        double[] dArr = new double[length];
        int i4 = iArr[0];
        dArr[0] = ((double) i4) / ((double) i2);
        for (int i5 = 1; i5 < length; i5++) {
            i4 += iArr[i5];
            dArr[i5] = ((double) i4) / ((double) i2);
        }
        return dArr;
    }

    public static double[] CDF(ImageHistogram imageHistogram) {
        return CDF(imageHistogram.a);
    }

    public static double[] Normalize(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        double[] dArr = new double[iArr.length];
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = ((double) iArr[i3]) / ((double) i);
        }
        return dArr;
    }

    public ImageHistogram(int[] iArr) {
        this.a = iArr;
        a();
    }

    public int[] getValues() {
        return this.a;
    }

    public double getMean() {
        return this.b;
    }

    public double getStdDev() {
        return this.c;
    }

    public double getEntropy() {
        return this.d;
    }

    public double getKurtosis() {
        return this.e;
    }

    public double getSkewness() {
        return this.f;
    }

    public int getMedian() {
        return this.g;
    }

    public int getMode() {
        return this.h;
    }

    public int getMin() {
        return this.i;
    }

    public int getMax() {
        return this.j;
    }

    public long getTotal() {
        return this.k;
    }

    private void a() {
        this.k = 0L;
        for (int i = 0; i < this.a.length; i++) {
            this.k += (long) this.a[i];
        }
        this.b = HistogramStatistics.Mean(this.a);
        this.c = HistogramStatistics.StdDev(this.a, this.b);
        this.e = HistogramStatistics.Kurtosis(this.a, this.b, this.c);
        this.f = HistogramStatistics.Skewness(this.a, this.b, this.c);
        this.g = HistogramStatistics.Median(this.a);
        this.h = HistogramStatistics.Mode(this.a);
        this.d = HistogramStatistics.Entropy(this.a);
    }

    public double[] Normalize() {
        double[] dArr = new double[this.a.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = ((double) this.a[i]) / this.k;
        }
        return dArr;
    }
}
