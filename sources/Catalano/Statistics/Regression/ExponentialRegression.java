package Catalano.Statistics.Regression;

import Catalano.Math.Matrix;
import Catalano.Statistics.Correlations;
import Catalano.Statistics.Tools;

/* JADX INFO: loaded from: classes.dex */
public class ExponentialRegression implements ILinear, ISimpleRegression {
    private double[] a;
    private double[] b;
    private double c;
    private double d;

    public ExponentialRegression(double[] dArr, double[] dArr2) {
        this.a = dArr;
        this.b = dArr2;
        double[] dArrLog = Matrix.Log(dArr2);
        this.c = Tools.Inclination(dArr, dArrLog);
        this.d = Math.exp(Tools.Interception(dArr, dArrLog));
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
        return this.d * Math.exp(this.c * d);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double[] Regression(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = this.d * Math.exp(this.d * dArr[i]);
        }
        return dArr2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double CoefficientOfDetermination() {
        return Math.pow(Correlations.PearsonCorrelation(Regression(this.a), this.b), 2.0d);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public String toString() {
        return "y = " + String.format("%.4f", Double.valueOf(this.d)) + "exp(" + String.format("%.4f", Double.valueOf(this.c)) + "x)";
    }
}
