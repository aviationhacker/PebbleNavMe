package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class SquaredEuclideanDistance implements IDistance<double[]> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        return Distance.SquaredEuclidean(dArr, dArr2);
    }
}
