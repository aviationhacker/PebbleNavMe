package Catalano.Math.Functions;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Gaussian {
    private double a = 1.0d;
    private double b = 1.0d;

    public Gaussian(double d) {
        setSigma(d);
    }

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = Math.max(1.0E-8d, d);
        this.b = d * d;
    }

    public double Function1D(double d) {
        return Math.exp((d * d) / ((-2.0d) * this.b)) / (Math.sqrt(6.283185307179586d) * this.a);
    }

    public double Function2D(double d, double d2) {
        return Math.exp((-((d * d) + (d2 * d2))) / (2.0d * this.b));
    }

    public double[] Kernel1D(int i) {
        if (i % 2 == 0 || i < 3 || i > 101) {
            try {
                throw new Exception("Wrong size");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        double[] dArr = new double[i];
        int i2 = -(i / 2);
        for (int i3 = 0; i3 < i; i3++) {
            dArr[i3] = Function1D(i2);
            i2++;
        }
        return dArr;
    }

    public double[][] Kernel2D(int i) {
        if (i % 2 == 0 || i < 3 || i > 101) {
            try {
                throw new Exception("Wrong size");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int i2 = i / 2;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i);
        double d = 0.0d;
        int i3 = 0;
        int i4 = -i2;
        while (i3 < i) {
            int i5 = -i2;
            for (int i6 = 0; i6 < i; i6++) {
                dArr[i3][i6] = Function2D(i5, i4);
                d += dArr[i3][i6];
                i5++;
            }
            i3++;
            i4++;
        }
        for (double[] dArr2 : dArr) {
            for (int i7 = 0; i7 < dArr[0].length; i7++) {
                dArr2[i7] = dArr2[i7] / d;
            }
        }
        return dArr;
    }
}
