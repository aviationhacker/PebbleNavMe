package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public class WeibullDistribution implements IDistribution {
    private double a;
    private double b;

    public WeibullDistribution(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.b * Gamma.Function((1.0d / this.a) + 1.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return ((this.b * this.b) * Gamma.Function(1.0d + (2.0d / this.a))) - (Mean() * Mean());
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return (0.5772156649015329d * (1.0d - (1.0d / this.a))) + Math.log(this.b / this.a) + 1.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        if (d > 0.0d) {
            return 1.0d - Math.exp(-Math.pow(d / this.b, this.a));
        }
        return d == 0.0d ? Double.POSITIVE_INFINITY : 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        if (d > 0.0d) {
            return (this.a / this.b) * Math.pow(d / this.b, this.a - 1.0d) * Math.exp(-Math.pow(d / this.b, this.a));
        }
        return 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        if (d >= 0.0d) {
            return (Math.log(this.a / this.b) + ((this.a - 1.0d) * Math.log(d / this.b))) - Math.pow(d / this.b, this.a);
        }
        return Double.NEGATIVE_INFINITY;
    }
}
