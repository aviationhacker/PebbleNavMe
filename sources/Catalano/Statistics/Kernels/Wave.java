package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Wave implements IMercerKernel<double[]> {
    private double a;

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = d;
    }

    public Wave(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        double dSqrt = Math.sqrt(d);
        if (this.a == 0.0d || dSqrt == 0.0d) {
            return 0.0d;
        }
        return (this.a / dSqrt) * Math.sin(dSqrt / this.a);
    }
}
