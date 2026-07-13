package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class BhattacharyyaDistance implements IDistance<double[]> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        return Distance.Bhattacharyya(dArr, dArr2);
    }
}
