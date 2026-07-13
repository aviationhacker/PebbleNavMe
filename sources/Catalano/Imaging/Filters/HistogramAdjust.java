package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;
import Catalano.Statistics.Histogram;

/* JADX INFO: loaded from: classes.dex */
public class HistogramAdjust implements IApplyInPlace {
    private double a;
    private int b;
    private int c;

    public double getTolerance() {
        return this.a;
    }

    public void setTolerance(double d) {
        this.a = d;
    }

    public HistogramAdjust() {
        this(0, 255);
    }

    public HistogramAdjust(double d) {
        this(0, 255, d);
    }

    public HistogramAdjust(int i, int i2) {
        this(i, i2, 0.01d);
    }

    public HistogramAdjust(int i, int i2, double d) {
        this.b = 0;
        this.c = 255;
        this.b = i;
        this.c = i2;
        this.a = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            double[] dArrCDF = Histogram.CDF(new ImageStatistics(fastBitmap).getHistogramGray().getValues());
            double d = 1.0d - this.a;
            int i = 0;
            while (true) {
                if (i >= dArrCDF.length) {
                    i = 255;
                    break;
                } else if (dArrCDF[i] > this.a) {
                    break;
                } else {
                    i++;
                }
            }
            int i2 = 0;
            while (true) {
                if (i2 >= dArrCDF.length) {
                    i2 = 0;
                    break;
                } else if (dArrCDF[i2] > d) {
                    break;
                } else {
                    i2++;
                }
            }
            int size = fastBitmap.getSize();
            for (int i3 = 0; i3 < size; i3++) {
                fastBitmap.setGray(i3, fastBitmap.clampValues((int) (((((double) (fastBitmap.getGray(i3) - i)) / ((double) (i2 - i))) * ((double) (this.c - this.b))) + ((double) this.b)), 0, 255));
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            ImageStatistics imageStatistics = new ImageStatistics(fastBitmap);
            int[] values = imageStatistics.getHistogramRed().getValues();
            int[] values2 = imageStatistics.getHistogramGreen().getValues();
            int[] values3 = imageStatistics.getHistogramBlue().getValues();
            double[] dArrCDF2 = Histogram.CDF(values);
            double[] dArrCDF3 = Histogram.CDF(values2);
            double[] dArrCDF4 = Histogram.CDF(values3);
            double d2 = 1.0d - this.a;
            int i4 = 0;
            while (true) {
                if (i4 >= dArrCDF2.length) {
                    i4 = 255;
                    break;
                } else if (dArrCDF2[i4] > this.a) {
                    break;
                } else {
                    i4++;
                }
            }
            int i5 = 0;
            while (true) {
                if (i5 >= dArrCDF3.length) {
                    i5 = 255;
                    break;
                } else if (dArrCDF3[i5] > this.a) {
                    break;
                } else {
                    i5++;
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= dArrCDF4.length) {
                    i6 = 255;
                    break;
                } else if (dArrCDF4[i6] > this.a) {
                    break;
                } else {
                    i6++;
                }
            }
            int i7 = 0;
            while (true) {
                if (i7 >= dArrCDF2.length) {
                    i7 = 0;
                    break;
                } else if (dArrCDF2[i7] > d2) {
                    break;
                } else {
                    i7++;
                }
            }
            int i8 = 0;
            while (true) {
                if (i8 >= dArrCDF3.length) {
                    i8 = 0;
                    break;
                } else if (dArrCDF3[i8] > d2) {
                    break;
                } else {
                    i8++;
                }
            }
            int i9 = 0;
            while (true) {
                if (i9 >= dArrCDF4.length) {
                    i9 = 0;
                    break;
                } else if (dArrCDF4[i9] > d2) {
                    break;
                } else {
                    i9++;
                }
            }
            int size2 = fastBitmap.getSize();
            for (int i10 = 0; i10 < size2; i10++) {
                fastBitmap.setRGB(i10, fastBitmap.clampValues(((int) ((((double) (fastBitmap.getRed(i10) - i4)) / ((double) (i7 - i4))) * ((double) (this.c - this.b)))) + this.b, 0, 255), fastBitmap.clampValues(((int) ((((double) (fastBitmap.getGreen(i10) - i5)) / ((double) (i8 - i5))) * ((double) (this.c - this.b)))) + this.b, 0, 255), fastBitmap.clampValues(((int) ((((double) (fastBitmap.getBlue(i10) - i6)) / ((double) (i9 - i6))) * ((double) (this.c - this.b)))) + this.b, 0, 255));
            }
        }
    }
}
