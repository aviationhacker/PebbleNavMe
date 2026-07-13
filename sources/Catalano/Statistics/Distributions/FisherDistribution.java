package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Beta;

/* JADX INFO: loaded from: classes.dex */
public class FisherDistribution implements IDistribution {
    private int a;
    private int b;
    private double c;
    private Double d;
    private Double e;

    public FisherDistribution(int i, int i2) {
        if (i <= 0) {
            try {
                throw new IllegalArgumentException("Degrees of freedom must be positive.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (i2 <= 0) {
            try {
                throw new IllegalArgumentException("Degrees of freedom must be positive.");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.a = i;
        this.b = i2;
        this.c = Beta.Function(((double) i) * 0.5d, ((double) i2) * 0.5d);
    }

    public int getDegreesOfFreedom1() {
        return this.a;
    }

    public int getDegreesOfFreedom2() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        if (this.d == null) {
            if (this.b <= 2) {
                this.d = Double.valueOf(Double.NaN);
            } else {
                this.d = Double.valueOf(((double) this.b) / (((double) this.b) - 2.0d));
            }
        }
        return this.d.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        if (this.e == null) {
            if (this.b <= 4) {
                this.e = Double.valueOf(Double.NaN);
            } else {
                this.e = Double.valueOf((((2.0d * ((double) this.b)) * ((double) this.b)) * ((double) ((this.a + this.b) - 2))) / ((double) (((this.a * (this.b - 2)) * (this.b - 2)) * (this.b - 4))));
            }
        }
        return this.e.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported.");
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Beta.Incomplete(((double) this.a) * 0.5d, ((double) this.b) * 0.5d, (((double) this.a) * d) / ((((double) this.a) * d) + ((double) this.b)));
    }

    public double ComplementaryDistributionFunction(double d) {
        return Beta.Incomplete(((double) this.b) * 0.5d, ((double) this.a) * 0.5d, ((double) this.a) / ((((double) this.a) * d) + ((double) this.b)));
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return Math.sqrt((Math.pow(((double) this.a) * d, this.a) * Math.pow(this.b, this.b)) / Math.pow((((double) this.a) * d) + ((double) this.b), this.a + this.b)) / (this.c * d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return ((((((double) this.a) * Math.log(((double) this.a) * d)) + (((double) this.b) * Math.log(this.b))) - (((double) (this.a + this.b)) * Math.log((((double) this.a) * d) + ((double) this.b)))) * 0.5d) - Math.log(this.c * d);
    }
}
