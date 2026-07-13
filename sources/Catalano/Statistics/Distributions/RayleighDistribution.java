package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class RayleighDistribution implements IDistribution {
    private double a;

    public RayleighDistribution(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.a * Math.sqrt(1.5707963267948966d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return 0.42920367320510344d * this.a * this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return 1.0d + Math.log(this.a / 1.4142135623730951d) + 0.28860783245076643d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return 1.0d - Math.exp(((-d) * d) / ((2.0d * this.a) * this.a));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return (d / (this.a * this.a)) * Math.exp(((-d) * d) / ((2.0d * this.a) * this.a));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return Math.log(d / (this.a * this.a)) + (((-d) * d) / ((2.0d * this.a) * this.a));
    }
}
