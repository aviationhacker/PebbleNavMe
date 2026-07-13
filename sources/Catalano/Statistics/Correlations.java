package Catalano.Statistics;

/* JADX INFO: loaded from: classes.dex */
public final class Correlations {
    private Correlations() {
    }

    public static double VectorInnerProduct(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * dArr2[i];
        }
        return d;
    }

    public static double Tanimoto(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d3 += dArr[i] * dArr2[i];
            d2 += dArr[i] * dArr[i];
            d += dArr2[i] * dArr2[i];
        }
        return d3 / ((d2 + d) - d3);
    }

    public static double PearsonCorrelation(double[] dArr, double[] dArr2) {
        return PearsonCorrelation(dArr, dArr2, Tools.Mean(dArr), Tools.Mean(dArr2));
    }

    public static double PearsonCorrelation(double[] dArr, double[] dArr2, double d, double d2) {
        double d3 = 0.0d;
        double dPow = 0.0d;
        double dPow2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d3 += (dArr[i] - d) * (dArr2[i] - d2);
            dPow += Math.pow(dArr[i] - d, 2.0d);
            dPow2 += Math.pow(dArr2[i] - d2, 2.0d);
        }
        return d3 / Math.sqrt(dPow * dPow2);
    }

    public static double SpearmanCorrelation(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] - dArr2[i];
        }
        return 1.0d - ((6.0d * d) / (((double) dArr.length) * (Math.pow(dArr.length, 2.0d) - 1.0d)));
    }
}
