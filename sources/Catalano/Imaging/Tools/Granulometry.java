package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Opening;

/* JADX INFO: loaded from: classes.dex */
public class Granulometry {
    private int a;
    private int b;
    private int c;

    public int getMinRadius() {
        return this.a;
    }

    public void setMinRadius(int i) {
        this.a = i;
    }

    public int getMaxRadius() {
        return this.b;
    }

    public void setMaxRadius(int i) {
        this.b = i;
    }

    public int getSteps() {
        return this.c;
    }

    public void setSteps(int i) {
        this.c = i;
    }

    public Granulometry() {
        this.a = 1;
        this.b = 10;
        this.c = 1;
    }

    public Granulometry(int i) {
        this.a = 1;
        this.b = 10;
        this.c = 1;
        this.b = i;
    }

    public Granulometry(int i, int i2) {
        this.a = 1;
        this.b = 10;
        this.c = 1;
        this.a = i;
        this.b = i2;
    }

    public Granulometry(int i, int i2, int i3) {
        this.a = 1;
        this.b = 10;
        this.c = 1;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public float[] ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            float[] fArr = new float[this.b - this.a];
            long jA = a(fastBitmap);
            int i = 0;
            int i2 = this.a;
            while (i2 < this.b) {
                new Opening(i2).applyInPlace(new FastBitmap(fastBitmap));
                fArr[i] = (-(a(r3) - jA)) / jA;
                i++;
                i2 += this.c;
            }
            return fArr;
        }
        throw new IllegalArgumentException("Granulometry only works in grayscale images.");
    }

    private long a(FastBitmap fastBitmap) {
        long j = 0;
        for (int i = 0; i < fastBitmap.getHeight(); i++) {
            int i2 = 0;
            while (i2 < fastBitmap.getWidth()) {
                long gray = ((long) fastBitmap.getGray(i, i2)) + j;
                i2++;
                j = gray;
            }
        }
        return j;
    }
}
