package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class RotateNearestNeighbor implements IApplyInPlace {
    private double a;
    private boolean b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public double getAngle() {
        return -this.a;
    }

    public void setAngle(double d) {
        this.a = -d;
    }

    public boolean isKeepSize() {
        return this.b;
    }

    public void setKeepSize(boolean z) {
        this.b = z;
    }

    public void setFillColor(int i, int i2, int i3) {
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    public void setFillColor(int i) {
        this.h = i;
    }

    public RotateNearestNeighbor(double d) {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.a = -d;
        this.b = false;
    }

    public RotateNearestNeighbor(double d, boolean z) {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.a = -d;
        this.b = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            double d = ((double) (height - 1)) / 2.0d;
            double d2 = ((double) (width - 1)) / 2.0d;
            a(fastBitmap);
            FastBitmap fastBitmap2 = new FastBitmap(this.c, this.d, FastBitmap.ColorSpace.Grayscale);
            double d3 = ((double) (this.c - 1)) / 2.0d;
            double d4 = ((-this.a) * 3.141592653589793d) / 180.0d;
            double dCos = Math.cos(d4);
            double dSin = Math.sin(d4);
            double d5 = -(((double) (this.d - 1)) / 2.0d);
            for (int i = 0; i < this.d; i++) {
                double d6 = -d3;
                for (int i2 = 0; i2 < this.c; i2++) {
                    int i3 = (int) ((dCos * d5) + (dSin * d6) + d);
                    int i4 = (int) (((-dSin) * d5) + (dCos * d6) + d2);
                    if (i3 < 0 || i4 < 0 || i3 >= height || i4 >= width) {
                        fastBitmap2.setGray(i, i2, this.h);
                    } else {
                        fastBitmap2.setGray(i, i2, fastBitmap.getGray(i3, i4));
                    }
                    d6 += 1.0d;
                }
                d5 += 1.0d;
            }
            fastBitmap.setImage(fastBitmap2);
            fastBitmap2.recycle();
            return;
        }
        if (fastBitmap.isRGB()) {
            int width2 = fastBitmap.getWidth();
            int height2 = fastBitmap.getHeight();
            double d7 = ((double) (height2 - 1)) / 2.0d;
            double d8 = ((double) (width2 - 1)) / 2.0d;
            a(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(this.c, this.d, FastBitmap.ColorSpace.RGB);
            double d9 = ((double) (this.c - 1)) / 2.0d;
            double d10 = ((-this.a) * 3.141592653589793d) / 180.0d;
            double dCos2 = Math.cos(d10);
            double dSin2 = Math.sin(d10);
            double d11 = -(((double) (this.d - 1)) / 2.0d);
            int i5 = 0;
            while (true) {
                double d12 = d11;
                if (i5 < this.d) {
                    double d13 = -d9;
                    int i6 = 0;
                    while (true) {
                        double d14 = d13;
                        if (i6 < this.c) {
                            int i7 = (int) ((dCos2 * d12) + (dSin2 * d14) + d7);
                            int i8 = (int) (((-dSin2) * d12) + (dCos2 * d14) + d8);
                            if (i7 < 0 || i8 < 0 || i7 >= height2 || i8 >= width2) {
                                fastBitmap3.setRGB(i5, i6, this.e, this.f, this.g);
                            } else {
                                fastBitmap3.setRGB(i5, i6, fastBitmap.getRed(i7, i8), fastBitmap.getGreen(i7, i8), fastBitmap.getBlue(i7, i8));
                            }
                            d13 = 1.0d + d14;
                            i6++;
                        }
                    }
                    d11 = 1.0d + d12;
                    i5++;
                } else {
                    fastBitmap.setImage(fastBitmap3);
                    fastBitmap3.recycle();
                    return;
                }
            }
        }
    }

    private void a(FastBitmap fastBitmap) {
        if (this.b) {
            this.c = fastBitmap.getWidth();
            this.d = fastBitmap.getHeight();
            return;
        }
        double d = ((-this.a) * 3.141592653589793d) / 180.0d;
        double dCos = Math.cos(d);
        double dSin = Math.sin(d);
        double width = ((double) fastBitmap.getWidth()) / 2.0d;
        double height = ((double) fastBitmap.getHeight()) / 2.0d;
        double d2 = width * dCos;
        double d3 = width * dSin;
        double d4 = (width * dCos) - (height * dSin);
        double d5 = (width * dSin) + (height * dCos);
        double d6 = dSin * (-height);
        double d7 = dCos * height;
        double dMax = Math.max(Math.max(d2, d4), Math.max(d6, 0.0d)) - Math.min(Math.min(d2, d4), Math.min(d6, 0.0d));
        double dMax2 = Math.max(Math.max(d3, d5), Math.max(d7, 0.0d)) - Math.min(Math.min(d3, d5), Math.min(d7, 0.0d));
        this.c = (int) ((dMax * 2.0d) + 0.5d);
        this.d = (int) ((2.0d * dMax2) + 0.5d);
    }
}
