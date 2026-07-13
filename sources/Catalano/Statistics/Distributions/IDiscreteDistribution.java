package Catalano.Statistics.Distributions;

/* JADX INFO: loaded from: classes.dex */
public interface IDiscreteDistribution {
    double DistributionFunction(int i);

    double Entropy();

    double LogProbabilityMassFunction(int i);

    double Mean();

    double ProbabilityMassFunction(int i);

    double Variance();
}
