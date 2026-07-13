package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Polynomial implements IMercerKernel<double[]> {
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

    public Polynomial() {
        this(2);
    }

    public Polynomial(int i) {
        this(i, 1.0d);
    }

    public Polynomial(int i, double d) {
        setDegree(i);
        this.b = d;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = this.b;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
        }
        return Math.pow(d, this.a);
    }
}
