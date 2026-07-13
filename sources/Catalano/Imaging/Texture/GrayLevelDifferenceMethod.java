package Catalano.Imaging.Texture;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageStatistics;
import Catalano.Statistics.Histogram;

/* JADX INFO: loaded from: classes.dex */
public class GrayLevelDifferenceMethod {
    private Degree a;
    private boolean b;

    public enum Degree {
        Degree_0,
        Degree_45,
        Degree_90,
        Degree_135
    }

    public boolean isAutoGray() {
        return this.b;
    }

    public void setAutoGray(boolean z) {
        this.b = z;
    }

    public Degree getDegree() {
        return this.a;
    }

    public void setDegree(Degree degree) {
        this.a = degree;
    }

    public GrayLevelDifferenceMethod(Degree degree) {
        this.b = true;
        this.a = degree;
    }

    public GrayLevelDifferenceMethod(Degree degree, boolean z) {
        this.b = true;
        this.a = degree;
        this.b = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public Histogram Compute(FastBitmap fastBitmap) {
        int i = 1;
        int iMaximum = this.b ? ImageStatistics.Maximum(fastBitmap) : 255;
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        int[] iArr = new int[iMaximum + 1];
        switch (this.a) {
            case Degree_0:
                for (int i2 = 0; i2 < height; i2++) {
                    for (int i3 = 1; i3 < width; i3++) {
                        int iAbs = Math.abs(fastBitmap.getGray(i2, i3 - 1) - fastBitmap.getGray(i2, i3));
                        iArr[iAbs] = iArr[iAbs] + 1;
                    }
                }
                break;
            case Degree_45:
                while (i < height) {
                    for (int i4 = 0; i4 < width - 1; i4++) {
                        int iAbs2 = Math.abs(fastBitmap.getGray(i, i4) - fastBitmap.getGray(i - 1, i4 + 1));
                        iArr[iAbs2] = iArr[iAbs2] + 1;
                    }
                    i++;
                }
                break;
            case Degree_90:
                while (i < height) {
                    for (int i5 = 0; i5 < width; i5++) {
                        int iAbs3 = Math.abs(fastBitmap.getGray(i - 1, i5) - fastBitmap.getGray(i, i5));
                        iArr[iAbs3] = iArr[iAbs3] + 1;
                    }
                    i++;
                }
                break;
            case Degree_135:
                while (i < height) {
                    int i6 = width - 1;
                    for (int i7 = 0; i7 < width - 1; i7++) {
                        int iAbs4 = Math.abs(fastBitmap.getGray(i, i6 - i7) - fastBitmap.getGray(i - 1, (i6 - 1) - i7));
                        iArr[iAbs4] = iArr[iAbs4] + 1;
                    }
                    i++;
                }
                break;
        }
        return new Histogram(iArr);
    }
}
