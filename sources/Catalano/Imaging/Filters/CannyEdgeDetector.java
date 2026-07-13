package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class CannyEdgeDetector implements IApplyInPlace {
    private double a;
    private int b;
    private int c;
    private int d;

    public int getLowThreshold() {
        return this.c;
    }

    public void setLowThreshold(int i) {
        this.c = i;
    }

    public int getHighThreshold() {
        return this.d;
    }

    public void setHighThreshold(int i) {
        this.d = i;
    }

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = d;
    }

    public int getSize() {
        return this.b;
    }

    public void setSize(int i) {
        this.b = i;
    }

    public CannyEdgeDetector() {
        this.a = 1.4d;
        this.b = 1;
        this.c = 20;
        this.d = 100;
    }

    public CannyEdgeDetector(int i, int i2) {
        this.a = 1.4d;
        this.b = 1;
        this.c = 20;
        this.d = 100;
        this.c = i;
        this.d = i2;
    }

    public CannyEdgeDetector(int i, int i2, double d) {
        this.a = 1.4d;
        this.b = 1;
        this.c = 20;
        this.d = 100;
        this.c = i;
        this.d = i2;
        this.a = d;
    }

    public CannyEdgeDetector(int i, int i2, double d, int i3) {
        this.a = 1.4d;
        this.b = 1;
        this.c = 20;
        this.d = 100;
        this.c = i;
        this.d = i2;
        this.a = d;
        this.b = i3;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        double dAtan;
        double d;
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            new GaussianBlur(this.a, this.b).applyInPlace(fastBitmap2);
            int[] iArr = new int[width * height];
            float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, width, height);
            float f = Float.NEGATIVE_INFINITY;
            int i = 0;
            int i2 = 1;
            while (i2 < height - 1) {
                int i3 = i;
                float f2 = f;
                int i4 = 1;
                while (i4 < width - 1) {
                    int gray = fastBitmap2.getGray(i2 - 1, i4 + 1);
                    int gray2 = fastBitmap2.getGray(i2 + 1, i4 + 1);
                    int gray3 = fastBitmap2.getGray(i2 - 1, i4 - 1);
                    int gray4 = fastBitmap2.getGray(i2 + 1, i4 - 1);
                    int gray5 = ((fastBitmap2.getGray(i2, i4 + 1) - fastBitmap2.getGray(i2, i4 - 1)) * 2) + (((gray + gray2) - gray3) - gray4);
                    int gray6 = (((gray + gray3) - gray4) - gray2) + ((fastBitmap2.getGray(i2 - 1, i4) - fastBitmap2.getGray(i2 + 1, i4)) * 2);
                    fArr[i4][i2] = (float) Math.sqrt((gray5 * gray5) + (gray6 * gray6));
                    if (fArr[i4][i2] > f2) {
                        f2 = fArr[i4][i2];
                    }
                    if (gray5 == 0) {
                        d = gray6 == 0 ? 0.0d : 90.0d;
                    } else {
                        double d2 = ((double) gray6) / ((double) gray5);
                        if (d2 >= 0.0d) {
                            dAtan = Math.atan(d2) * 57.29577951308232d;
                        } else {
                            dAtan = 180.0d - (Math.atan(-d2) * 57.29577951308232d);
                        }
                        if (dAtan < 22.5d) {
                            d = 0.0d;
                        } else if (dAtan < 67.5d) {
                            d = 45.0d;
                        } else if (dAtan < 112.5d) {
                            d = 90.0d;
                        } else if (dAtan < 157.5d) {
                            d = 135.0d;
                        } else {
                            d = 0.0d;
                        }
                    }
                    iArr[i3] = (int) d;
                    i4++;
                    i3++;
                }
                i2++;
                f = f2;
                i = i3;
            }
            int i5 = 0;
            float f3 = 0.0f;
            float f4 = 0.0f;
            int i6 = 1;
            while (i6 < height - 1) {
                float f5 = f3;
                int i7 = 1;
                int i8 = i5;
                float f6 = f4;
                int i9 = i8;
                while (i7 < width - 1) {
                    switch (iArr[i9]) {
                        case 0:
                            f6 = fArr[i7 - 1][i6];
                            f5 = fArr[i7 + 1][i6];
                            break;
                        case 45:
                            f6 = fArr[i7 - 1][i6 + 1];
                            f5 = fArr[i7 + 1][i6 - 1];
                            break;
                        case 90:
                            f6 = fArr[i7][i6 + 1];
                            f5 = fArr[i7][i6 - 1];
                            break;
                        case 135:
                            f6 = fArr[i7 + 1][i6 + 1];
                            f5 = fArr[i7 - 1][i6 - 1];
                            break;
                    }
                    if (fArr[i7][i6] < f6 || fArr[i7][i6] < f5) {
                        fastBitmap.setGray(i6, i7, 0);
                    } else {
                        fastBitmap.setGray(i6, i7, (int) ((fArr[i7][i6] / f) * 255.0f));
                    }
                    i7++;
                    i9++;
                }
                i6++;
                f3 = f5;
                int i10 = i9;
                f4 = f6;
                i5 = i10;
            }
            new HysteresisThreshold(this.c, this.d).applyInPlace(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("CannyEdgeDetector only works in grayscale images.");
    }
}
