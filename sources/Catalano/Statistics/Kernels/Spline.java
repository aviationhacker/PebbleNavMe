package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Spline implements IMercerKernel<double[]> {
    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 1.0d;
        for (int i = 0; i < dArr.length; i++) {
            double dMin = Math.min(dArr[i], dArr2[i]);
            double d2 = dArr[i] * dArr2[i];
            d *= ((dMin * (dMin * dMin)) / 3.0d) + (((d2 * dMin) + (1.0d + d2)) - ((((dArr[i] + dArr2[i]) / 2.0d) * dMin) * dMin));
        }
        return d;
    }
}
