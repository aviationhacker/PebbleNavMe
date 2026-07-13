package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Bessel implements IMercerKernel<double[]> {
    private int a;
    private double b;

    public int getOrder() {
        return this.a;
    }

    public void setOrder(int i) {
        this.a = i;
    }

    public double getSigma() {
        return this.b;
    }

    public void setSigma(double d) {
        this.b = d;
    }

    public Bessel(int i, double d) {
        this.a = i;
        this.b = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        double dSqrt = Math.sqrt(d);
        return Catalano.Math.Functions.Bessel.J(this.a, this.b * dSqrt) / Math.pow(dSqrt, (-dSqrt) * ((double) this.a));
    }
}
