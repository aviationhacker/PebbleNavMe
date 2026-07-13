package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class HoughLineTransformation {
    int a;
    final int b;
    double c;
    protected float centerX;
    protected float centerY;
    int d;
    protected int doubleHeight;
    int e;
    int f;
    boolean g;
    private double[] h;
    protected int height;
    protected int[][] houghArray;
    protected int houghHeight;
    private double[] i;
    protected int numPoints;
    protected int width;

    public HoughLineTransformation() {
        this.a = 4;
        this.b = 180;
        this.c = 0.017453292519943295d;
        this.d = 1;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = true;
    }

    public HoughLineTransformation(int i) {
        this.a = 4;
        this.b = 180;
        this.c = 0.017453292519943295d;
        this.d = 1;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = true;
        this.e = Math.max(1, i);
    }

    public HoughLineTransformation(int i, int i2) {
        this.a = 4;
        this.b = 180;
        this.c = 0.017453292519943295d;
        this.d = 1;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = true;
        this.e = Math.max(1, i);
        this.f = Math.max(1, i2);
    }

    public HoughLineTransformation(int i, int i2, boolean z) {
        this.a = 4;
        this.b = 180;
        this.c = 0.017453292519943295d;
        this.d = 1;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.g = true;
        this.e = Math.max(1, i);
        this.f = Math.max(1, i2);
        this.g = z;
    }

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public int getIntensity() {
        return this.e;
    }

    public void setIntensity(int i) {
        this.e = Math.max(1, i);
    }

    public int getStepsPerDegree() {
        return this.d;
    }

    public void setStepsPerDegree(int i) {
        this.d = i;
        this.houghHeight = Math.max(1, Math.min(10, i)) * 180;
        this.c = 3.141592653589793d / ((double) this.houghHeight);
        this.h = new double[this.houghHeight];
        this.i = new double[this.houghHeight];
        for (int i2 = 0; i2 < this.houghHeight; i2++) {
            this.h[i2] = Math.sin(((double) i2) * this.c);
            this.i[i2] = Math.cos(((double) i2) * this.c);
        }
    }

    private void a() {
        this.houghHeight = ((int) (Math.sqrt(2.0d) * ((double) Math.max(this.height, this.width)))) / 2;
        this.doubleHeight = this.houghHeight * 2;
        this.houghArray = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 180, this.doubleHeight);
        this.centerX = this.width / 2;
        this.centerY = this.height / 2;
        this.numPoints = 0;
        this.h = new double[180];
        this.i = (double[]) this.h.clone();
        for (int i = 0; i < 180; i++) {
            double d = ((double) i) * this.c;
            this.h[i] = Math.sin(d);
            this.i[i] = Math.cos(d);
        }
    }

    public void ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.width = fastBitmap.getWidth();
            this.height = fastBitmap.getHeight();
            a();
            for (int i = 0; i < this.height; i++) {
                for (int i2 = 0; i2 < this.width; i2++) {
                    if (fastBitmap.getGray(i, i2) == 255) {
                        a(i, i2);
                    }
                }
            }
            return;
        }
        try {
            throw new IllegalArgumentException("HoughLineTransformation only works with grayscale images.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addEdgePoints(ArrayList<IntPoint> arrayList) {
        for (IntPoint intPoint : arrayList) {
            a(intPoint.x, intPoint.y);
        }
    }

    private void a(int i, int i2) {
        for (int i3 = 0; i3 < 180; i3++) {
            int i4 = ((int) ((((double) (i - this.centerX)) * this.i[i3]) + (((double) (i2 - this.centerY)) * this.h[i3]))) + this.houghHeight;
            if (i4 >= 0 && i4 < this.doubleHeight) {
                int[] iArr = this.houghArray[i3];
                iArr[i4] = iArr[i4] + 1;
            }
        }
        this.numPoints++;
    }

    public ArrayList<HoughLine> getLines() {
        ArrayList<HoughLine> arrayList = new ArrayList<>();
        if (this.numPoints == 0) {
            return arrayList;
        }
        double dB = b();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 180) {
                break;
            }
            for (int i3 = this.a; i3 < this.doubleHeight - this.a; i3++) {
                if (this.houghArray[i2][i3] > this.e && this.houghArray[i2][i3] < this.f) {
                    int i4 = this.houghArray[i2][i3];
                    int i5 = -this.a;
                    while (true) {
                        if (i5 <= this.a) {
                            for (int i6 = -this.a; i6 <= this.a; i6++) {
                                int i7 = i2 + i5;
                                int i8 = i3 + i6;
                                if (i7 < 0) {
                                    i7 += 180;
                                } else if (i7 >= 180) {
                                    i7 -= 180;
                                }
                                if (this.houghArray[i7][i8] > i4) {
                                    break;
                                }
                            }
                            i5++;
                        } else {
                            arrayList.add(new HoughLine(((double) i2) * this.c, i3, i4, ((double) i4) / dB));
                            break;
                        }
                    }
                }
            }
            i = i2 + 1;
        }
        if (this.g) {
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    private int b() {
        int i = 0;
        int i2 = 0;
        while (i < 180) {
            int i3 = i2;
            for (int i4 = 0; i4 < this.doubleHeight; i4++) {
                if (this.houghArray[i][i4] > i3) {
                    i3 = this.houghArray[i][i4];
                }
            }
            i++;
            i2 = i3;
        }
        return i2;
    }

    public FastBitmap getHoughArrayImage() {
        int iB = b();
        FastBitmap fastBitmap = new FastBitmap(180, this.doubleHeight);
        for (int i = 0; i < 180; i++) {
            for (int i2 = 0; i2 < this.doubleHeight; i2++) {
                int i3 = 255 - ((int) ((255.0d * ((double) this.houghArray[i][i2])) / ((double) iB)));
                fastBitmap.setRGB(i2, i, i3, i3, i3);
            }
        }
        return fastBitmap;
    }
}
