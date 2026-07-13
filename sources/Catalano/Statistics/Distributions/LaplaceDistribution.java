package Catalano.Statistics.Distributions;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class LaplaceDistribution implements IDistribution {
    private double a;
    private double b;
    private double c;

    public LaplaceDistribution(double d, double d2) {
        if (d2 <= 0.0d) {
            try {
                throw new Exception("Scale must be non-negative.");
            } catch (Exception e) {
                Logger.getLogger(LaplaceDistribution.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            }
        }
        this.a = d;
        this.b = d2;
        this.c = 1.0d / (2.0d * this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Mean() {
        return this.a;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Variance() {
        return 2.0d * this.b * this.b;
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double Entropy() {
        return Math.log(5.43656365691809d * this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double DistributionFunction(double d) {
        return 0.5d * ((Math.signum(d - this.a) * (1.0d - Math.exp((-Math.abs(d - this.a)) / this.b))) + 1.0d);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double ProbabilityDensityFunction(double d) {
        return this.c * Math.exp((-Math.abs(d - this.a)) / this.b);
    }

    @Override // Catalano.Statistics.Distributions.IDistribution
    public double LogProbabilityDensityFunction(double d) {
        return Math.log(this.c) - (Math.abs(d - this.a) / this.b);
    }
}
