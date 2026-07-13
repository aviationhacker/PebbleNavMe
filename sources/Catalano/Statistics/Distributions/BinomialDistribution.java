package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Beta;
import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class BinomialDistribution implements IDiscreteDistribution {
    private int a;
    private double b;

    public int getNumberOfTrials() {
        return this.a;
    }

    public double getProbability() {
        return this.b;
    }

    public BinomialDistribution(int i) {
        this(i, 0.0d);
    }

    public BinomialDistribution(int i, double d) {
        if (i <= 0) {
            throw new IllegalArgumentException("The number of trials should be greater than zero.");
        }
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException("A probability must be between 0 and 1.");
        }
        this.a = i;
        this.b = d;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Mean() {
        return ((double) this.a) * this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Variance() {
        return ((double) this.a) * this.b * (1.0d - this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double DistributionFunction(int i) {
        return Beta.Incomplete(this.a - i, i + 1, 1.0d - this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double ProbabilityMassFunction(int i) {
        if (i < 0 || i > this.a) {
            return 0.0d;
        }
        return Special.Binomial(this.a, i) * Math.pow(this.b, i) * Math.pow(1.0d - this.b, this.a - i);
    }

    @Override // Catalano.Statistics.Distributions.IDiscreteDistribution
    public double LogProbabilityMassFunction(int i) {
        if (i < 0 || i > this.a) {
            return Double.NEGATIVE_INFINITY;
        }
        return Special.LogBinomial(this.a, i) + (((double) i) * Math.log(this.b)) + (((double) (this.a - i)) * Math.log(1.0d - this.b));
    }
}
