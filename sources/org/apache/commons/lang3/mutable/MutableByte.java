package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableByte extends Number implements Comparable<MutableByte>, Mutable<Number> {
    private static final long serialVersionUID = -1585823265;
    private byte a;

    public MutableByte() {
    }

    public MutableByte(byte b) {
        this.a = b;
    }

    public MutableByte(Number number) {
        this.a = number.byteValue();
    }

    public MutableByte(String str) {
        this.a = Byte.parseByte(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public Number getValue2() {
        return Byte.valueOf(this.a);
    }

    public void setValue(byte b) {
        this.a = b;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.byteValue();
    }

    public void increment() {
        this.a = (byte) (this.a + 1);
    }

    public void decrement() {
        this.a = (byte) (this.a - 1);
    }

    public void add(byte b) {
        this.a = (byte) (this.a + b);
    }

    public void add(Number number) {
        this.a = (byte) (this.a + number.byteValue());
    }

    public void subtract(byte b) {
        this.a = (byte) (this.a - b);
    }

    public void subtract(Number number) {
        this.a = (byte) (this.a - number.byteValue());
    }

    @Override // java.lang.Number
    public byte byteValue() {
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

    public Byte toByte() {
        return Byte.valueOf(byteValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableByte) && this.a == ((MutableByte) obj).byteValue();
    }

    public int hashCode() {
        return this.a;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableByte mutableByte) {
        byte b = mutableByte.a;
        if (this.a < b) {
            return -1;
        }
        return this.a == b ? 0 : 1;
    }

    public String toString() {
        return String.valueOf((int) this.a);
    }
}
