package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class SymmetricTriangle implements IMercerKernel<double[]> {
    private double a;

    public double getGamma() {
        return this.a;
    }

    public void setGamma(double d) {
        this.a = d;
    }

    public SymmetricTriangle() {
    }

    public SymmetricTriangle(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        double dSqrt = 1.0d - (Math.sqrt(d) * this.a);
        if (dSqrt > 0.0d) {
            return dSqrt;
        }
        return 0.0d;
    }
}
