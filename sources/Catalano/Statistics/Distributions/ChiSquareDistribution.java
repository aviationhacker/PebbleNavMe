package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public class ChiSquareDistribution implements IDistribution {
    private int a;
    private double b;

    public ChiSquareDistribution(int i) {
        this.a = i;
    }

    public int getDegreesOfFreedom() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return 2.0d * ((double) this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        double d = ((double) this.a) / 2.0d;
        double dLog = Math.log(Gamma.Function(d) * 2.0d);
        this.b = d + dLog + ((1.0d - d) * Gamma.Digamma(d));
        return this.b;
    }

    public double ComplementaryDistributionFunction(double d) {
        return Gamma.ComplementedIncomplete(((double) this.a) / 2.0d, d / 2.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Gamma.Incomplete(((double) this.a) / 2.0d, d / 2.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double d2 = this.a;
        return (Math.pow(d, (d2 - 2.0d) / 2.0d) * Math.exp((-d) / 2.0d)) / (Gamma.Function(d2 / 2.0d) * Math.pow(2.0d, d2 / 2.0d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double d2 = this.a;
        return ((((d2 - 2.0d) / 2.0d) * Math.log(d)) + ((-d) / 2.0d)) - (Gamma.Log(d2 / 2.0d) + ((d2 / 2.0d) * Math.log(2.0d)));
    }
}
