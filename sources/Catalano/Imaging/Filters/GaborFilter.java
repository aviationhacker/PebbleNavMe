package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Functions.Gabor;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GaborFilter implements IApplyInPlace {
    private int a;
    private double b;
    private double c;
    private double d;
    private double e;
    private double f;
    private Gabor.Config g;
    private boolean h;

    public int getSize() {
        return this.a;
    }

    public void setSize(int i) {
        this.a = i;
    }

    public double getWavelength() {
        return this.b;
    }

    public void setWavelength(double d) {
        this.b = d;
    }

    public double getOrientation() {
        return this.c;
    }

    public void setOrientation(double d) {
        this.c = d;
    }

    public double getPhaseOffset() {
        return this.d;
    }

    public void setPhaseOffset(double d) {
        this.d = d;
    }

    public double getGaussianVar() {
        return this.e;
    }

    public void setGaussianVar(double d) {
        this.e = d;
    }

    public double getAspectRatio() {
        return this.f;
    }

    public void setAspectRatio(double d) {
        this.f = d;
    }

    public Gabor.Config getConfig() {
        return this.g;
    }

    public void setConfig(Gabor.Config config) {
        this.g = config;
    }

    public boolean isSigned() {
        return this.h;
    }

    public void setSigned(boolean z) {
        this.h = z;
    }

    public GaborFilter() {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
    }

    public GaborFilter(double d) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
    }

    public GaborFilter(double d, double d2) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
        this.c = d2;
    }

    public GaborFilter(double d, double d2, double d3) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
        this.c = d2;
        this.d = d3;
    }

    public GaborFilter(double d, double d2, double d3, double d4) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
        this.c = d2;
        this.d = d3;
        this.e = d4;
    }

    public GaborFilter(double d, double d2, double d3, double d4, double d5) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
        this.c = d2;
        this.d = d3;
        this.e = d4;
        this.f = d5;
    }

    public GaborFilter(double d, double d2, double d3, double d4, double d5, Gabor.Config config) {
        this.a = 3;
        this.b = 4.0d;
        this.c = 0.6d;
        this.d = 1.0d;
        this.e = 2.0d;
        this.f = 0.3d;
        this.g = Gabor.Config.Imaginary;
        this.h = false;
        this.b = d;
        this.c = d2;
        this.d = d3;
        this.e = d4;
        this.f = d5;
        this.g = config;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            int[][] iArrA = a(fastBitmap, Gabor.Kernel2D(this.a, this.b, this.c, this.d, this.e, this.f, this.g));
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            if (isSigned()) {
                fastBitmap.toRGB();
                int i5 = 0;
                while (true) {
                    i = i4;
                    i2 = i3;
                    if (i5 >= iArrA.length) {
                        break;
                    }
                    int i6 = 0;
                    i3 = i2;
                    while (true) {
                        i4 = i;
                        if (i6 < iArrA[0].length) {
                            i = iArrA[i5][i6];
                            if (i > i3 && i > 0) {
                                i3 = i;
                            }
                            if (i >= i4 || i >= 0) {
                                i = i4;
                            }
                            i6++;
                        }
                    }
                    i5++;
                }
                for (int i7 = 0; i7 < height; i7++) {
                    for (int i8 = 0; i8 < width; i8++) {
                        int iRound = (int) Math.round(255.0d * (((double) iArrA[i7][i8]) / ((double) i2)));
                        if (iArrA[i7][i8] < 0) {
                            iRound = (int) Math.round(255.0d * (((double) iArrA[i7][i8]) / ((double) i)));
                        }
                        if (iArrA[i7][i8] > 0) {
                            fastBitmap.setRGB(i7, i8, iRound, 0, 0);
                        } else {
                            fastBitmap.setRGB(i7, i8, 0, 0, iRound);
                        }
                    }
                }
                return;
            }
            for (int[] iArr : iArrA) {
                int i9 = 0;
                while (i9 < iArrA[0].length) {
                    int i10 = iArr[i9];
                    int i11 = i10 > i3 ? i10 : i3;
                    i9++;
                    i4 = i10 < i4 ? i10 : i4;
                    i3 = i11;
                }
            }
            int i12 = 0;
            while (true) {
                int i13 = i12;
                if (i13 < height) {
                    for (int i14 = 0; i14 < width; i14++) {
                        fastBitmap.setGray(i13, i14, (int) Math.round((255.0d * ((double) (iArrA[i13][i14] - i4))) / ((double) (i3 - i4))));
                    }
                    i12 = i13 + 1;
                } else {
                    return;
                }
            }
        } else {
            try {
                throw new IllegalArgumentException("Gabor filter only works with grayscale images.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private int[][] a(FastBitmap fastBitmap, double[][] dArr) {
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        int iFloor = (int) Math.floor(((double) dArr.length) / 2.0d);
        int iFloor2 = (int) Math.floor(((double) dArr[0].length) / 2.0d);
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                double gray = 0.0d;
                for (int i3 = -iFloor; i3 <= iFloor; i3++) {
                    for (int i4 = -iFloor2; i4 <= iFloor2; i4++) {
                        if (i - i3 >= 0 && i - i3 < height && i2 - i4 >= 0 && i2 - i4 < width) {
                            gray += dArr[i3 + iFloor][i4 + iFloor2] * ((double) fastBitmap.getGray(i - i3, i2 - i4));
                        }
                    }
                }
                iArr[i][i2] = (int) Math.round(gray);
            }
        }
        return iArr;
    }
}
