package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class ChiSquare implements IMercerKernel<double[]> {
    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            double d3 = 0.5d * (dArr[i] + dArr2[i]);
            if (d3 != 0.0d) {
                d += (d2 * d2) / d3;
            }
        }
        return 1.0d - d;
    }
}
