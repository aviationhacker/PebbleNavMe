package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Spherical implements IMercerKernel<double[]> {
    private double a;

    public double getSigma() {
        return this.a;
    }

    public void setDegree(double d) {
        this.a = d;
    }

    public Spherical() {
    }

    public Spherical(double d) {
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
        if (dSqrt >= this.a) {
            return 0.0d;
        }
        double d3 = dSqrt / this.a;
        return (1.0d - (1.5d * d3)) + (d3 * 0.5d * d3 * d3);
    }
}
