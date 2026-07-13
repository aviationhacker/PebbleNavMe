package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes.dex */
public class MutableLong extends Number implements Comparable<MutableLong>, Mutable<Number> {
    private static final long serialVersionUID = 62986528375L;
    private long a;

    public MutableLong() {
    }

    public MutableLong(long j) {
        this.a = j;
    }

    public MutableLong(Number number) {
        this.a = number.longValue();
    }

    public MutableLong(String str) {
        this.a = Long.parseLong(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public Number getValue2() {
        return new Long(this.a);
    }

    public void setValue(long j) {
        this.a = j;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.a = number.longValue();
    }

    public void increment() {
        this.a++;
    }

    public void decrement() {
        this.a--;
    }

    public void add(long j) {
        this.a += j;
    }

    public void add(Number number) {
        this.a += number.longValue();
    }

    public void subtract(long j) {
        this.a -= j;
    }

    public void subtract(Number number) {
        this.a -= number.longValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.a;
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

    public Long toLong() {
        return Long.valueOf(longValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableLong) && this.a == ((MutableLong) obj).longValue();
    }

    public int hashCode() {
        return (int) (this.a ^ (this.a >>> 32));
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableLong mutableLong) {
        long j = mutableLong.a;
        if (this.a < j) {
            return -1;
        }
        return this.a == j ? 0 : 1;
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
