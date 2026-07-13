package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class HistogramIntersection implements IMercerKernel<double[]> {
    private double a;
    private double b;

    public HistogramIntersection(double d, double d2) {
        this.a = 1.0d;
        this.b = 1.0d;
        this.a = d;
        this.b = d2;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double dMin = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            dMin += Math.min(Math.pow(Math.abs(dArr[i]), this.a), Math.pow(Math.abs(dArr2[i]), this.b));
        }
        return dMin;
    }
}
