package Catalano.Imaging.Filters;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Math.Tools;
import android.support.v4.internal.view.SupportMenu;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class DistanceTransform {
    private float[][] a;
    private float b;
    private IntPoint c;
    private Distance d;

    public enum Distance {
        Chessboard,
        Euclidean,
        Manhattan,
        SquaredEuclidean
    }

    public float getMaximumDistance() {
        return this.b;
    }

    public IntPoint getUltimateErodedPoint() {
        return this.c;
    }

    public DistanceTransform() {
        this.b = 0.0f;
        this.d = Distance.Euclidean;
    }

    public DistanceTransform(Distance distance) {
        this.b = 0.0f;
        this.d = Distance.Euclidean;
        this.d = distance;
    }

    public float[][] Compute(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            int[] data = fastBitmap.getData();
            float[] fArr = new float[data.length];
            for (int i = 0; i < width * height; i++) {
                if ((data[i] & 255) != 0) {
                    fArr[i] = Float.MAX_VALUE;
                }
            }
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 2, width);
            for (int i2 = 0; i2 < width; i2++) {
                iArr[0][i2] = -1;
                iArr[1][i2] = -1;
            }
            for (int i3 = 0; i3 < height; i3++) {
                a(data, fArr, iArr, width, i3 * width, i3);
            }
            for (int i4 = 0; i4 < width; i4++) {
                iArr[0][i4] = -1;
                iArr[1][i4] = -1;
            }
            for (int i5 = height - 1; i5 >= 0; i5--) {
                a(data, fArr, iArr, width, i5 * width, i5);
            }
            this.a = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
            if (this.d == Distance.Euclidean) {
                int i6 = 0;
                int i7 = 0;
                while (i6 < height) {
                    int i8 = i7;
                    for (int i9 = 0; i9 < width; i9++) {
                        if (fArr[i8] < 0.0f) {
                            this.a[i6][i9] = 0.0f;
                        } else {
                            this.a[i6][i9] = (float) Math.sqrt(fArr[i8]);
                        }
                        if (this.a[i6][i9] > this.b) {
                            this.b = this.a[i6][i9];
                            this.c = new IntPoint(i6, i9);
                        }
                        i8++;
                    }
                    i6++;
                    i7 = i8;
                }
            } else {
                int i10 = 0;
                int i11 = 0;
                while (i10 < height) {
                    int i12 = i11;
                    for (int i13 = 0; i13 < width; i13++) {
                        if (fArr[i12] < 0.0f) {
                            this.a[i10][i13] = 0.0f;
                        } else {
                            this.a[i10][i13] = fArr[i12];
                        }
                        if (this.a[i10][i13] > this.b) {
                            this.b = this.a[i10][i13];
                            this.c = new IntPoint(i10, i13);
                        }
                        i12++;
                    }
                    i10++;
                    i11 = i12;
                }
            }
            return this.a;
        }
        throw new IllegalArgumentException("Distance Transform only works in grayscale images.");
    }

    private void a(int[] iArr, float[] fArr, int[][] iArr2, int i, int i2, int i3) {
        int[] iArr3 = iArr2[0];
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        while (i6 < i) {
            int i7 = iArr3[i6];
            if ((iArr[i2] & 255) != 0) {
                float fA = a(iArr3, i4, i5, i6, i3, Integer.MAX_VALUE, this.d);
                if (fArr[i2] > fA) {
                    fArr[i2] = fA;
                }
            } else {
                iArr3[i6] = (i3 << 16) | i6;
            }
            i4 = iArr3[i6];
            i6++;
            i2++;
            i5 = i7;
        }
        int[] iArr4 = iArr2[1];
        int i8 = -1;
        int i9 = -1;
        int i10 = i - 1;
        int i11 = i2 - 1;
        while (i10 >= 0) {
            int i12 = iArr4[i10];
            if ((iArr[i11] & 255) != 0) {
                float fA2 = a(iArr4, i8, i9, i10, i3, Integer.MAX_VALUE, this.d);
                if (fArr[i11] > fA2) {
                    fArr[i11] = fA2;
                }
            } else {
                iArr4[i10] = (i3 << 16) | i10;
            }
            i8 = iArr4[i10];
            i10--;
            i9 = i12;
            i11--;
        }
    }

    private float a(int[] iArr, int i, int i2, int i3, int i4, int i5, Distance distance) {
        int iA;
        int iA2;
        int iA3;
        int i6 = iArr[i3];
        if (i6 == -1 || (iA = a(i3, i4, i6 & SupportMenu.USER_MASK, (i6 >> 16) & SupportMenu.USER_MASK, distance)) >= i5) {
            iA = i5;
        }
        if (i2 == i6 || i2 == -1 || (iA2 = a(i3, i4, i2 & SupportMenu.USER_MASK, (i2 >> 16) & SupportMenu.USER_MASK, distance)) >= iA) {
            iA2 = iA;
        } else {
            i6 = i2;
        }
        if (i == i2 || i == -1 || (iA3 = a(i3, i4, i & SupportMenu.USER_MASK, (i >> 16) & SupportMenu.USER_MASK, distance)) >= iA2) {
            i = i6;
            iA3 = iA2;
        }
        iArr[i3] = i;
        return iA3;
    }

    private int a(int i, int i2, int i3, int i4, Distance distance) {
        switch (distance) {
            case Euclidean:
                return ((i - i3) * (i - i3)) + ((i2 - i4) * (i2 - i4));
            case Manhattan:
                return Math.abs(i - i3) + Math.abs(i2 - i4);
            case Chessboard:
                return Math.max(Math.abs(i - i3), Math.abs(i2 - i4));
            case SquaredEuclidean:
                return ((i - i3) * (i - i3)) + ((i2 - i4) * (i2 - i4));
            default:
                return 0;
        }
    }

    public FastBitmap toFastBitmap() {
        int length = this.a[0].length;
        int length2 = this.a.length;
        FastBitmap fastBitmap = new FastBitmap(length, length2, FastBitmap.ColorSpace.Grayscale);
        if (this.b > 255.0f) {
            for (int i = 0; i < length2; i++) {
                for (int i2 = 0; i2 < length; i2++) {
                    fastBitmap.setGray(i, i2, (int) Tools.Scale(0.0d, this.b, 0.0d, 255.0d, this.a[i][i2]));
                }
            }
        } else {
            for (int i3 = 0; i3 < length2; i3++) {
                for (int i4 = 0; i4 < length; i4++) {
                    fastBitmap.setGray(i3, i4, (int) this.a[i3][i4]);
                }
            }
        }
        return fastBitmap;
    }
}
