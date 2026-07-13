package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Cauchy implements IMercerKernel<double[]> {
    private double a;

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = d;
    }

    public Cauchy() {
        this.a = 1.0d;
    }

    public Cauchy(double d) {
        this.a = d;
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
        return 1.0d / ((d / this.a) + 1.0d);
    }
}
