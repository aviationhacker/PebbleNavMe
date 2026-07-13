package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableDouble extends Number implements Comparable<MutableDouble>, Mutable<Number> {
    private static final long serialVersionUID = 1587163916;
    private double a;

    public MutableDouble() {
    }

    public MutableDouble(double d) {
        this.a = d;
    }

    public MutableDouble(Number number) {
        this.a = number.doubleValue();
    }

    public MutableDouble(String str) {
        this.a = Double.parseDouble(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue, reason: merged with bridge method [inline-methods] */
    public Number getValue2() {
        return new Double(this.a);
    }

    public void setValue(double d) {
        this.a = d;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.doubleValue();
    }

    public boolean isNaN() {
        return Double.isNaN(this.a);
    }

    public boolean isInfinite() {
        return Double.isInfinite(this.a);
    }

    public void increment() {
        this.a += 1.0d;
    }

    public void decrement() {
        this.a -= 1.0d;
    }

    public void add(double d) {
        this.a += d;
    }

    public void add(Number number) {
        this.a += number.doubleValue();
    }

    public void subtract(double d) {
        this.a -= d;
    }

    public void subtract(Number number) {
        this.a -= number.doubleValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) this.a;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) this.a;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.a;
    }

    public Double toDouble() {
        return Double.valueOf(doubleValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableDouble) && Double.doubleToLongBits(((MutableDouble) obj).a) == Double.doubleToLongBits(this.a);
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.a);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableDouble mutableDouble) {
        return Double.compare(this.a, mutableDouble.a);
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
