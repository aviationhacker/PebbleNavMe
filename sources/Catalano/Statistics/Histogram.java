package Catalano.Statistics;

/* JADX INFO: loaded from: classes.dex */
public class Histogram {
    private int[] a;
    private double b;
    private double c;
    private double d;
    private int e;
    private int f;
    private int g;
    private int h;
    private long i;
    private int j;

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

    public static int[] MatchHistograms(Histogram histogram, Histogram histogram2) {
        return MatchHistograms(histogram.a, histogram2.a);
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

    public static double[] CDF(Histogram histogram) {
        return CDF(histogram.a);
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

    public Histogram(int[] iArr) {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0;
        this.j = 10;
        this.a = iArr;
        a();
    }

    public Histogram(int[] iArr, int i) {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0;
        this.j = 10;
        this.a = iArr;
        this.j = i;
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

    public int getMedian() {
        return this.e;
    }

    public int getMode() {
        return this.f;
    }

    public int getMin() {
        return this.g;
    }

    public int getMax() {
        return this.h;
    }

    public long getTotal() {
        return this.i;
    }

    public int getBins() {
        return this.j;
    }

    private void a() {
        int length = this.a.length;
        this.h = 0;
        this.g = length;
        this.i = 0L;
        int iMax = -2147483647;
        int iMin = Integer.MAX_VALUE;
        for (int i = 0; i < length; i++) {
            if (this.a[i] != 0) {
                if (i > this.h) {
                    this.h = i;
                }
                if (i < this.g) {
                    this.g = i;
                }
                iMax = Math.max(iMax, this.a[i]);
                iMin = Math.min(iMin, this.a[i]);
                this.i += (long) this.a[i];
            }
        }
        double d = ((double) (iMax - iMin)) / ((double) this.j);
        int[] iArr = new int[this.j];
        for (int i2 = 0; i2 < this.a.length; i2++) {
            double d2 = iMin;
            double d3 = d2 + d;
            if (this.a[i2] >= d2 && this.a[i2] <= d3) {
                iArr[0] = iArr[0] + 1;
            }
            double d4 = d2 + d;
            double d5 = d3 + d;
            for (int i3 = 1; i3 < this.j; i3++) {
                if (this.a[i2] > d4 && this.a[i2] <= d5) {
                    iArr[i3] = iArr[i3] + 1;
                }
                d4 += d;
                d5 += d;
            }
        }
        this.a = iArr;
        this.b = HistogramStatistics.Mean(this.a);
        this.c = HistogramStatistics.StdDev(this.a, this.b);
        this.e = HistogramStatistics.Median(this.a);
        this.f = HistogramStatistics.Mode(this.a);
        this.d = HistogramStatistics.Entropy(this.a);
    }

    public double[] Normalize() {
        double[] dArr = new double[this.a.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = ((double) this.a[i]) / this.i;
        }
        return dArr;
    }
}
