package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.Interpolation;

/* JADX INFO: loaded from: classes.dex */
public class ResizeBicubic implements IApplyInPlace {
    private int a;
    private int b;

    public int getNewWidth() {
        return this.a;
    }

    public void setNewWidth(int i) {
        this.a = i;
    }

    public int getNewHeight() {
        return this.b;
    }

    public void setNewHeight(int i) {
        this.b = i;
    }

    public void setNewSize(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public ResizeBicubic(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(this.a, this.b, fastBitmap.getColorSpace());
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            double d = ((double) width) / ((double) this.a);
            double d2 = ((double) height) / ((double) this.b);
            int i = height - 1;
            int i2 = width - 1;
            for (int i3 = 0; i3 < this.b; i3++) {
                double d3 = (((double) i3) * d2) - 0.5d;
                int i4 = (int) d3;
                double d4 = d3 - ((double) i4);
                for (int i5 = 0; i5 < this.a; i5++) {
                    double d5 = (((double) i5) * d) - 0.5d;
                    int i6 = (int) d5;
                    double d6 = d5 - ((double) i6);
                    int i7 = 0;
                    int i8 = -1;
                    while (i8 < 3) {
                        double dBiCubicKernel = Interpolation.BiCubicKernel(d4 - ((double) i8));
                        int i9 = i4 + i8;
                        if (i9 < 0) {
                            i9 = 0;
                        }
                        if (i9 > i) {
                            i9 = i;
                        }
                        int i10 = -1;
                        int gray = i7;
                        while (true) {
                            int i11 = i10;
                            if (i11 < 3) {
                                double dBiCubicKernel2 = Interpolation.BiCubicKernel(((double) i11) - d6) * dBiCubicKernel;
                                int i12 = i6 + i11;
                                if (i12 < 0) {
                                    i12 = 0;
                                }
                                if (i12 > i2) {
                                    i12 = i2;
                                }
                                gray = (int) ((dBiCubicKernel2 * ((double) fastBitmap.getGray(i9, i12))) + ((double) gray));
                                i10 = i11 + 1;
                            }
                        }
                        i8++;
                        i7 = gray;
                    }
                    fastBitmap2.setGray(i3, i5, Math.max(0, Math.min(255, i7)));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            fastBitmap2.recycle();
            return;
        }
        int width2 = fastBitmap.getWidth();
        int height2 = fastBitmap.getHeight();
        double d7 = ((double) width2) / ((double) this.a);
        double d8 = ((double) height2) / ((double) this.b);
        int i13 = height2 - 1;
        int i14 = width2 - 1;
        for (int i15 = 0; i15 < this.b; i15++) {
            double d9 = (((double) i15) * d8) - 0.5d;
            int i16 = (int) d9;
            double d10 = d9 - ((double) i16);
            for (int i17 = 0; i17 < this.a; i17++) {
                double d11 = (((double) i17) * d7) - 0.5d;
                int i18 = (int) d11;
                double d12 = d11 - ((double) i18);
                int i19 = 0;
                int i20 = -1;
                int i21 = 0;
                int i22 = 0;
                while (i20 < 3) {
                    double dBiCubicKernel3 = Interpolation.BiCubicKernel(d10 - ((double) i20));
                    int i23 = i16 + i20;
                    if (i23 < 0) {
                        i23 = 0;
                    }
                    if (i23 > i13) {
                        i23 = i13;
                    }
                    int i24 = -1;
                    int red = i22;
                    int green = i21;
                    int blue = i19;
                    while (true) {
                        int i25 = i24;
                        if (i25 < 3) {
                            double dBiCubicKernel4 = Interpolation.BiCubicKernel(((double) i25) - d12) * dBiCubicKernel3;
                            int i26 = i18 + i25;
                            if (i26 < 0) {
                                i26 = 0;
                            }
                            if (i26 > i14) {
                                i26 = i14;
                            }
                            red = (int) (((double) red) + (((double) fastBitmap.getRed(i23, i26)) * dBiCubicKernel4));
                            green = (int) (((double) green) + (((double) fastBitmap.getGreen(i23, i26)) * dBiCubicKernel4));
                            blue = (int) ((dBiCubicKernel4 * ((double) fastBitmap.getBlue(i23, i26))) + ((double) blue));
                            i24 = i25 + 1;
                        }
                    }
                    i20++;
                    i19 = blue;
                    i21 = green;
                    i22 = red;
                }
                fastBitmap2.setRGB(i15, i17, Math.max(0, Math.min(255, i22)), Math.max(0, Math.min(255, i21)), Math.max(0, Math.min(255, i19)));
            }
        }
        fastBitmap.setImage(fastBitmap2);
        fastBitmap2.recycle();
    }
}
