package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class ExponentialDistribution implements IDistribution {
    private double a;
    private double b;

    public ExponentialDistribution(double d) {
        this.a = d;
        this.b = Math.log(d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return 1.0d / this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return 1.0d / (this.a * this.a);
    }

    public double Median() {
        return Math.log(2.0d) / this.a;
    }

    public double Mode() {
        return 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return 1.0d - Math.log(this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return 1.0d - Math.exp((-this.a) * d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return this.a * Math.exp((-this.a) * d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return this.b - (this.a * d);
    }
}
