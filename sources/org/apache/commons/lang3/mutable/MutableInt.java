package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableInt extends Number implements Comparable<MutableInt>, Mutable<Number> {
    private static final long serialVersionUID = 512176391864L;
    private int a;

    public MutableInt() {
    }

    public MutableInt(int i) {
        this.a = i;
    }

    public MutableInt(Number number) {
        this.a = number.intValue();
    }

    public MutableInt(String str) {
        this.a = Integer.parseInt(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public Number getValue2() {
        return new Integer(this.a);
    }

    public void setValue(int i) {
        this.a = i;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.intValue();
    }

    public void increment() {
        this.a++;
    }

    public void decrement() {
        this.a--;
    }

    public void add(int i) {
        this.a += i;
    }

    public void add(Number number) {
        this.a += number.intValue();
    }

    public void subtract(int i) {
        this.a -= i;
    }

    public void subtract(Number number) {
        this.a -= number.intValue();
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

    public Integer toInteger() {
        return Integer.valueOf(intValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableInt) && this.a == ((MutableInt) obj).intValue();
    }

    public int hashCode() {
        return this.a;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableInt mutableInt) {
        int i = mutableInt.a;
        if (this.a < i) {
            return -1;
        }
        return this.a == i ? 0 : 1;
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
