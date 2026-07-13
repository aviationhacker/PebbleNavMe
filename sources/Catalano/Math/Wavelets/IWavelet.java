package Catalano.Math.Wavelets;

/* JADX INFO: loaded from: classes.dex */
public interface IWavelet {
    void Backward(double[] dArr);

    void Backward(double[][] dArr);

    void Forward(double[] dArr);

    void Forward(double[][] dArr);
}
