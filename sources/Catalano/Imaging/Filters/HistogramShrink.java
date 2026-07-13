package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class HistogramShrink implements IApplyInPlace {
    private int a;
    private int b;

    public HistogramShrink() {
        this.a = 255;
        this.b = 0;
    }

    public HistogramShrink(int i, int i2) {
        this.a = 255;
        this.b = 0;
        this.b = i;
        this.a = i2;
    }

    public int getMax() {
        return this.a;
    }

    public void setMax(int i) {
        this.a = i;
    }

    public int getMin() {
        return this.b;
    }

    public void setMin(int i) {
        this.b = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        ImageStatistics imageStatistics = new ImageStatistics(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            float max = imageStatistics.getHistogramGray().getMax();
            float min = imageStatistics.getHistogramGray().getMin();
            int size = fastBitmap.getSize();
            while (i < size) {
                fastBitmap.setGray(i, (int) (((fastBitmap.getGray(i) - min) * ((this.a - this.b) / (max - min))) + this.b));
                i++;
            }
            return;
        }
        float max2 = imageStatistics.getHistogramRed().getMax();
        float max3 = imageStatistics.getHistogramGreen().getMax();
        float max4 = imageStatistics.getHistogramBlue().getMax();
        float min2 = imageStatistics.getHistogramRed().getMin();
        float min3 = imageStatistics.getHistogramGreen().getMin();
        float min4 = imageStatistics.getHistogramBlue().getMin();
        int size2 = fastBitmap.getSize();
        while (i < size2) {
            fastBitmap.setRGB(i, (int) (((fastBitmap.getRed(i) - min2) * ((this.a - this.b) / (max2 - min2))) + this.b), (int) (((fastBitmap.getGreen(i) - min3) * ((this.a - this.b) / (max3 - min3))) + this.b), (int) (((fastBitmap.getBlue(i) - min4) * ((this.a - this.b) / (max4 - min4))) + this.b));
            i++;
        }
    }
}
