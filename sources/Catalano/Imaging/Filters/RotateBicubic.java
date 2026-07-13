package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.Interpolation;

/* JADX INFO: loaded from: classes.dex */
public class RotateBicubic implements IApplyInPlace {
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

    public RotateBicubic(double d) {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.a = -d;
        this.b = false;
    }

    public RotateBicubic(double d, boolean z) {
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
                double d6 = -d3;
                for (int i4 = 0; i4 < this.c; i4++) {
                    double d7 = (dCos * d5) + (dSin * d6) + d;
                    double d8 = ((-dSin) * d5) + (dCos * d6) + d2;
                    int i5 = (int) d7;
                    int i6 = (int) d8;
                    if (i5 < 0 || i6 < 0 || i5 >= height || i6 >= width) {
                        fastBitmap2.setGray(i3, i4, this.h);
                    } else {
                        double d9 = d7 - ((double) i5);
                        double d10 = d8 - ((double) i6);
                        int i7 = 0;
                        int i8 = -1;
                        while (i8 < 3) {
                            double dBiCubicKernel = Interpolation.BiCubicKernel(d10 - ((double) i8));
                            int i9 = i6 + i8;
                            if (i9 < 0) {
                                i9 = 0;
                            }
                            if (i9 > i2) {
                                i9 = i2;
                            }
                            int i10 = -1;
                            int gray = i7;
                            while (true) {
                                int i11 = i10;
                                if (i11 < 3) {
                                    double dBiCubicKernel2 = Interpolation.BiCubicKernel(((double) i11) - d9) * dBiCubicKernel;
                                    int i12 = i5 + i11;
                                    if (i12 < 0) {
                                        i12 = 0;
                                    }
                                    if (i12 > i) {
                                        i12 = i;
                                    }
                                    gray = (int) ((dBiCubicKernel2 * ((double) fastBitmap.getGray(i12, i9))) + ((double) gray));
                                    i10 = i11 + 1;
                                }
                            }
                            i8++;
                            i7 = gray;
                        }
                        fastBitmap2.setGray(i3, i4, Math.max(0, Math.min(255, i7)));
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
            double d11 = ((double) (height2 - 1)) / 2.0d;
            double d12 = ((double) (width2 - 1)) / 2.0d;
            a(fastBitmap);
            FastBitmap fastBitmap3 = new FastBitmap(this.c, this.d, FastBitmap.ColorSpace.RGB);
            double d13 = ((double) (this.c - 1)) / 2.0d;
            double d14 = ((-this.a) * 3.141592653589793d) / 180.0d;
            double dCos2 = Math.cos(d14);
            double dSin2 = Math.sin(d14);
            int i13 = height2 - 1;
            int i14 = width2 - 1;
            double d15 = -(((double) (this.d - 1)) / 2.0d);
            int i15 = 0;
            while (true) {
                double d16 = d15;
                if (i15 < this.d) {
                    double d17 = -d13;
                    int i16 = 0;
                    while (true) {
                        double d18 = d17;
                        if (i16 < this.c) {
                            double d19 = (dCos2 * d16) + (dSin2 * d18) + d11;
                            double d20 = ((-dSin2) * d16) + (dCos2 * d18) + d12;
                            int i17 = (int) d19;
                            int i18 = (int) d20;
                            if (d19 < 0.0d || d20 < 0.0d || d19 >= height2 || d20 >= width2) {
                                fastBitmap3.setRGB(i15, i16, this.e, this.f, this.g);
                            } else {
                                double d21 = d19 - ((double) i17);
                                double d22 = d20 - ((double) i18);
                                int i19 = 0;
                                int i20 = 0;
                                int i21 = 0;
                                int i22 = -1;
                                while (i22 < 3) {
                                    double dBiCubicKernel3 = Interpolation.BiCubicKernel(d22 - ((double) i22));
                                    int i23 = i18 + i22;
                                    if (i23 < 0) {
                                        i23 = 0;
                                    }
                                    if (i23 > i14) {
                                        i23 = i14;
                                    }
                                    int i24 = -1;
                                    int red = i19;
                                    int green = i20;
                                    int blue = i21;
                                    while (true) {
                                        int i25 = i24;
                                        if (i25 < 3) {
                                            double dBiCubicKernel4 = Interpolation.BiCubicKernel(((double) i25) - d21) * dBiCubicKernel3;
                                            int i26 = i17 + i25;
                                            if (i26 < 0) {
                                                i26 = 0;
                                            }
                                            if (i26 > i13) {
                                                i26 = i13;
                                            }
                                            red = (int) (((double) red) + (((double) fastBitmap.getRed(i26, i23)) * dBiCubicKernel4));
                                            green = (int) (((double) green) + (((double) fastBitmap.getGreen(i26, i23)) * dBiCubicKernel4));
                                            blue = (int) ((dBiCubicKernel4 * ((double) fastBitmap.getBlue(i26, i23))) + ((double) blue));
                                            i24 = i25 + 1;
                                        }
                                    }
                                    i22++;
                                    i21 = blue;
                                    i20 = green;
                                    i19 = red;
                                }
                                fastBitmap3.setRGB(i15, i16, Math.max(0, Math.min(255, i19)), Math.max(0, Math.min(255, i20)), Math.max(0, Math.min(255, i21)));
                            }
                            d17 = 1.0d + d18;
                            i16++;
                        }
                    }
                    d15 = 1.0d + d16;
                    i15++;
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
