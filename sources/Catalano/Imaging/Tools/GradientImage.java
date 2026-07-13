package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Convolution;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GradientImage {
    private int[][] a;
    private int[][] b;
    private FastBitmap c;
    private FastBitmap d;
    private float[][] e;
    private float[][] f;
    private int g;

    public int getDivision() {
        return this.g;
    }

    public void setDivision(int i) {
        this.g = i;
    }

    public GradientImage(FastBitmap fastBitmap) {
        this.g = 0;
        a(fastBitmap);
    }

    public GradientImage(FastBitmap fastBitmap, int[][] iArr, int[][] iArr2) {
        this.g = 0;
        this.a = iArr;
        this.b = iArr2;
        a(fastBitmap);
    }

    public GradientImage(FastBitmap fastBitmap, int[][] iArr, int[][] iArr2, int i) {
        this.g = 0;
        this.a = iArr;
        this.b = iArr2;
        this.g = i;
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        this.c = new FastBitmap(fastBitmap);
        this.d = new FastBitmap(fastBitmap);
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        Convolution convolution = new Convolution(this.a, this.g);
        convolution.applyInPlace(this.c);
        convolution.setKernel(this.b);
        convolution.applyInPlace(this.d);
        this.e = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        this.f = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                double gray = this.c.getGray(i, i2);
                double gray2 = this.d.getGray(i, i2);
                this.e[i][i2] = (float) Math.sqrt((gray * gray) + (gray2 * gray2));
                this.f[i][i2] = (float) Math.atan2(gray2, gray);
            }
        }
    }

    public float getMagnitude(int i, int i2) {
        return this.e[i][i2];
    }

    public float getMagnitude(IntPoint intPoint) {
        return this.e[intPoint.x][intPoint.y];
    }

    public float[][] getMagnitude() {
        return this.e;
    }

    public float getOrientation(int i, int i2) {
        return this.f[i][i2];
    }

    public float getOrientation(IntPoint intPoint) {
        return this.f[intPoint.x][intPoint.y];
    }

    public float[][] getOrientation() {
        return this.f;
    }

    public FastBitmap getVerticalImage() {
        return this.d;
    }

    public FastBitmap getHorizontalImage() {
        return this.c;
    }
}
