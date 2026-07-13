package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Math.Tools;
import Catalano.Math.Transforms.DiscreteCosineTransform;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class CosineTransform {
    private int a;
    private int b;
    private double[][] d;
    private double[][] e;
    private double f;
    private boolean c = false;
    private int g = 255;

    public double[][] getData() {
        return this.d;
    }

    public void setData(double[][] dArr) {
        this.d = dArr;
    }

    public boolean isWaveletTransformed() {
        return this.c;
    }

    public void Forward(FastBitmap fastBitmap) {
        this.a = fastBitmap.getWidth();
        this.b = fastBitmap.getHeight();
        if (!this.c) {
            if (fastBitmap.isGrayscale()) {
                if (Tools.isPowerOf2(this.a) && Tools.isPowerOf2(this.b)) {
                    this.d = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.b, this.a);
                    for (int i = 0; i < this.b; i++) {
                        for (int i2 = 0; i2 < this.a; i2++) {
                            this.d[i][i2] = Tools.Scale(0.0d, 255.0d, 0.0d, 1.0d, fastBitmap.getGray(i, i2));
                        }
                    }
                    DiscreteCosineTransform.Forward(this.d);
                    this.c = true;
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
        if (this.c) {
            DiscreteCosineTransform.Backward(this.d);
            this.c = false;
        }
    }

    public FastBitmap toFastBitmap() {
        FastBitmap fastBitmap = new FastBitmap(this.a, this.b, FastBitmap.ColorSpace.Grayscale);
        a();
        double dLog = this.g > 0 ? ((double) this.g) / Math.log(this.f + 1.0d) : 1.0d;
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                fastBitmap.setGray(i, i2, (int) (Math.log(this.e[i][i2] + 1.0d) * dLog * 255.0d));
            }
        }
        return fastBitmap;
    }

    private void a() {
        this.e = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.d.length, this.d[0].length);
        this.f = 0.0d;
        for (int i = 0; i < this.d.length; i++) {
            for (int i2 = 0; i2 < this.d[0].length; i2++) {
                double d = this.d[i][i2];
                if (d < 0.0d) {
                    d = -d;
                }
                this.e[i][i2] = d;
                if (d > this.f) {
                    this.f = d;
                }
            }
        }
    }
}
