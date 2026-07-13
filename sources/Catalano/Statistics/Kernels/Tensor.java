package Catalano.Statistics.Kernels;

/* JADX INFO: loaded from: classes.dex */
public class Tensor implements IMercerKernel<double[]> {
    private IMercerKernel<double[]>[] a;

    public Tensor(IMercerKernel<double[]>[] iMercerKernelArr) {
        this.a = iMercerKernelArr;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double dFunction = 1.0d;
        for (int i = 0; i < this.a.length; i++) {
            dFunction *= this.a[i].Function(dArr, dArr2);
        }
        return dFunction;
    }
}
