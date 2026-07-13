package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DocumentSkewChecker {
    private int b;
    private double c;
    private double[] e;
    private double[] f;
    private int[][] h;
    private boolean g = true;
    private int i = 0;
    private int j = 4;
    private List<HoughLine> k = new ArrayList();
    private int a = 10;
    private double d = 30.0d;

    public int getStepsPerDegree() {
        return this.a;
    }

    public void setStepsPerDegree(int i) {
        this.a = Math.max(1, Math.min(10, i));
    }

    public double getMaxSkewToDetect() {
        return this.d;
    }

    public void setMaxSkewToDetect(double d) {
        this.d = Math.max(0.0d, Math.min(45.0d, d));
    }

    public int getLocalPeakRadius() {
        return this.j;
    }

    public void setLocalPeakRadius(int i) {
        this.j = Math.max(1, Math.min(10, i));
    }

    public double getSkewAngle(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            a();
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            int i = width / 2;
            int i2 = height / 2;
            int i3 = -i;
            int i4 = width - i;
            int i5 = (height - i2) - 1;
            int iSqrt = (int) Math.sqrt((i * i) + (i2 * i2));
            int i6 = iSqrt * 2;
            this.h = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.b, i6);
            int i7 = 0;
            int i8 = -i2;
            while (i8 < i5) {
                int i9 = i7;
                for (int i10 = i3; i10 < i4; i10++) {
                    if (fastBitmap.getGray(i9) < 128 && fastBitmap.getGray(i9 + width) >= 128) {
                        for (int i11 = 0; i11 < this.b; i11++) {
                            int i12 = ((int) ((this.f[i11] * ((double) i10)) - (this.e[i11] * ((double) i8)))) + iSqrt;
                            if (i12 >= 0 && i12 < i6) {
                                int[] iArr = this.h[i11];
                                iArr[i12] = iArr[i12] + 1;
                            }
                        }
                    }
                    i9++;
                }
                i8++;
                i7 = i9;
            }
            this.i = 0;
            for (int i13 = 0; i13 < this.b; i13++) {
                for (int i14 = 0; i14 < i6; i14++) {
                    if (this.h[i13][i14] > this.i) {
                        this.i = this.h[i13][i14];
                    }
                }
            }
            a(width / 10);
            HoughLine[] houghLineArrB = b(5);
            double relativeIntensity = 0.0d;
            double theta = 0.0d;
            for (HoughLine houghLine : houghLineArrB) {
                if (houghLine.getRelativeIntensity() > 0.5d) {
                    theta += houghLine.getTheta() * houghLine.getRelativeIntensity();
                    relativeIntensity += houghLine.getRelativeIntensity();
                }
            }
            if (houghLineArrB.length > 0) {
                theta /= relativeIntensity;
            }
            return theta - 90.0d;
        }
        throw new IllegalArgumentException("Document Skew Checker only works in grayscale images.");
    }

    private void a(int i) {
        int length = this.h.length;
        int length2 = this.h[0].length;
        int i2 = length2 >> 1;
        this.k.clear();
        for (int i3 = 0; i3 < length; i3++) {
            for (int i4 = 0; i4 < length2; i4++) {
                int i5 = this.h[i3][i4];
                if (i5 >= i) {
                    int i6 = i3 - this.j;
                    int i7 = i3 + this.j;
                    boolean z = false;
                    for (int i8 = i6; i8 < i7; i8++) {
                        if (i8 >= 0) {
                            if (i8 >= length || z) {
                                break;
                            }
                            int i9 = i4 - this.j;
                            int i10 = this.j + i4;
                            while (true) {
                                if (i9 >= i10) {
                                    break;
                                }
                                if (i9 >= 0) {
                                    if (i9 < length2) {
                                        if (this.h[i8][i9] > i5) {
                                            z = true;
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                i9++;
                            }
                        }
                    }
                    if (!z) {
                        this.k.add(new HoughLine((90.0d - this.d) + (((double) i3) / ((double) this.a)), i4 - i2, i5, ((double) i5) / ((double) this.i)));
                    }
                }
            }
        }
        Collections.sort(this.k);
    }

    private HoughLine[] b(int i) {
        int iMin = Math.min(i, this.k.size());
        HoughLine[] houghLineArr = new HoughLine[iMin];
        for (int i2 = 0; i2 < iMin; i2++) {
            houghLineArr[i2] = this.k.get(i2);
        }
        return houghLineArr;
    }

    private void a() {
        if (this.g) {
            this.g = false;
            this.b = (int) (this.d * 2.0d * ((double) this.a));
            this.c = (((this.d * 2.0d) * 3.141592653589793d) / 180.0d) / ((double) this.b);
            this.e = new double[this.b];
            this.f = new double[this.b];
            double d = 90.0d - this.d;
            for (int i = 0; i < this.b; i++) {
                this.e[i] = Math.sin(((d * 3.141592653589793d) / 180.0d) + (((double) i) * this.c));
                this.f[i] = Math.cos(((d * 3.141592653589793d) / 180.0d) + (((double) i) * this.c));
            }
        }
    }
}
