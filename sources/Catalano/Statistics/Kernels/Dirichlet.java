package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Dirichlet implements IMercerKernel<double[]> {
    private int a;

    public int getDimension() {
        return this.a;
    }

    public void setDimension(int i) {
        this.a = i;
    }

    public Dirichlet(int i) {
        this.a = i;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double dSin = 1.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d = dArr[i] - dArr2[i];
            dSin *= Math.sin((((double) this.a) + 0.5d) * d) / (Math.sin(d / 2.0d) * 2.0d);
        }
        return dSin;
    }
}
