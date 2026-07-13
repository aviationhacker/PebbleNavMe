package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class BernoulliDistribution implements IDiscreteDistribution {
    private double a;
    private double b;
    private Double c = null;

    public BernoulliDistribution(double d) {
        this.a = d;
        this.b = 1.0d - d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Mean() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Variance() {
        return this.a * this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Entropy() {
        if (this.c == null) {
            this.c = Double.valueOf(((-this.a) * Math.log(this.a)) - (this.b * Math.log(this.b)));
        }
        return this.c.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double DistributionFunction(int i) {
        if (i < 0) {
            return 0.0d;
        }
        if (i >= 1) {
            return 1.0d;
        }
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double ProbabilityMassFunction(int i) {
        if (i == 1) {
            return this.a;
        }
        if (i == 0) {
            return this.b;
        }
        return 0.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double LogProbabilityMassFunction(int i) {
        if (i == 1) {
            return Math.log(this.a);
        }
        if (i == 0) {
            return Math.log(this.b);
        }
        return Double.NEGATIVE_INFINITY;
    }
}
