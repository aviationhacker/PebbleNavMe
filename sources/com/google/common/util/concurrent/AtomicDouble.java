package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final AtomicLongFieldUpdater<AtomicDouble> b = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "a");
    private static final long serialVersionUID = 0;
    private volatile transient long a;

    public AtomicDouble(double d) {
        this.a = Double.doubleToRawLongBits(d);
    }

    public AtomicDouble() {
    }

    public final double get() {
        return Double.longBitsToDouble(this.a);
    }

    public final void set(double d) {
        this.a = Double.doubleToRawLongBits(d);
    }

    public final void lazySet(double d) {
        set(d);
    }

    public final double getAndSet(double d) {
        return Double.longBitsToDouble(b.getAndSet(this, Double.doubleToRawLongBits(d)));
    }

    public final boolean compareAndSet(double d, double d2) {
        return b.compareAndSet(this, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSet(double d, double d2) {
        return b.weakCompareAndSet(this, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final double getAndAdd(double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.a;
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!b.compareAndSet(this, j, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    public final double addAndGet(double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.a;
            dLongBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!b.compareAndSet(this, j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public String toString() {
        return Double.toString(get());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        set(objectInputStream.readDouble());
    }
}
