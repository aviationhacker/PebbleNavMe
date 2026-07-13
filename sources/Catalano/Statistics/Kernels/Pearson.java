package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Pearson implements IMercerKernel<double[]> {
    private double a;
    private double b;
    private double c;

    public double getOmega() {
        return this.a;
    }

    public void setOmega(double d) {
        this.a = d;
        this.c = (Math.sqrt(Math.pow(2.0d, 1.0d / d) - 1.0d) * 2.0d) / this.b;
    }

    public double getSigma() {
        return this.b;
    }

    public void setSigma(double d) {
        this.b = d;
        this.c = (Math.sqrt(Math.pow(2.0d, 1.0d / this.a) - 1.0d) * 2.0d) / d;
    }

    public Pearson() {
        this(1.0d, 1.0d);
    }

    public Pearson(double d, double d2) {
        setOmega(d);
        setSigma(d2);
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr[i];
            d2 += dArr2[i] * dArr2[i];
            d3 += dArr[i] * dArr2[i];
        }
        double dSqrt = this.c * Math.sqrt((d3 * (-2.0d)) + d + d2);
        return 1.0d / Math.pow((dSqrt * dSqrt) + 1.0d, this.a);
    }
}
