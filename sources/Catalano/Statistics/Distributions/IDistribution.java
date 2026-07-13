package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public interface IDistribution {
    double DistributionFunction(double d);

    double Entropy();

    double LogProbabilityDensityFunction(double d);

    double Mean();

    double ProbabilityDensityFunction(double d);

    double Variance();
}
