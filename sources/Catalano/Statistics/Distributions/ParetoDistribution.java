package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class ParetoDistribution implements IDistribution {
    private double a;
    private double b;

    public ParetoDistribution(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return (this.b * this.a) / (this.b - 1.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return ((this.a * this.a) * this.b) / (((this.b - 1.0d) * (this.b - 1.0d)) * (this.b - 2.0d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return Math.log(this.a / this.b) + (1.0d / this.b) + 1.0d;
    }

    public double Mode() {
        return this.a;
    }

    public double Median() {
        return this.a * Math.pow(2.0d, 1.0d / this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        if (d >= this.a) {
            return 1.0d - Math.pow(this.a / d, this.b);
        }
        return 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        if (d >= this.a) {
            return (this.b * Math.pow(this.a, this.b)) / Math.pow(d, this.b + 1.0d);
        }
        return 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        if (d >= this.a) {
            return (Math.log(this.b) + (this.b * Math.log(this.a))) - ((this.b + 1.0d) * Math.log(d));
        }
        return 0.0d;
    }
}
