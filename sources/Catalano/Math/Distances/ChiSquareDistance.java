package Catalano.Math.Distances;

/* JADX INFO: loaded from: classes.dex */
public class ChiSquareDistance implements IDistance<double[]> {
    @Override // Catalano.Math.Distances.IDistance, Catalano.Math.Distances.IDivergence
    public double Compute(double[] dArr, double[] dArr2) {
        double dPow = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d = dArr[i] + dArr2[i];
            if (d != 0.0d) {
                dPow += Math.pow(dArr[i] - dArr2[i], 2.0d) / d;
            }
        }
        return 0.5d * dPow;
    }
}
