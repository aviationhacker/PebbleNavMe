package Catalano.Math.Wavelets;

/* JADX INFO: loaded from: classes.dex */
public class Haar implements IWavelet {
    private int a;

    public Haar(int i) {
        this.a = 2;
        this.a = i;
    }

    @Override // Catalano.Math.Wavelets.IWavelet
    public void Forward(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        int length = dArr.length >> 1;
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            dArr2[i] = (dArr[i2] * 0.5d) + (dArr[i2 + 1] * 0.5d);
            dArr2[i + length] = (dArr[i2] * 0.5d) + (dArr[i2 + 1] * (-0.5d));
        }
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    @Override // Catalano.Math.Wavelets.IWavelet
    public void Forward(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        for (int i = 0; i < this.a; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                for (int i3 = 0; i3 < dArr2.length; i3++) {
                    dArr2[i3] = dArr[i2][i3];
                }
                Forward(dArr2);
                for (int i4 = 0; i4 < dArr2.length; i4++) {
                    dArr[i2][i4] = dArr2[i4];
                }
            }
            for (int i5 = 0; i5 < length2; i5++) {
                for (int i6 = 0; i6 < dArr3.length; i6++) {
                    dArr3[i6] = dArr[i6][i5];
                }
                Forward(dArr3);
                for (int i7 = 0; i7 < dArr3.length; i7++) {
                    dArr[i7][i5] = dArr3[i7];
                }
            }
        }
    }

    @Override // Catalano.Math.Wavelets.IWavelet
    public void Backward(double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        int length = dArr.length >> 1;
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            dArr2[i2] = ((dArr[i] * 0.5d) + (dArr[i + length] * 0.5d)) / 0.5d;
            dArr2[i2 + 1] = ((dArr[i] * 0.5d) + (dArr[i + length] * (-0.5d))) / 0.5d;
        }
        for (int i3 = 0; i3 < dArr.length; i3++) {
            dArr[i3] = dArr2[i3];
        }
    }

    @Override // Catalano.Math.Wavelets.IWavelet
    public void Backward(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        for (int i = 0; i < this.a; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                for (int i3 = 0; i3 < dArr2.length; i3++) {
                    dArr3[i3] = dArr[i3][i2];
                }
                Backward(dArr3);
                for (int i4 = 0; i4 < dArr3.length; i4++) {
                    dArr[i4][i2] = dArr3[i4];
                }
            }
            for (int i5 = 0; i5 < length; i5++) {
                for (int i6 = 0; i6 < dArr2.length; i6++) {
                    dArr2[i6] = dArr[i5][i6];
                }
                Backward(dArr2);
                for (int i7 = 0; i7 < dArr2.length; i7++) {
                    dArr[i5][i7] = dArr2[i7];
                }
            }
        }
    }
}
