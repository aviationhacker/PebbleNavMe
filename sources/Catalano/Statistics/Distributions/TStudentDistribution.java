package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Beta;
import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public class TStudentDistribution implements IDistribution {
    private double a;
    private double b;

    public double getDegreesOfFreedom() {
        return this.b;
    }

    public void setDegreesOfFreedom(double d) {
        this.b = d;
    }

    public TStudentDistribution(double d) {
        if (d < 1.0d) {
            try {
                throw new IllegalArgumentException("degreesOfFreedom");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.b = d;
        this.a = Gamma.Function((d + 1.0d) / 2.0d) / (Math.sqrt(3.141592653589793d * d) * Gamma.Function(d / 2.0d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.b > 1.0d ? 0.0d : Double.NaN;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        if (this.b > 2.0d) {
            return this.b / (this.b - 2.0d);
        }
        if (this.b > 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return Double.NaN;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported.");
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        double d2 = this.b;
        double dSqrt = Math.sqrt((d * d) + d2);
        return Beta.Incomplete(d2 / 2.0d, d2 / 2.0d, (d + dSqrt) / (dSqrt * 2.0d));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double d2 = this.b;
        return Math.pow(((d * d) / this.b) + 1.0d, (-(d2 + 1.0d)) / 2.0d) * this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return Math.log(this.a) - (((this.b + 1.0d) / 2.0d) * Math.log(((d * d) / this.b) + 1.0d));
    }
}
