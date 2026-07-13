package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class TStudent implements IMercerKernel<double[]> {
    private int a;

    public int getDegree() {
        return this.a;
    }

    public void setDegree(int i) {
        this.a = i;
    }

    public TStudent() {
    }

    public TStudent(int i) {
        this.a = i;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return 1.0d / (Math.pow(Math.sqrt(d), this.a) + 1.0d);
    }
}
