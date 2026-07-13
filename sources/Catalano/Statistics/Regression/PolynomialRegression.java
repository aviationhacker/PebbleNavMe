package Catalano.Statistics.Regression;

import Catalano.Math.Decompositions.QRDecomposition;
import Catalano.Statistics.Correlations;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class PolynomialRegression implements ISimpleRegression {
    private double[] a;
    private double[] b;
    private double[][] c;
    private int d;

    public int getDegree() {
        return this.d;
    }

    public void setDegree(int i) {
        this.d = Math.max(i, 2);
    }

    public PolynomialRegression(double[] dArr, double[] dArr2) {
        this(dArr, dArr2, 2);
    }

    public PolynomialRegression(double[] dArr, double[] dArr2, int i) {
        this.d = 2;
        this.a = dArr;
        this.b = dArr2;
        this.d = i;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, i + 1);
        for (int i2 = 0; i2 < dArr.length; i2++) {
            for (int i3 = 0; i3 <= i; i3++) {
                dArr3[i2][i3] = Math.pow(dArr[i2], i3);
            }
        }
        this.c = new QRDecomposition(dArr3).solve(a(dArr2, dArr2.length));
    }

    private double[][] a(double[] dArr, int i) {
        int length = dArr.length;
        int length2 = length != 0 ? dArr.length / length : 0;
        if (length * length2 != dArr.length) {
            throw new IllegalArgumentException("Array length must be a multiple of m.");
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i2 = 0; i2 < length; i2++) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr2[i2][i3] = dArr[(i3 * length) + i2];
            }
        }
        return dArr2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double Regression(double d) {
        double d2 = this.c[0][0];
        double d3 = d;
        for (int i = 1; i < this.c.length; i++) {
            d2 += this.c[i][0] * d3;
            d3 *= d;
        }
        return d2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double[] Regression(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr2.length; i++) {
            dArr2[i] = this.c[0][0];
            double d = dArr[i];
            for (int i2 = 1; i2 < this.c.length; i2++) {
                dArr2[i] = dArr2[i] + (this.c[i2][0] * d);
                d *= dArr[i];
            }
        }
        return dArr2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double CoefficientOfDetermination() {
        return Math.pow(Correlations.PearsonCorrelation(Regression(this.a), this.b), 2.0d);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public String toString() {
        int length = this.c.length - 1;
        String str = "y = ";
        for (int i = 0; i < this.c.length; i++) {
            str = length != 0 ? str + String.format("%.4f", Double.valueOf(this.c[length][0])) + "x^" + length + " " : str + String.format("%.4f", Double.valueOf(this.c[length][0]));
            length--;
        }
        return str;
    }
}
