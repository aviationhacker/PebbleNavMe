package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HistogramOfOrientedGradients {
    private int a;
    private int b;
    private int c;
    private double d;
    private double e;

    public int getNumberOfBins() {
        return this.a;
    }

    public int getCellSize() {
        return this.b;
    }

    public int getBlockSize() {
        return this.c;
    }

    public HistogramOfOrientedGradients() {
        this.a = 9;
        this.b = 6;
        this.c = 3;
        this.d = 1.0E-10d;
        this.e = 0.6981317007977318d;
    }

    public HistogramOfOrientedGradients(int i, int i2, int i3) {
        this.a = 9;
        this.b = 6;
        this.c = 3;
        this.d = 1.0E-10d;
        this.e = 0.6981317007977318d;
        this.a = i;
        this.c = i2;
        this.b = i3;
        this.e = 6.283185307179586d / ((double) i);
    }

    public ArrayList<double[]> ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
            float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= height - 1) {
                    break;
                }
                for (int i3 = 1; i3 < width - 1; i3++) {
                    int gray = fastBitmap.getGray(i2 - 1, i3 + 1);
                    int gray2 = fastBitmap.getGray(i2, i3 + 1);
                    int gray3 = fastBitmap.getGray(i2 + 1, i3 + 1);
                    int gray4 = fastBitmap.getGray(i2 - 1, i3 - 1);
                    int gray5 = fastBitmap.getGray(i2, i3 - 1);
                    int gray6 = fastBitmap.getGray(i2 + 1, i3 - 1);
                    float f = (((gray2 + gray) + gray3) - ((gray5 + gray4) + gray6)) * 0.16666667f;
                    fArr[i2][i3] = (float) Math.atan2(((gray3 + (gray6 + fastBitmap.getGray(i2 + 1, i3))) - (gray + (gray4 + fastBitmap.getGray(i2 - 1, i3)))) * 0.16666667f, f);
                    fArr2[i2][i3] = (float) Math.sqrt((r8 * r8) + (f * f));
                }
                i = i2 + 1;
            }
            int iFloor = (int) Math.floor(((double) height) / ((double) this.b));
            int iFloor2 = (int) Math.floor(((double) width) / ((double) this.b));
            double[][][] dArr = (double[][][]) Array.newInstance((Class<?>) double[].class, iFloor, iFloor2);
            for (int i4 = 0; i4 < iFloor; i4++) {
                for (int i5 = 0; i5 < iFloor2; i5++) {
                    double[] dArr2 = new double[this.a];
                    int i6 = i4 * this.b;
                    int i7 = i5 * this.b;
                    for (int i8 = 0; i8 < this.b; i8++) {
                        for (int i9 = 0; i9 < this.b; i9++) {
                            double d = fArr[i6 + i8][i7 + i9];
                            double d2 = fArr2[i6 + i8][i7 + i9];
                            int iFloor3 = (int) Math.floor((d + 3.141592653589793d) * this.e);
                            dArr2[iFloor3] = d2 + dArr2[iFloor3];
                        }
                    }
                    dArr[i4][i5] = dArr2;
                }
            }
            int iFloor4 = (int) Math.floor(((double) iFloor) / ((double) this.c));
            int iFloor5 = (int) Math.floor(((double) iFloor2) / ((double) this.c));
            ArrayList<double[]> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < iFloor4; i10++) {
                for (int i11 = 0; i11 < iFloor5; i11++) {
                    double[] dArr3 = new double[this.c * this.c * this.a];
                    int i12 = i10 * this.c;
                    int i13 = i11 * this.c;
                    int i14 = 0;
                    for (int i15 = 0; i15 < this.c; i15++) {
                        int i16 = 0;
                        while (i16 < this.c) {
                            double[] dArr4 = dArr[i12 + i15][i13 + i16];
                            int i17 = i14;
                            int i18 = 0;
                            while (i18 < dArr4.length) {
                                dArr3[i17] = dArr4[i18];
                                i18++;
                                i17++;
                            }
                            i16++;
                            i14 = i17;
                        }
                    }
                    arrayList.add(a(dArr3, a(dArr3) + this.d));
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("HistogramOfOrientedGradients only works in grayscale images.");
    }

    private double a(double[] dArr) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr[i];
        }
        return Math.sqrt(d);
    }

    private double[] a(double[] dArr, double d) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i] / d;
        }
        return dArr2;
    }
}
