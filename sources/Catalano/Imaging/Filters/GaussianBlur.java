package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Functions.Gaussian;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GaussianBlur implements IApplyInPlace {
    private double a;
    private int b;

    public GaussianBlur() {
        this.a = 1.4d;
        this.b = 5;
    }

    public GaussianBlur(double d) {
        this.a = 1.4d;
        this.b = 5;
        this.a = Math.max(0.5d, Math.min(5.0d, d));
    }

    public GaussianBlur(double d, int i) {
        this.a = 1.4d;
        this.b = 5;
        setSigma(d);
        setSize(i);
    }

    public double getSigma() {
        return this.a;
    }

    public void setSigma(double d) {
        this.a = Math.max(0.5d, Math.min(5.0d, d));
    }

    public int getSize() {
        return this.b;
    }

    public void setSize(int i) {
        this.b = Math.max(3, Math.min(21, i | 1));
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Convolution(a()).applyInPlace(fastBitmap);
    }

    private int[][] a() {
        double[][] dArrKernel2D = new Gaussian(this.a).Kernel2D(this.b);
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dArrKernel2D.length, dArrKernel2D[0].length);
        double d = dArrKernel2D[0][0];
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                iArr[i][i2] = (int) (dArrKernel2D[i][i2] / d);
            }
        }
        return iArr;
    }
}
