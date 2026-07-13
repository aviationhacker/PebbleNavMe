package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Gaussian implements IMercerKernel<double[]> {
    private double a;

    public double getGamma() {
        return this.a;
    }

    public void setGamma(double d) {
        this.a = d / 100.0d;
    }

    public Gaussian() {
        this(1.0d);
    }

    public Gaussian(double d) {
        setGamma(d);
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        if (dArr == dArr2) {
            return 1.0d;
        }
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return Math.exp((-this.a) * d);
    }
}
