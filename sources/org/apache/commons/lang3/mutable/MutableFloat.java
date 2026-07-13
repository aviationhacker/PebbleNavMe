package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableFloat extends Number implements Comparable<MutableFloat>, Mutable<Number> {
    private static final long serialVersionUID = 5787169186L;
    private float a;

    public MutableFloat() {
    }

    public MutableFloat(float f) {
        this.a = f;
    }

    public MutableFloat(Number number) {
        this.a = number.floatValue();
    }

    public MutableFloat(String str) {
        this.a = Float.parseFloat(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public Number getValue2() {
        return new Float(this.a);
    }

    public void setValue(float f) {
        this.a = f;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.floatValue();
    }

    public boolean isNaN() {
        return Float.isNaN(this.a);
    }

    public boolean isInfinite() {
        return Float.isInfinite(this.a);
    }

    public void increment() {
        this.a += 1.0f;
    }

    public void decrement() {
        this.a -= 1.0f;
    }

    public void add(float f) {
        this.a += f;
    }

    public void add(Number number) {
        this.a += number.floatValue();
    }

    public void subtract(float f) {
        this.a -= f;
    }

    public void subtract(Number number) {
        this.a -= number.floatValue();
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
        return this.a;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.a;
    }

    public Float toFloat() {
        return Float.valueOf(floatValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableFloat) && Float.floatToIntBits(((MutableFloat) obj).a) == Float.floatToIntBits(this.a);
    }

    public int hashCode() {
        return Float.floatToIntBits(this.a);
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableFloat mutableFloat) {
        return Float.compare(this.a, mutableFloat.a);
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
