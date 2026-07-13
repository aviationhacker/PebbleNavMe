package Catalano.Statistics.Distributions;

import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class LognormalDistribution implements IDistribution {
    private double a = 0.0d;
    private double b = 1.0d;
    private Double c;
    private Double d;
    private Double e;
    private double f;
    private double g;

    public LognormalDistribution() {
        a(this.a, this.b, this.b * this.b);
    }

    public LognormalDistribution(double d) {
        a(d, this.b, this.b * this.b);
    }

    public LognormalDistribution(double d, double d2) {
        a(d, d2, d2 * d2);
    }

    private void a(double d, double d2, double d3) {
        this.a = d;
        this.b = d2;
        this.f = d3;
        this.g = 1.0d / (2.5066282746310007d * d2);
    }

    public double getShape() {
        return this.b;
    }

    public double getLocation() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        if (this.c == null) {
            this.c = Double.valueOf(Math.exp(this.a + (this.f / 2.0d)));
        }
        return this.c.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        if (this.d == null) {
            this.d = Double.valueOf((Math.exp(this.f) - 1.0d) * Math.exp((2.0d * this.a) + this.f));
        }
        return this.d.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        if (this.e == null) {
            this.e = Double.valueOf((Math.log(6.283185307179586d * this.f) * 0.5d) + 0.5d + this.a);
        }
        return this.e.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Special.Erfc((-((Math.log(d) - this.a) / this.b)) / 1.4142135623730951d) * 0.5d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double dLog = (Math.log(d) - this.a) / this.b;
        return (Math.exp((dLog * (-dLog)) * 0.5d) * this.g) / d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double dLog = (Math.log(d) - this.a) / this.b;
        return (((dLog * (-dLog)) * 0.5d) + Math.log(this.g)) - Math.log(d);
    }
}
