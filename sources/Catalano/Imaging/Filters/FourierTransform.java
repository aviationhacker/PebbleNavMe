package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.ComplexNumber;
import Catalano.Math.Tools;
import Catalano.Math.Transforms.FourierTransform;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class FourierTransform {
    private ComplexNumber[][] a;
    private int b;
    private int c;
    private boolean d = false;

    public FourierTransform(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.b = fastBitmap.getWidth();
            this.c = fastBitmap.getHeight();
            this.a = (ComplexNumber[][]) Array.newInstance((Class<?>) ComplexNumber.class, this.c, this.b);
            for (int i = 0; i < this.c; i++) {
                for (int i2 = 0; i2 < this.b; i2++) {
                    this.a[i][i2] = new ComplexNumber(0.0d, 0.0d);
                    this.a[i][i2].real = fastBitmap.getGray(i, i2);
                }
            }
            return;
        }
        try {
            throw new Exception("FourierTransform works only with Grayscale images");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getWidth() {
        return this.b;
    }

    public int getHeight() {
        return this.c;
    }

    public ComplexNumber[][] getData() {
        return this.a;
    }

    public void setData(ComplexNumber[][] complexNumberArr) {
        this.a = complexNumberArr;
    }

    public boolean isFourierTransformed() {
        return this.d;
    }

    public FastBitmap toFastBitmap() {
        FastBitmap fastBitmap = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.Grayscale);
        if (this.d) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.c, this.b);
            double d = Double.MAX_VALUE;
            double d2 = -1.7976931348623157E308d;
            int i = 0;
            while (i < this.c) {
                double d3 = d;
                for (int i2 = 0; i2 < this.b; i2++) {
                    dArr[i][i2] = Math.log(this.a[i][i2].getMagnitude() + 1.0d);
                    if (dArr[i][i2] < d3) {
                        d3 = dArr[i][i2];
                    }
                    if (dArr[i][i2] > d2) {
                        d2 = dArr[i][i2];
                    }
                }
                i++;
                d = d3;
            }
            for (int i3 = 0; i3 < this.c; i3++) {
                for (int i4 = 0; i4 < this.b; i4++) {
                    fastBitmap.setGray(i3, i4, (int) Tools.Scale(d, d2, 0.0d, 255.0d, dArr[i3][i4]));
                }
            }
        } else {
            for (int i5 = 0; i5 < this.c; i5++) {
                for (int i6 = 0; i6 < this.b; i6++) {
                    int i7 = (int) this.a[i5][i6].real;
                    if (i7 > 255) {
                        i7 = 255;
                    }
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    fastBitmap.setGray(i5, i6, i7);
                }
            }
        }
        return fastBitmap;
    }

    public void Forward() {
        if (!this.d) {
            for (int i = 0; i < this.c; i++) {
                for (int i2 = 0; i2 < this.b; i2++) {
                    if (((i + i2) & 1) != 0) {
                        this.a[i][i2].real *= -1.0d;
                        this.a[i][i2].imaginary *= -1.0d;
                    }
                }
            }
            Catalano.Math.Transforms.FourierTransform.FFT2(this.a, FourierTransform.Direction.Forward);
            this.d = true;
        }
    }

    public void Backward() {
        if (this.d) {
            Catalano.Math.Transforms.FourierTransform.FFT2(this.a, FourierTransform.Direction.Backward);
            this.d = false;
            for (int i = 0; i < this.c; i++) {
                for (int i2 = 0; i2 < this.b; i2++) {
                    if (((i + i2) & 1) != 0) {
                        this.a[i][i2].real *= -1.0d;
                        this.a[i][i2].imaginary *= -1.0d;
                    }
                }
            }
        }
    }
}
