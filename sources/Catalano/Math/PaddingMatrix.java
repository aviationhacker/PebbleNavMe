package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class PaddingMatrix {
    private int a;
    private int b;
    private double c;
    private boolean d;

    public PaddingMatrix(int i, int i2) {
        this(i, i2, 0.0d);
    }

    public PaddingMatrix(int i, int i2, double d) {
        this.a = i;
        this.b = i2;
        this.c = d;
    }

    public PaddingMatrix(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.d = z;
    }

    public double[][] Create(double[][] dArr) {
        if (this.d) {
            double[][] dArrCreateMatrix2D = Matrix.CreateMatrix2D(dArr.length + (this.a * 2), dArr[0].length + (this.b * 2), this.c);
            for (int i = 0; i < dArrCreateMatrix2D.length; i++) {
                int i2 = i - this.a;
                for (int i3 = 0; i3 < dArrCreateMatrix2D[0].length; i3++) {
                    int i4 = i3 - this.b;
                    if (i2 >= 0 && i2 < dArr.length && i4 >= 0 && i4 < dArr[0].length) {
                        dArrCreateMatrix2D[i][i3] = dArr[i2][i4];
                    } else {
                        int i5 = i2 < 0 ? 0 : i2;
                        int length = i5 >= dArr.length ? dArr.length - 1 : i5;
                        int length2 = i4 < 0 ? 0 : i4;
                        if (length2 >= dArr[0].length) {
                            length2 = dArr[0].length - 1;
                        }
                        dArrCreateMatrix2D[i][i3] = dArr[length][length2];
                    }
                }
            }
            return dArrCreateMatrix2D;
        }
        double[][] dArrCreateMatrix2D2 = Matrix.CreateMatrix2D(dArr.length + (this.a * 2), dArr[0].length + (this.b * 2), this.c);
        for (int i6 = 0; i6 < dArr.length; i6++) {
            System.arraycopy(dArr[i6], 0, dArrCreateMatrix2D2[this.a + i6], this.b, dArr[0].length);
        }
        return dArrCreateMatrix2D2;
    }
}
