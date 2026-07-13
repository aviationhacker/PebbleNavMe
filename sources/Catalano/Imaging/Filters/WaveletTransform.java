package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.Tools;
import Catalano.Math.Wavelets.IWavelet;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class WaveletTransform {
    private IWavelet a;
    private int b;
    private int c;
    private boolean d = false;
    private double[][] e;

    public WaveletTransform(IWavelet iWavelet) {
        this.a = iWavelet;
    }

    public double[][] getData() {
        return this.e;
    }

    public void setData(double[][] dArr) {
        this.e = dArr;
    }

    public boolean isWaveletTransformed() {
        return this.d;
    }

    public void Forward(FastBitmap fastBitmap) {
        this.b = fastBitmap.getWidth();
        this.c = fastBitmap.getHeight();
        if (!this.d) {
            if (fastBitmap.isGrayscale()) {
                if (Tools.isPowerOf2(this.b) && Tools.isPowerOf2(this.c)) {
                    this.e = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.c, this.b);
                    for (int i = 0; i < this.c; i++) {
                        for (int i2 = 0; i2 < this.b; i2++) {
                            this.e[i][i2] = Tools.Scale(0.0d, 255.0d, -1.0d, 1.0d, fastBitmap.getGray(i, i2));
                        }
                    }
                    this.a.Forward(this.e);
                    this.d = true;
                    return;
                }
                try {
                    throw new IllegalArgumentException("Image width and height should be power of 2.");
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            try {
                throw new IllegalArgumentException("Only grayscale images are supported.");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void Backward() {
        if (this.d) {
            this.a.Backward(this.e);
            this.d = false;
        }
    }

    public FastBitmap toFastBitmap() {
        FastBitmap fastBitmap = new FastBitmap(this.b, this.c, FastBitmap.ColorSpace.Grayscale);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                fastBitmap.setGray(i, i2, (int) Tools.Scale(-1.0d, 1.0d, 0.0d, 255.0d, this.e[i][i2]));
            }
        }
        return fastBitmap;
    }
}
