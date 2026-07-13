package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray a;

    public AtomicDoubleArray(int i) {
        this.a = new AtomicLongArray(i);
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = Double.doubleToRawLongBits(dArr[i]);
        }
        this.a = new AtomicLongArray(jArr);
    }

    public final int length() {
        return this.a.length();
    }

    public final double get(int i) {
        return Double.longBitsToDouble(this.a.get(i));
    }

    public final void set(int i, double d) {
        this.a.set(i, Double.doubleToRawLongBits(d));
    }

    public final void lazySet(int i, double d) {
        set(i, d);
    }

    public final double getAndSet(int i, double d) {
        return Double.longBitsToDouble(this.a.getAndSet(i, Double.doubleToRawLongBits(d)));
    }

    public final boolean compareAndSet(int i, double d, double d2) {
        return this.a.compareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSet(int i, double d, double d2) {
        return this.a.weakCompareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final double getAndAdd(int i, double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.a.get(i);
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!this.a.compareAndSet(i, j, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    public double addAndGet(int i, double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.a.get(i);
            dLongBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!this.a.compareAndSet(i, j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public String toString() {
        int length = length() - 1;
        if (length == -1) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder((length + 1) * 19);
        sb.append('[');
        int i = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.a.get(i)));
            if (i == length) {
                return sb.append(']').toString();
            }
            sb.append(',').append(' ');
            i++;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i = 0; i < length; i++) {
            objectOutputStream.writeDouble(get(i));
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        this.a = new AtomicLongArray(i);
        for (int i2 = 0; i2 < i; i2++) {
            set(i2, objectInputStream.readDouble());
        }
    }
}
