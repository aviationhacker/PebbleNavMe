package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Linear implements IMercerKernel<double[]> {
    private double a;

    public Linear(double d) {
        this.a = d;
    }

    public Linear() {
        this.a = 1.0d;
    }

    public double getConstant() {
        return this.a;
    }

    public void setConstant(double d) {
        this.a = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = this.a;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
        }
        return d;
    }
}
