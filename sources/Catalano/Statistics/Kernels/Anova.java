package Catalano.Statistics.Kernels;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Anova implements IMercerKernel<double[]> {
    private int a;
    private int b;
    private double[][][] c;

    public Anova(int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, i, i, i2);
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                for (int i3 = 0; i3 < this.a; i3++) {
                    this.c[i2][i3][i] = a(dArr, i2, dArr2, i3, i);
                }
            }
        }
        return this.c[this.a - 1][this.a - 1][this.b - 1];
    }

    private double a(double[] dArr, int i, double[] dArr2, int i2, int i3) {
        double d;
        if (i == 0 || i2 == 0) {
            d = 0.0d;
        } else {
            d = this.c[i - 1][i2 - 1][i3];
        }
        double d2 = dArr[i] * dArr2[i2];
        if (i3 == 0) {
            return d + d2;
        }
        return (i == 0 || i2 == 0) ? d : d + (d2 * this.c[i - 1][i2 - 1][i3 - 1]);
    }
}
