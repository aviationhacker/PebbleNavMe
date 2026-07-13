package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.Decompositions.SingularValueDecomposition;
import Catalano.Math.Matrix;
import Catalano.Statistics.Tools;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class PrincipalComponentTransform {
    private double[][] a;
    private int b;
    private int c;

    public enum Component {
        Red,
        Green,
        Blue,
        RGB
    }

    public void Compute(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            this.b = fastBitmap.getWidth();
            this.c = fastBitmap.getHeight();
            int size = fastBitmap.getSize();
            this.a = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
            for (int i = 0; i < size; i++) {
                this.a[i][0] = fastBitmap.getRed(i);
                this.a[i][1] = fastBitmap.getGreen(i);
                this.a[i][2] = fastBitmap.getBlue(i);
            }
            this.a = a(this.a, a(this.a));
            this.a = Matrix.Multiply(this.a, new SingularValueDecomposition(this.a, false, true).getV());
            return;
        }
        throw new IllegalArgumentException("Principal Component Transform only works in RGB images.");
    }

    private double[] a(double[][] dArr) {
        double[] dArr2 = new double[dArr[0].length];
        for (int i = 0; i < dArr[0].length; i++) {
            dArr2[i] = Tools.Mean(Matrix.getColumn(dArr, i));
        }
        return dArr2;
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

    public FastBitmap Extract(Component component) {
        if (component == Component.Red) {
            double dMin = Matrix.Min(Matrix.getColumn(this.a, 0));
            double dMax = Matrix.Max(Matrix.getColumn(this.a, 0));
            FastBitmap fastBitmap = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.Grayscale);
            int i = this.b * this.c;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= i) {
                    return fastBitmap;
                }
                fastBitmap.setGray(i3, (int) Catalano.Math.Tools.Scale(dMin, dMax, 0.0d, 255.0d, this.a[i3][0]));
                i2 = i3 + 1;
            }
        } else if (component == Component.Green) {
            double dMin2 = Matrix.Min(Matrix.getColumn(this.a, 1));
            double dMax2 = Matrix.Max(Matrix.getColumn(this.a, 1));
            FastBitmap fastBitmap2 = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.Grayscale);
            int i4 = this.b * this.c;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= i4) {
                    return fastBitmap2;
                }
                fastBitmap2.setGray(i6, (int) Catalano.Math.Tools.Scale(dMin2, dMax2, 0.0d, 255.0d, this.a[i6][1]));
                i5 = i6 + 1;
            }
        } else if (component == Component.Blue) {
            double dMin3 = Matrix.Min(Matrix.getColumn(this.a, 2));
            double dMax3 = Matrix.Max(Matrix.getColumn(this.a, 2));
            FastBitmap fastBitmap3 = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.Grayscale);
            int i7 = this.b * this.c;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i9 >= i7) {
                    return fastBitmap3;
                }
                fastBitmap3.setGray(i9, (int) Catalano.Math.Tools.Scale(dMin3, dMax3, 0.0d, 255.0d, this.a[i9][2]));
                i8 = i9 + 1;
            }
        } else {
            double dMin4 = Matrix.Min(Matrix.getColumn(this.a, 0));
            double dMax4 = Matrix.Max(Matrix.getColumn(this.a, 0));
            double dMin5 = Matrix.Min(Matrix.getColumn(this.a, 1));
            double dMax5 = Matrix.Max(Matrix.getColumn(this.a, 1));
            double dMin6 = Matrix.Min(Matrix.getColumn(this.a, 2));
            double dMax6 = Matrix.Max(Matrix.getColumn(this.a, 2));
            FastBitmap fastBitmap4 = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.RGB);
            int i10 = this.b * this.c;
            int i11 = 0;
            while (true) {
                int i12 = i11;
                if (i12 >= i10) {
                    return fastBitmap4;
                }
                fastBitmap4.setRGB(i12, (int) Catalano.Math.Tools.Scale(dMin4, dMax4, 0.0d, 255.0d, this.a[i12][0]), (int) Catalano.Math.Tools.Scale(dMin5, dMax5, 0.0d, 255.0d, this.a[i12][1]), (int) Catalano.Math.Tools.Scale(dMin6, dMax6, 0.0d, 255.0d, this.a[i12][2]));
                i11 = i12 + 1;
            }
        }
    }
}
