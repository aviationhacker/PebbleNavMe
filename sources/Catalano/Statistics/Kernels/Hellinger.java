package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Hellinger implements IMercerKernel<double[]> {
    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double dSqrt = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dSqrt += Math.sqrt(dArr[i] * dArr2[i]);
        }
        return dSqrt;
    }
}
