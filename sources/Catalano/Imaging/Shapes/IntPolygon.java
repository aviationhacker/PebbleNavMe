package Catalano.Imaging.Shapes;

import Catalano.Core.IntPoint;
import Catalano.Math.Tools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntPolygon {
    private int[] a;
    private int[] b;
    private int c;

    public int[] getX() {
        return this.a.length == this.c ? this.a : Arrays.copyOf(this.a, this.c);
    }

    public int[] getY() {
        return this.b.length == this.c ? this.b : Arrays.copyOf(this.b, this.c);
    }

    public int getNPoints() {
        return this.c;
    }

    public List<IntPoint> getPoints() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.c; i++) {
            arrayList.add(new IntPoint(this.a[i], this.b[i]));
        }
        return arrayList;
    }

    public IntPolygon() {
        this.a = new int[4];
        this.b = new int[4];
        this.c = 0;
    }

    public IntPolygon(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            throw new IllegalArgumentException("The size of xPoints and yPoints must be the same.");
        }
        this.a = Arrays.copyOf(iArr, iArr.length);
        this.b = Arrays.copyOf(iArr2, iArr2.length);
        this.c = iArr.length;
    }

    public IntPolygon(int[] iArr, int[] iArr2, int i) {
        if (iArr.length < i || iArr2.length < i) {
            throw new IllegalArgumentException("the number of points is higher than lenght of xPoints or yPoints.");
        }
        if (i < 0) {
            throw new NegativeArraySizeException("nPoints < 0");
        }
        this.a = Arrays.copyOf(iArr, i);
        this.b = Arrays.copyOf(iArr2, i);
        this.c = i;
    }

    public IntPolygon(List<IntPoint> list) {
        this.c = list.size();
        this.a = new int[list.size()];
        this.b = new int[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.a[i2] = list.get(i2).x;
                this.b[i2] = list.get(i2).y;
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public IntPolygon(List<IntPoint> list, int i) {
        if (list.size() < i) {
            throw new IllegalArgumentException("the number of points is higher than lenght of lstPoints.");
        }
        if (i < 0) {
            throw new NegativeArraySizeException("nPoints < 0");
        }
        this.c = i;
        this.a = new int[i];
        this.b = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.a[i2] = list.get(i2).x;
            this.b[i2] = list.get(i2).y;
        }
    }

    public void addPoint(IntPoint intPoint) {
        addPoint(intPoint.x, intPoint.y);
    }

    public void addPoint(int i, int i2) {
        if (this.c >= this.a.length || this.c >= this.b.length) {
            int iHighestOneBit = this.c * 2;
            if (!Tools.isPowerOf2(iHighestOneBit)) {
                iHighestOneBit = Integer.highestOneBit(iHighestOneBit);
            }
            this.a = Arrays.copyOf(this.a, iHighestOneBit);
            this.b = Arrays.copyOf(this.b, iHighestOneBit);
        }
        this.a[this.c] = i;
        this.b[this.c] = i2;
        this.c++;
    }
}
