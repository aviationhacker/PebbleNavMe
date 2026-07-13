package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class WeberLocalDescriptor {
    private double[][] d;
    private double[][] e;
    private final int a = 5;
    private int b = 3;
    private final double c = 1.0E-7d;
    private final int[][] f = {new int[]{1, 1, 1}, new int[]{1, -8, 1}, new int[]{1, 1, 1}};

    public int getAlpha() {
        return this.b;
    }

    public void setAlpha(int i) {
        this.b = i;
    }

    public double[][] getGradientOrientation() {
        return this.e;
    }

    public double[][] Compute(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            this.d = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height - 1, width - 1);
            this.e = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height - 1, width - 1);
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 < height - 1) {
                    for (int i3 = 1; i3 < width - 1; i3++) {
                        double gray = (this.f[0][0] * fastBitmap.getGray(i2 - 1, i3 - 1)) + (this.f[0][1] * fastBitmap.getGray(i2 - 1, i3)) + (this.f[0][2] * fastBitmap.getGray(i2 - 1, i3 + 1)) + (this.f[1][0] * fastBitmap.getGray(i2, i3 - 1)) + (this.f[1][1] * fastBitmap.getGray(i2, i3)) + (this.f[1][2] * fastBitmap.getGray(i2, i3 + 1)) + (this.f[2][0] * fastBitmap.getGray(i2 + 1, i3 - 1)) + (this.f[2][1] * fastBitmap.getGray(i2 + 1, i3)) + (this.f[2][2] * fastBitmap.getGray(i2 + 1, i3 + 1));
                        double gray2 = fastBitmap.getGray(i2, i3) + 5;
                        if (gray2 != 0.0d) {
                            this.d[i2 - 1][i3 - 1] = Math.atan((gray * ((double) this.b)) / gray2);
                        } else {
                            this.d[i2 - 1][i3 - 1] = 0.1d;
                        }
                        int gray3 = fastBitmap.getGray(i2 - 1, i3);
                        int gray4 = fastBitmap.getGray(i2, i3 + 1);
                        int gray5 = fastBitmap.getGray(i2 + 1, i3);
                        int gray6 = fastBitmap.getGray(i2, i3 - 1);
                        if (Math.abs(gray6 - gray4) < 1.0E-7d) {
                            this.e[i2 - 1][i3 - 1] = 0.0d;
                        } else {
                            double d = gray5 - gray3;
                            double d2 = gray6 - gray4;
                            this.e[i2 - 1][i3 - 1] = (Math.atan(d / d2) * 180.0d) / 3.141592653589793d;
                            if (d2 > 1.0E-7d && d > 1.0E-7d) {
                                double[] dArr = this.e[i2 - 1];
                                int i4 = i3 - 1;
                                dArr[i4] = dArr[i4] + 0.0d;
                            } else if (d2 < -1.0E-7d && d > 1.0E-7d) {
                                double[] dArr2 = this.e[i2 - 1];
                                int i5 = i3 - 1;
                                dArr2[i5] = dArr2[i5] + 180.0d;
                            } else if (d2 < -1.0E-7d && d < -1.0E-7d) {
                                double[] dArr3 = this.e[i2 - 1];
                                int i6 = i3 - 1;
                                dArr3[i6] = dArr3[i6] + 180.0d;
                            } else if (d2 > 1.0E-7d && d < -1.0E-7d) {
                                double[] dArr4 = this.e[i2 - 1];
                                int i7 = i3 - 1;
                                dArr4[i7] = dArr4[i7] + 360.0d;
                            }
                        }
                    }
                    i = i2 + 1;
                } else {
                    return this.d;
                }
            }
        } else {
            throw new IllegalArgumentException("Weber Local Descriptor only works in grayscale images.");
        }
    }

    public FastBitmap toFastBitmap() {
        FastBitmap fastBitmap = new FastBitmap(this.d[0].length, this.d.length, FastBitmap.ColorSpace.Grayscale);
        for (int i = 0; i < this.d.length; i++) {
            for (int i2 = 0; i2 < this.d[0].length; i2++) {
                fastBitmap.setGray(i, i2, (int) ((255.0d * (this.d[i][i2] - (-1.5707963267948966d))) / 3.141592653589793d));
            }
        }
        return fastBitmap;
    }
}
