package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Shapes.IntRectangle;
import Catalano.Math.Geometry.PointsCloud;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BlobDetection {
    private Algorithm a;
    private int b;
    private int c;
    private FastBitmap d;
    private int e;
    private int f;
    private int g;
    private int h;
    private List<Blob> i;
    private Blob j;
    private int k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private int p;

    public enum Algorithm {
        FourWay,
        EightWay
    }

    public BlobDetection() {
        this.a = Algorithm.FourWay;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.k = 0;
        this.l = false;
        this.m = 1;
        this.p = 0;
    }

    public BlobDetection(Algorithm algorithm) {
        this.a = Algorithm.FourWay;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.k = 0;
        this.l = false;
        this.m = 1;
        this.p = 0;
        this.a = algorithm;
    }

    public int size() {
        return this.e;
    }

    public boolean isFilterBlob() {
        return this.l;
    }

    public void setFilterBlob(boolean z) {
        this.l = z;
    }

    public int getMaxArea() {
        return this.n;
    }

    public void setMaxArea(int i) {
        this.n = i;
    }

    public int getMinArea() {
        return this.m;
    }

    public void setMinArea(int i) {
        this.m = i;
    }

    public int getIdBiggestBlob() {
        return this.o;
    }

    public List<Blob> ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.b = fastBitmap.getWidth();
            this.c = fastBitmap.getHeight();
            if (this.n == 0) {
                this.n = this.b * this.c;
            }
            this.d = new FastBitmap(fastBitmap);
            this.d.toRGB();
            this.i = new ArrayList();
            for (int i = 0; i < this.c; i++) {
                for (int i2 = 0; i2 < this.b; i2++) {
                    if (this.d.getRed(i, i2) == 255) {
                        a();
                        a(i, i2, this.f, this.g, this.h);
                    }
                }
            }
            return this.i;
        }
        throw new IllegalArgumentException("Blob detection only works in grayscale images.");
    }

    private void a() {
        if (this.h == 255) {
            if (this.g == 255) {
                if (this.f == 255) {
                    this.h = 0;
                    this.g = 0;
                    this.f = 0;
                }
                this.f++;
                this.g = 0;
                return;
            }
            this.g++;
            this.h = 0;
            return;
        }
        this.h++;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int red = (this.d.getRed(i, i2) << 16) | (this.d.getGreen(i, i2) << 8) | this.d.getBlue(i, i2);
        linkedList.addFirst(new IntPoint(i, i2));
        switch (this.a) {
            case FourWay:
                while (true) {
                    i6 = i12;
                    i7 = i11;
                    i8 = i10;
                    if (linkedList.size() <= 0) {
                        i9 = i6;
                    } else {
                        IntPoint intPoint = (IntPoint) linkedList.removeLast();
                        if (((this.d.getRed(intPoint.x, intPoint.y) << 16) | (this.d.getGreen(intPoint.x, intPoint.y) << 8) | this.d.getBlue(intPoint.x, intPoint.y)) == red) {
                            int i13 = intPoint.x;
                            int i14 = intPoint.y;
                            this.d.setRGB(i13, i14, i3, i4, i5);
                            i12 = i6 + 1;
                            arrayList.add(new IntPoint(i13, i14));
                            i8 += intPoint.x;
                            i7 += intPoint.y;
                            if (i13 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i13 - 1, i14));
                            }
                            if (i13 + 1 < this.c) {
                                linkedList.addFirst(new IntPoint(i13 + 1, i14));
                            }
                            if (i14 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i13, i14 - 1));
                            }
                            if (i14 + 1 < this.b) {
                                linkedList.addFirst(new IntPoint(i13, i14 + 1));
                            }
                        } else {
                            i12 = i6;
                        }
                        i11 = i7;
                        i10 = i8;
                    }
                    break;
                }
                break;
            case EightWay:
                while (true) {
                    i6 = i12;
                    i7 = i11;
                    i8 = i10;
                    if (linkedList.size() <= 0) {
                        i9 = i6;
                    } else {
                        IntPoint intPoint2 = (IntPoint) linkedList.removeLast();
                        if (((this.d.getRed(intPoint2.x, intPoint2.y) << 16) | (this.d.getGreen(intPoint2.x, intPoint2.y) << 8) | this.d.getBlue(intPoint2.x, intPoint2.y)) == red) {
                            int i15 = intPoint2.x;
                            int i16 = intPoint2.y;
                            this.d.setRGB(i15, i16, i3, i4, i5);
                            i12 = i6 + 1;
                            arrayList.add(new IntPoint(i15, i16));
                            i8 += intPoint2.x;
                            i7 += intPoint2.y;
                            if (i15 - 1 > 0 && i16 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i15 - 1, i16 - 1));
                            }
                            if (i15 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i15 - 1, i16));
                            }
                            if (i15 - 1 > 0 && i16 + 1 < this.b) {
                                linkedList.addFirst(new IntPoint(i15 - 1, i16 + 1));
                            }
                            if (i16 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i15, i16 - 1));
                            }
                            if (i16 + 1 < this.b) {
                                linkedList.addFirst(new IntPoint(i15, i16 + 1));
                            }
                            if (i15 + 1 < this.c && i16 - 1 > 0) {
                                linkedList.addFirst(new IntPoint(i15 + 1, i16 - 1));
                            }
                            if (i15 + 1 < this.c) {
                                linkedList.addFirst(new IntPoint(i15 + 1, i16));
                            }
                            if (i15 + 1 < this.c && i16 + 1 < this.b) {
                                linkedList.addFirst(new IntPoint(i15 + 1, i16 + 1));
                            }
                        } else {
                            i12 = i6;
                        }
                        i11 = i7;
                        i10 = i8;
                    }
                    break;
                }
                break;
            default:
                i7 = 0;
                i8 = 0;
                i9 = 0;
                break;
        }
        if (this.l) {
            if (i9 > this.m && i9 < this.n) {
                if (i9 > this.p) {
                    this.p = i9;
                    this.o = this.k;
                }
                ArrayList<IntPoint> arrayListGetBoundingRectangle = PointsCloud.GetBoundingRectangle(arrayList);
                this.j = new Blob(this.k, i9, new IntPoint(i8 / i9, i7 / i9), arrayList, new IntRectangle(arrayListGetBoundingRectangle.get(0).x, arrayListGetBoundingRectangle.get(0).y, Math.abs(arrayListGetBoundingRectangle.get(0).y - arrayListGetBoundingRectangle.get(1).y), Math.abs(arrayListGetBoundingRectangle.get(0).x - arrayListGetBoundingRectangle.get(1).x)));
                this.i.add(this.j);
                this.e++;
                this.k++;
                return;
            }
            return;
        }
        if (i9 > this.p) {
            this.p = i9;
            this.o = this.k;
        }
        ArrayList<IntPoint> arrayListGetBoundingRectangle2 = PointsCloud.GetBoundingRectangle(arrayList);
        this.j = new Blob(this.k, i9, new IntPoint(i8 / i9, i7 / i9), arrayList, new IntRectangle(arrayListGetBoundingRectangle2.get(0).x, arrayListGetBoundingRectangle2.get(0).y, Math.abs(arrayListGetBoundingRectangle2.get(0).y - arrayListGetBoundingRectangle2.get(1).y), Math.abs(arrayListGetBoundingRectangle2.get(0).x - arrayListGetBoundingRectangle2.get(1).x)));
        this.i.add(this.j);
        this.e++;
        this.k++;
    }
}
