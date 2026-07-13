package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class ContinuousUniformDistribution implements IDistribution {
    private double a;
    private double b;

    public ContinuousUniformDistribution() {
        this(0.0d, 1.0d);
    }

    public ContinuousUniformDistribution(double d, double d2) {
        if (d > d2) {
            try {
                throw new IllegalArgumentException("The starting number a must be lower than b.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.a = d;
        this.b = d2;
    }

    public double Length() {
        return this.b - this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return (this.a + this.b) / 2.0d;
    }

    public double Minimum() {
        return this.a;
    }

    public double Maximum() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return ((this.b - this.a) * (this.b - this.a)) / 12.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return Math.log(this.b - this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        if (d < this.a) {
            return 0.0d;
        }
        if (d >= this.b) {
            return 1.0d;
        }
        return (d - this.a) / (this.b - this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        if (d < this.a || d > this.b) {
            return 0.0d;
        }
        return 1.0d / (this.b - this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        if (d < this.a || d > this.b) {
            return Double.NEGATIVE_INFINITY;
        }
        return -Math.log(this.b - this.a);
    }
}
