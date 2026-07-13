package Catalano.Statistics.Kernels;

import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class BSpline implements IMercerKernel<double[]> {
    private int a;

    public int getOrder() {
        return this.a;
    }

    public void setOrder(int i) {
        this.a = i;
    }

    public BSpline(int i) {
        this.a = i;
    }

    @Override // Catalano.Statistics.Kernels.IMercerKernel
    public double Function(double[] dArr, double[] dArr2) {
        double dBSpline = 1.0d;
        int i = (this.a * 2) + 1;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dBSpline *= Special.BSpline(i, dArr[i2] - dArr2[i2]);
        }
        return dBSpline;
    }
}
