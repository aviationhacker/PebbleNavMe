package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class IntersectionDistance implements IDistance<double[]> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        double dMin = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dMin += Math.min(dArr[i], dArr2[i]);
        }
        return dMin;
    }
}
