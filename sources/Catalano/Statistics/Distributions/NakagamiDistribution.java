package Catalano.Statistics.Distributions;

import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public class NakagamiDistribution implements IDistribution {
    private double a;
    private double b;
    private Double c;
    private Double d;
    private double e;
    private double f;
    private double g;

    public NakagamiDistribution(double d, double d2) {
        if (d < 0.5d) {
            try {
                throw new IllegalArgumentException("Shape parameter (mu) should be greater than or equal to 0.5.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (d2 <= 0.0d) {
            try {
                throw new IllegalArgumentException("Spread parameter (omega) should be greater than 0.");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.a = d;
        this.b = d2;
        a(d, d2);
    }

    private void a(double d, double d2) {
        double dPow = Math.pow(d, d) * 2.0d;
        double dFunction = Gamma.Function(d);
        double dPow2 = Math.pow(d2, d);
        this.f = (-d) / d2;
        this.g = (2.0d * d) - 1.0d;
        this.e = dPow / (dFunction * dPow2);
        this.c = null;
        this.d = null;
    }

    public double getShape() {
        return this.a;
    }

    public double getSpread() {
        return this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        if (this.c == null) {
            this.c = Double.valueOf((Gamma.Function(this.a + 0.5d) / Gamma.Function(this.a)) * Math.sqrt(this.b / this.a));
        }
        return this.c.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        if (this.d == null) {
            double dFunction = Gamma.Function(this.a + 0.5d) / Gamma.Function(this.a);
            this.d = Double.valueOf((1.0d - ((dFunction * dFunction) * (1.0d / this.a))) * this.b);
        }
        return this.d.doubleValue();
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        throw new UnsupportedOperationException("Not supported.");
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return Gamma.LowerIncomplete(this.a, (this.a / this.b) * d * d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return this.e * Math.pow(d, this.g) * Math.exp(this.f * d * d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return Math.log(this.e) + (this.g * Math.log(d)) + (this.f * d * d);
    }
}
