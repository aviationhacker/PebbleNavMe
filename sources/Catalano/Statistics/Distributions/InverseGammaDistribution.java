package Catalano.Statistics.Distributions;

import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class InverseGammaDistribution implements IDistribution {
    private double a;
    private double b;

    public InverseGammaDistribution(double d, double d2) {
        if (d <= 0.0d || d2 <= 0.0d) {
            try {
                throw new IllegalArgumentException("Mean or shape must be greater than 0");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.a = d;
        this.b = d2;
    }

    public double getShape() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return ((this.a * this.a) * this.a) / this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        double dSqrt = Math.sqrt(this.b / d);
        return (Special.Erfc((dSqrt * (this.a + d)) / (this.a * 1.4142135623730951d)) * 0.5d * Math.exp((2.0d * this.b) / this.a)) + (Special.Erfc(((this.a - d) * dSqrt) / (this.a * 1.4142135623730951d)) * 0.5d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return Math.sqrt(this.b / (((6.283185307179586d * d) * d) * d)) * Math.exp(((-this.b) * ((d - this.a) * (d - this.a))) / (((2.0d * this.a) * this.a) * d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double dSqrt = Math.sqrt(this.b / (((6.283185307179586d * d) * d) * d));
        return Math.log(dSqrt) + (((-this.b) * ((d - this.a) * (d - this.a))) / (((2.0d * this.a) * this.a) * d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
