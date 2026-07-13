package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class NormalizedPolynomial implements IMercerKernel<double[]> {
    private int a;
    private double b;

    public int getDegree() {
        return this.a;
    }

    public void setDegree(int i) {
        this.a = Math.max(1, i);
    }

    public double getConstant() {
        return this.b;
    }

    public void setConstant(double d) {
        this.b = d;
    }

    public NormalizedPolynomial() {
        this(2);
    }

    public NormalizedPolynomial(int i) {
        this(i, 1.0d);
    }

    public NormalizedPolynomial(int i, double d) {
        setDegree(i);
        this.b = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = this.b;
        double d2 = this.b;
        double d3 = this.b;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
            d2 += dArr[i] * dArr[i];
            d3 += dArr2[i] * dArr2[i];
        }
        return Math.pow(d / (d2 + d3), this.a);
    }
}
