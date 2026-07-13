package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableShort extends Number implements Comparable<MutableShort>, Mutable<Number> {
    private static final long serialVersionUID = -2135791679;
    private short a;

    public MutableShort() {
    }

    public MutableShort(short s) {
        this.a = s;
    }

    public MutableShort(Number number) {
        this.a = number.shortValue();
    }

    public MutableShort(String str) {
        this.a = Short.parseShort(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public Number getValue2() {
        return new Short(this.a);
    }

    public void setValue(short s) {
        this.a = s;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.shortValue();
    }

    public void increment() {
        this.a = (short) (this.a + 1);
    }

    public void decrement() {
        this.a = (short) (this.a - 1);
    }

    public void add(short s) {
        this.a = (short) (this.a + s);
    }

    public void add(Number number) {
        this.a = (short) (this.a + number.shortValue());
    }

    public void subtract(short s) {
        this.a = (short) (this.a - s);
    }

    public void subtract(Number number) {
        this.a = (short) (this.a - number.shortValue());
    }

    @Override // java.lang.Number
    public short shortValue() {
        return this.a;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.a;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.a;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.a;
    }

    public Short toShort() {
        return Short.valueOf(shortValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableShort) && this.a == ((MutableShort) obj).shortValue();
    }

    public int hashCode() {
        return this.a;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableShort mutableShort) {
        short s = mutableShort.a;
        if (this.a < s) {
            return -1;
        }
        return this.a == s ? 0 : 1;
    }

    public String toString() {
        return String.valueOf((int) this.a);
    }
}
