package Catalano.Imaging.Texture;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GrayLevelCooccurrenceMatrix {
    private Degree a;
    private boolean b;
    private boolean c;
    private int d;
    private int e;

    public enum Degree {
        Degree_0,
        Degree_45,
        Degree_90,
        Degree_135
    }

    public boolean isAutoGray() {
        return this.b;
    }

    public void setAutoGray(boolean z) {
        this.b = z;
    }

    public boolean isNormalize() {
        return this.c;
    }

    public void setNormalize(boolean z) {
        this.c = z;
    }

    public Degree getDegree() {
        return this.a;
    }

    public void setDegree(Degree degree) {
        this.a = degree;
    }

    public int getDistance() {
        return this.e;
    }

    public void setDistance(int i) {
        this.e = i;
    }

    public int getNumPairs() {
        return this.d;
    }

    public GrayLevelCooccurrenceMatrix() {
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 1;
    }

    public GrayLevelCooccurrenceMatrix(int i) {
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 1;
        this.e = i;
    }

    public GrayLevelCooccurrenceMatrix(int i, Degree degree) {
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 1;
        this.e = i;
        this.a = degree;
    }

    public GrayLevelCooccurrenceMatrix(int i, Degree degree, boolean z) {
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 1;
        this.e = i;
        this.a = degree;
        this.c = z;
    }

    public GrayLevelCooccurrenceMatrix(int i, Degree degree, boolean z, boolean z2) {
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 1;
        this.e = i;
        this.a = degree;
        this.c = z;
        this.b = z2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public double[][] Compute(FastBitmap fastBitmap) {
        int iA = this.b ? a(fastBitmap) : 255;
        this.d = 0;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iA + 1, iA + 1);
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        switch (this.a) {
            case Degree_0:
                for (int i = 0; i < height; i++) {
                    for (int i2 = this.e; i2 < width; i2++) {
                        double[] dArr2 = dArr[fastBitmap.getGray(i, i2 - this.e)];
                        int gray = fastBitmap.getGray(i, i2);
                        dArr2[gray] = dArr2[gray] + 1.0d;
                        this.d++;
                    }
                }
                break;
            case Degree_45:
                for (int i3 = this.e; i3 < height; i3++) {
                    for (int i4 = 0; i4 < width - this.e; i4++) {
                        double[] dArr3 = dArr[fastBitmap.getGray(i3, i4)];
                        int gray2 = fastBitmap.getGray(i3 - this.e, this.e + i4);
                        dArr3[gray2] = dArr3[gray2] + 1.0d;
                        this.d++;
                    }
                }
                break;
            case Degree_90:
                for (int i5 = this.e; i5 < height; i5++) {
                    for (int i6 = 0; i6 < width; i6++) {
                        double[] dArr4 = dArr[fastBitmap.getGray(i5 - this.e, i6)];
                        int gray3 = fastBitmap.getGray(i5, i6);
                        dArr4[gray3] = dArr4[gray3] + 1.0d;
                        this.d++;
                    }
                }
                break;
            case Degree_135:
                for (int i7 = this.e; i7 < height; i7++) {
                    int i8 = width - 1;
                    for (int i9 = 0; i9 < width - this.e; i9++) {
                        double[] dArr5 = dArr[fastBitmap.getGray(i7, i8 - i9)];
                        int gray4 = fastBitmap.getGray(i7 - this.e, (i8 - this.e) - i9);
                        dArr5[gray4] = dArr5[gray4] + 1.0d;
                        this.d++;
                    }
                }
                break;
        }
        if (this.c) {
            a(dArr, this.d == 0 ? 1 : this.d);
        }
        return dArr;
    }

    private void a(double[][] dArr, int i) {
        for (double[] dArr2 : dArr) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr2[i2] = dArr2[i2] / ((double) i);
            }
        }
    }

    private int a(FastBitmap fastBitmap) {
        int i = 0;
        for (int i2 = 0; i2 < fastBitmap.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < fastBitmap.getWidth()) {
                int gray = fastBitmap.getGray(i2, i3);
                if (gray <= i) {
                    gray = i;
                }
                i3++;
                i = gray;
            }
        }
        return i;
    }
}
