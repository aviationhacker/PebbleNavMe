package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public class CauchyDistribution implements IDistribution {
    private double a;
    private double b;
    private double c;
    private double d;

    public CauchyDistribution() {
        this(0.0d, 1.0d);
    }

    public CauchyDistribution(double d, double d2) {
        if (d2 < 0.0d) {
            try {
                throw new IllegalArgumentException("Scale must be greater than zero.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        a(d, d2);
    }

    private void a(double d, double d2) {
        this.a = d;
        this.b = d2;
        this.d = 1.0d / (3.141592653589793d * d2);
        this.c = -Math.log(3.141592653589793d * d2);
    }

    public double getScale() {
        return this.b;
    }

    public double getLocation() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return Double.NaN;
    }

    public double Median() {
        return this.a;
    }

    public double Mode() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return Double.NaN;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return Math.log(this.b) + Math.log(12.566370614359172d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return (0.3183098861837907d * Math.atan2(d - this.a, this.b)) + 0.5d;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        double d2 = (d - this.a) / this.b;
        return this.d / ((d2 * d2) + 1.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        double d2 = (d - this.a) / this.b;
        return this.c - Math.log((d2 * d2) + 1.0d);
    }
}
