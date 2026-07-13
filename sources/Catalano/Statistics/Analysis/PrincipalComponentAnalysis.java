package Catalano.Statistics.Analysis;

import Catalano.Math.Decompositions.SingularValueDecomposition;
import Catalano.Math.Matrix;
import Catalano.Statistics.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class PrincipalComponentAnalysis {
    private double[][] a;
    private double[] b;
    private double[] c;
    private double[] d;
    private double[][] e;
    private double[] f;
    private double[][] g;
    private AnalysisMethod h;

    public enum AnalysisMethod {
        Standartize,
        Center
    }

    public double[][] getResult() {
        return this.g;
    }

    public double[][] getEigenVectors() {
        return this.e;
    }

    public PrincipalComponentAnalysis(double[][] dArr) {
        this(dArr, AnalysisMethod.Center);
    }

    public PrincipalComponentAnalysis(double[][] dArr, AnalysisMethod analysisMethod) {
        this.a = dArr;
        this.h = analysisMethod;
    }

    public void Compute() {
        this.b = new double[this.a[0].length];
        this.c = new double[this.a[0].length];
        int length = this.a[0].length;
        for (int i = 0; i < length; i++) {
            double[] column = Matrix.getColumn(this.a, i);
            this.b[i] = Tools.Mean(column);
            this.c[i] = Tools.StandartDeviation(column, this.b[i]);
        }
        double[][] dArrA = a(this.a, this.b);
        if (this.h == AnalysisMethod.Standartize) {
            for (double[] dArr : dArrA) {
                for (int i2 = 0; i2 < dArrA[0].length; i2++) {
                    dArr[i2] = dArr[i2] / this.c[i2];
                }
            }
        }
        SingularValueDecomposition singularValueDecomposition = new SingularValueDecomposition(dArrA);
        this.d = singularValueDecomposition.getSingularValues();
        this.e = singularValueDecomposition.getV();
        this.g = Matrix.MultiplyByDiagonal(singularValueDecomposition.getU(), this.d);
        this.f = new double[this.d.length];
        for (int i3 = 0; i3 < this.d.length; i3++) {
            this.f[i3] = (this.d[i3] * this.d[i3]) / ((double) (this.a.length - 1));
        }
        a();
    }

    private void a() {
    }

    private double[][] a(double[][] dArr, double[] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr3.length; i++) {
            for (int i2 = 0; i2 < dArr3[0].length; i2++) {
                dArr3[i][i2] = dArr[i][i2] - dArr2[i2];
            }
        }
        return dArr3;
    }
}
