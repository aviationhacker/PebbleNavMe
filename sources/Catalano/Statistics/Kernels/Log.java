package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Log implements IMercerKernel<double[]> {
    private double a;

    public double getDegree() {
        return this.a;
    }

    public void setDegree(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return -Math.log(Math.pow(d, this.a / 2.0d) + 1.0d);
    }
}
