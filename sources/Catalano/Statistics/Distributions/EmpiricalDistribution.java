package Catalano.Statistics.Distributions;

import Catalano.Statistics.Tools;

/* JADX INFO: loaded from: classes.dex */
public class EmpiricalDistribution implements IDistribution {
    private double[] a;
    private Double b;
    private Double c;
    private Double d;
    private Double e;

    public EmpiricalDistribution(double[] dArr) {
        a(dArr, null);
    }

    public EmpiricalDistribution(double[] dArr, double d) {
        a(dArr, Double.valueOf(d));
    }

    private void a(double[] dArr, Double d) {
        if (d == null) {
            d = Double.valueOf(Tools.StandartDeviation(dArr) * Math.pow(4.0d / (3.0d * ((double) dArr.length)), -0.2d));
        }
        this.a = dArr;
        this.b = Double.valueOf(d.doubleValue());
        this.c = null;
        this.d = null;
    }

    public double[] getSamples() {
        return this.a;
    }

    public double getSmoothing() {
        return this.b.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        if (this.c == null) {
            this.c = Double.valueOf(Tools.Mean(this.a));
        }
        return this.c.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        if (this.d == null) {
            this.d = Double.valueOf(Tools.Variance(this.a));
        }
        return this.d.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        if (this.e == null) {
            this.e = Double.valueOf(0.0d);
            for (int i = 0; i < this.a.length; i++) {
                double dProbabilityDensityFunction = ProbabilityDensityFunction(this.a[i]);
                this.e = Double.valueOf((dProbabilityDensityFunction * Math.log(dProbabilityDensityFunction)) + this.e.doubleValue());
            }
        }
        return this.e.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        int i = 0;
        for (int i2 = 0; i2 < this.a.length; i2++) {
            if (this.a[i2] <= d) {
                i++;
            }
        }
        return ((double) i) / ((double) this.a.length);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double dExp = 0.0d;
        for (int i = 0; i < this.a.length; i++) {
            double dDoubleValue = (d - this.a[i]) / this.b.doubleValue();
            dExp += Math.exp(dDoubleValue * (-dDoubleValue) * 0.5d);
        }
        return ((1.0d / (2.5066282746310007d * this.b.doubleValue())) * dExp) / ((double) this.a.length);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double dExp = 0.0d;
        for (int i = 0; i < this.a.length; i++) {
            double dDoubleValue = (d - this.a[i]) / this.b.doubleValue();
            dExp += Math.exp(dDoubleValue * (-dDoubleValue) * 0.5d);
        }
        return (Math.log(dExp) - Math.log(2.5066282746310007d * this.b.doubleValue())) - Math.log(this.a.length);
    }
}
