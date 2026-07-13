package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class RationalQuadratic implements IMercerKernel<double[]> {
    private double a;

    public double getConstant() {
        return this.a;
    }

    public void setConstant(double d) {
        this.a = d;
    }

    public RationalQuadratic() {
        this(1.0d);
    }

    public RationalQuadratic(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return 1.0d - (d / (d - this.a));
    }
}
