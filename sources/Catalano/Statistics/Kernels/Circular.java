package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Circular implements IMercerKernel<double[]> {
    private final double a = 0.6366197723675814d;
    private double b;

    public double getSigma() {
        return this.b;
    }

    public void setSigma(double d) {
        this.b = d;
    }

    public Circular(double d) {
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
        if (dSqrt >= this.b) {
            return 0.0d;
        }
        double d3 = dSqrt / this.b;
        return (Math.acos(-d3) * 0.6366197723675814d) - (Math.sqrt(1.0d - (d3 * d3)) * (0.6366197723675814d * d3));
    }
}
