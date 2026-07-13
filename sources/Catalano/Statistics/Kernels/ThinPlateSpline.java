package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class ThinPlateSpline implements IMercerKernel<double[]> {
    private double a = 1.0d;

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = Math.max(1.0d, d);
    }

    public ThinPlateSpline() {
    }

    public ThinPlateSpline(double d) {
        setSigma(d);
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return (d / (this.a * this.a)) * Math.log(Math.sqrt(d) / this.a);
    }
}
