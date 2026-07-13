package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class RotateBilinear implements IApplyInPlace {
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

    public RotateBilinear(double d) {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.a = -d;
        this.b = false;
    }

    public RotateBilinear(double d, boolean z) {
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
            int i = height - 1;
            int i2 = width - 1;
            double d5 = -(((double) (this.d - 1)) / 2.0d);
            for (int i3 = 0; i3 < this.d; i3++) {
                double d6 = (dCos * d5) + d;
                double d7 = ((-dSin) * d5) + d2;
                double d8 = -d3;
                for (int i4 = 0; i4 < this.c; i4++) {
                    double d9 = d6 + (dSin * d8);
                    double d10 = d7 + (dCos * d8);
                    int i5 = (int) d9;
                    int i6 = (int) d10;
                    if (i5 < 0 || i6 < 0 || i5 >= height || i6 >= width) {
                        fastBitmap2.setGray(i3, i4, this.h);
                    } else {
                        int i7 = i5 == i ? i5 : i5 + 1;
                        int i8 = i6 == i2 ? i6 : i6 + 1;
                        double d11 = d9 - ((double) i5);
                        double d12 = d11 < 0.0d ? 0.0d : d11;
                        double d13 = 1.0d - d12;
                        double d14 = d10 - ((double) i6);
                        if (d14 < 0.0d) {
                            d14 = 0.0d;
                        }
                        double d15 = 1.0d - d14;
                        int gray = fastBitmap.getGray(i5, i6);
                        int gray2 = fastBitmap.getGray(i5, i8);
                        fastBitmap2.setGray(i3, i4, (int) ((((d14 * ((double) fastBitmap.getGray(i7, i8))) + (d15 * ((double) fastBitmap.getGray(i7, i6)))) * d12) + (((((double) gray2) * d14) + (((double) gray) * d15)) * d13)));
                    }
                    d8 += 1.0d;
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
            double d16 = ((double) (height2 - 1)) / 2.0d;
            double d17 = ((double) (width2 - 1)) / 2.0d;
            a(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(this.c, this.d, FastBitmap.ColorSpace.RGB);
            double d18 = ((double) (this.c - 1)) / 2.0d;
            double d19 = ((-this.a) * 3.141592653589793d) / 180.0d;
            double dCos2 = Math.cos(d19);
            double dSin2 = Math.sin(d19);
            int i9 = height2 - 1;
            int i10 = width2 - 1;
            double d20 = -(((double) (this.d - 1)) / 2.0d);
            int i11 = 0;
            while (true) {
                double d21 = d20;
                if (i11 < this.d) {
                    double d22 = (dSin2 * d21) + d16;
                    double d23 = (dCos2 * d21) + d17;
                    double d24 = -d18;
                    int i12 = 0;
                    while (true) {
                        double d25 = d24;
                        if (i12 < this.c) {
                            double d26 = (dCos2 * d25) + d22;
                            double d27 = d23 - (dSin2 * d25);
                            int i13 = (int) d26;
                            int i14 = (int) d27;
                            if (i13 < 0 || i14 < 0 || i13 >= height2 || i14 >= width2) {
                                fastBitmap3.setRGB(i11, i12, this.e, this.f, this.g);
                            } else {
                                int i15 = i13 == i9 ? i13 : i13 + 1;
                                int i16 = i14 == i10 ? i14 : i14 + 1;
                                double d28 = d26 - ((double) i13);
                                double d29 = d28 < 0.0d ? 0.0d : d28;
                                double d30 = 1.0d - d29;
                                double d31 = d27 - ((double) i14);
                                double d32 = d31 < 0.0d ? 0.0d : d31;
                                double d33 = 1.0d - d32;
                                int red = (int) ((((((double) fastBitmap.getRed(i15, i14)) * d33) + (((double) fastBitmap.getRed(i15, i16)) * d32)) * d29) + (((((double) fastBitmap.getRed(i13, i14)) * d33) + (((double) fastBitmap.getRed(i13, i16)) * d32)) * d30));
                                int green = (int) ((((((double) fastBitmap.getGreen(i13, i16)) * d32) + (((double) fastBitmap.getGreen(i13, i14)) * d33)) * d30) + (((((double) fastBitmap.getGreen(i15, i16)) * d32) + (((double) fastBitmap.getGreen(i15, i14)) * d33)) * d29));
                                int blue = fastBitmap.getBlue(i13, i14);
                                int blue2 = fastBitmap.getBlue(i13, i16);
                                fastBitmap3.setRGB(i11, i12, red, green, (int) ((((d32 * ((double) fastBitmap.getBlue(i15, i16))) + (((double) fastBitmap.getBlue(i15, i14)) * d33)) * d29) + (((((double) blue2) * d32) + (((double) blue) * d33)) * d30)));
                            }
                            d24 = 1.0d + d25;
                            i12++;
                        }
                    }
                    d20 = 1.0d + d21;
                    i11++;
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
