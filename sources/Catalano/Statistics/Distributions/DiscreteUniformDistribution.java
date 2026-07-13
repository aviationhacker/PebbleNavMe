package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class DiscreteUniformDistribution implements IDiscreteDistribution {
    private int a;
    private int b;
    private int c;

    public double getMinimum() {
        return this.a;
    }

    public double getMaximum() {
        return this.a;
    }

    public double getLength() {
        return this.c;
    }

    public DiscreteUniformDistribution(int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException("The starting number a must be lower than b.");
        }
        this.a = i;
        this.b = i2;
        this.c = (i2 - i) + 1;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Mean() {
        return ((double) (this.a + this.b)) / 2.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Variance() {
        return ((double) ((this.b - this.a) * (this.b - this.a))) / 12.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Entropy() {
        return Math.log(this.b - this.a);
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double DistributionFunction(int i) {
        if (i < this.a) {
            return 0.0d;
        }
        if (i < this.b) {
            return (1.0d + ((double) (i - this.a))) / ((double) this.c);
        }
        return 1.0d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double ProbabilityMassFunction(int i) {
        if (i < this.a || i > this.b) {
            return 0.0d;
        }
        return 1.0d / ((double) this.c);
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double LogProbabilityMassFunction(int i) {
        if (i < this.a || i > this.b) {
            return Double.NEGATIVE_INFINITY;
        }
        return -Math.log(this.c);
    }
}
