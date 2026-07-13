package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class KullbackLeiblerDivergence implements IDivergence<double[]> {
    @Override // Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        return Distance.KullbackLeiblerDivergence(dArr, dArr2);
    }
}
