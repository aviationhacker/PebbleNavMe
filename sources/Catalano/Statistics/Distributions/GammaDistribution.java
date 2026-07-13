package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public class GammaDistribution implements IDistribution {
    private double a;
    private double b;
    private double c;
    private double d;

    public GammaDistribution(double d, double d2) {
        this.a = d;
        this.b = d2;
        this.c = 1.0d / (Math.pow(d, d2) * Gamma.Function(d2));
        this.d = -((Math.log(d) * d2) + Gamma.Log(d2));
    }

    public double getScale() {
        return this.a;
    }

    public double getShape() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.b * this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return this.b * this.a * this.a;
    }

    public double Median() {
        return Double.NaN;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return this.b + Math.log(this.a) + Gamma.Log(this.b) + ((1.0d - this.b) * Gamma.Digamma(this.b));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Gamma.LowerIncomplete(this.b, d / this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return this.c * Math.pow(d, this.b - 1.0d) * Math.exp((-d) / this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return (this.d + ((this.b - 1.0d) * Math.log(d))) - (d / this.a);
    }
}
