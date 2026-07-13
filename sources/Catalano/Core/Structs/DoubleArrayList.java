package Catalano.Core.Structs;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class DoubleArrayList implements Serializable {
    private double[] a;
    private int b;

    public DoubleArrayList() {
        this(10);
    }

    public DoubleArrayList(int i) {
        this.a = new double[i];
        this.b = 0;
    }

    public DoubleArrayList(double[] dArr) {
        this(Math.max(dArr.length, 10));
        add(dArr);
    }

    public void ensureCapacity(int i) {
        if (i > this.a.length) {
            double[] dArr = new double[Math.max(this.a.length << 1, i)];
            System.arraycopy(this.a, 0, dArr, 0, this.a.length);
            this.a = dArr;
        }
    }

    public int size() {
        return this.b;
    }

    public boolean isEmpty() {
        return this.b == 0;
    }

    public void trimToSize() {
        if (this.a.length > size()) {
            this.a = toArray();
        }
    }

    public void add(double d) {
        ensureCapacity(this.b + 1);
        double[] dArr = this.a;
        int i = this.b;
        this.b = i + 1;
        dArr[i] = d;
    }

    public void add(double[] dArr) {
        ensureCapacity(this.b + dArr.length);
        System.arraycopy(dArr, 0, this.a, this.b, dArr.length);
        this.b += dArr.length;
    }

    public double get(int i) {
        return this.a[i];
    }

    public void set(int i, double d) {
        if (i < 0 || i >= this.b) {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        }
        this.a[i] = d;
    }

    public void clear() {
        this.b = 0;
    }

    public double remove(int i) {
        if (i < 0 || i >= this.b) {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        }
        double d = get(i);
        if (i == 0) {
            System.arraycopy(this.a, 1, this.a, 0, this.b - 1);
        } else if (this.b - 1 != i) {
            System.arraycopy(this.a, i + 1, this.a, i, this.b - (i + 1));
        }
        this.b--;
        return d;
    }

    public double[] toArray() {
        return toArray(null);
    }

    public double[] toArray(double[] dArr) {
        if (dArr == null || dArr.length < size()) {
            dArr = new double[this.b];
        }
        System.arraycopy(this.a, 0, dArr, 0, this.b);
        return dArr;
    }
}
