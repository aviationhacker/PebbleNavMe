package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Normal;
import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class NormalDistribution implements IDistribution {
    private Double c;
    private double e;
    private double a = 0.0d;
    private double b = 1.0d;
    private double d = 1.0d;
    private final double f = 1.9599639845400543d;

    public NormalDistribution() {
        a(this.a, this.b, this.b * this.b);
    }

    public NormalDistribution(double d) {
        a(d, this.b, this.b * this.b);
    }

    public NormalDistribution(double d, double d2) {
        if (d2 <= 0.0d) {
            try {
                throw new IllegalArgumentException("Standard deviation must be positive.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        a(d, d2, d2 * d2);
    }

    private void a(double d, double d2, double d3) {
        this.a = d;
        this.b = d2;
        this.d = d3;
        this.e = -Math.log(2.5066282746310007d * d2);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return this.d;
    }

    public double StandartDeviation() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        if (this.c == null) {
            this.c = Double.valueOf(0.5d * (Math.log(6.283185307179586d * this.d) + 1.0d));
        }
        return this.c.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Special.Erfc((-((d - this.a) / this.b)) / 1.4142135623730951d) * 0.5d;
    }

    public double InverseDistributionFunction(double d) {
        return this.a + (this.b * Normal.Inverse(d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double d2 = (d - this.a) / this.b;
        return Math.exp(this.e - ((d2 * d2) * 0.5d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double d2 = (d - this.a) / this.b;
        return this.e - ((d2 * d2) * 0.5d);
    }

    public double ZScore(double d) {
        return (d - this.a) / this.b;
    }
}
