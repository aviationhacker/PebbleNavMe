package Catalano.Statistics.Regression;

import Catalano.Statistics.Correlations;
import Catalano.Statistics.Tools;

/* JADX INFO: loaded from: classes.dex */
public class LinearRegression implements ILinear, ISimpleRegression {
    private double[] a;
    private double[] b;
    private double c;
    private double d;

    public LinearRegression(double[] dArr, double[] dArr2) {
        this.a = dArr;
        this.b = dArr2;
        this.c = Tools.Inclination(dArr, dArr2);
        this.d = Tools.Interception(dArr, dArr2);
    }

    @Override // Catalano.Statistics.Regression.ILinear
    public double getInclination() {
        return this.c;
    }

    @Override // Catalano.Statistics.Regression.ILinear
    public void setInclination(double d) {
        this.c = d;
    }

    @Override // Catalano.Statistics.Regression.ILinear
    public double getInterception() {
        return this.d;
    }

    @Override // Catalano.Statistics.Regression.ILinear
    public void setInterception(double d) {
        this.d = d;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double Regression(double d) {
        return (this.c * d) + this.d;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double[] Regression(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = (this.c * dArr[i]) + this.d;
        }
        return dArr2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double CoefficientOfDetermination() {
        return Math.pow(Correlations.PearsonCorrelation(this.a, this.b), 2.0d);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public String toString() {
        return this.d >= 0.0d ? "y = " + String.format("%.4f", Double.valueOf(this.c)) + "x + " + String.format("%.4f", Double.valueOf(this.d)) : "y = " + String.format("%.4f", Double.valueOf(this.c)) + "x " + String.format("%.4f", Double.valueOf(this.d));
    }
}
