package Catalano.Statistics.Regression;

import Catalano.Math.Matrix;
import Catalano.Statistics.Correlations;
import Catalano.Statistics.Tools;

/* JADX INFO: loaded from: classes.dex */
public class PowerRegression implements ILinear, ISimpleRegression {
    private double[] a;
    private double[] b;
    private double c;
    private double d;

    public PowerRegression(double[] dArr, double[] dArr2) {
        this.a = dArr;
        this.b = dArr2;
        double[] dArrLog = Matrix.Log(dArr);
        double[] dArrLog2 = Matrix.Log(dArr2);
        this.c = Tools.Inclination(dArrLog, dArrLog2);
        this.d = Math.exp(Tools.Interception(dArrLog, dArrLog2));
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
        return this.d * Math.pow(d, this.c);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double[] Regression(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = this.d * Math.pow(dArr[i], this.c);
        }
        return dArr2;
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public double CoefficientOfDetermination() {
        return Math.pow(Correlations.PearsonCorrelation(Regression(this.a), this.b), 2.0d);
    }

    @Override // Catalano.Statistics.Regression.ISimpleRegression
    public String toString() {
        return "y = " + String.format("%.4f", Double.valueOf(this.d)) + "x^" + String.format("%.4f", Double.valueOf(this.c));
    }
}
