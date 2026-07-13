package Catalano.Statistics.Regression;

/* JADX INFO: loaded from: classes.dex */
public interface ISimpleRegression {
    double CoefficientOfDetermination();

    double Regression(double d);

    double[] Regression(double[] dArr);

    String toString();
}
