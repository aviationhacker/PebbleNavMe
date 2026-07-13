package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.math.BigInteger;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class UnsignedLong extends Number implements Serializable, Comparable<UnsignedLong> {
    private final long a;
    public static final UnsignedLong ZERO = new UnsignedLong(0);
    public static final UnsignedLong ONE = new UnsignedLong(1);
    public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1);

    private UnsignedLong(long j) {
        this.a = j;
    }

    public static UnsignedLong fromLongBits(long j) {
        return new UnsignedLong(j);
    }

    public static UnsignedLong valueOf(long j) {
        Preconditions.checkArgument(j >= 0, "value (%s) is outside the range for an unsigned long value", Long.valueOf(j));
        return fromLongBits(j);
    }

    public static UnsignedLong valueOf(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        Preconditions.checkArgument(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedLong valueOf(String str, int i) {
        return fromLongBits(UnsignedLongs.parseUnsignedLong(str, i));
    }

    @CheckReturnValue
    public UnsignedLong plus(UnsignedLong unsignedLong) {
        return fromLongBits(((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).a + this.a);
    }

    @CheckReturnValue
    public UnsignedLong minus(UnsignedLong unsignedLong) {
        return fromLongBits(this.a - ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).a);
    }

    @CheckReturnValue
    public UnsignedLong times(UnsignedLong unsignedLong) {
        return fromLongBits(((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).a * this.a);
    }

    @CheckReturnValue
    public UnsignedLong dividedBy(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.divide(this.a, ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).a));
    }

    @CheckReturnValue
    public UnsignedLong mod(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.remainder(this.a, ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).a));
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
        float f = this.a & Long.MAX_VALUE;
        if (this.a < 0) {
            return f + 9.223372E18f;
        }
        return f;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        double d = this.a & Long.MAX_VALUE;
        if (this.a < 0) {
            return d + 9.223372036854776E18d;
        }
        return d;
    }

    public BigInteger bigIntegerValue() {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(this.a & Long.MAX_VALUE);
        if (this.a < 0) {
            return bigIntegerValueOf.setBit(63);
        }
        return bigIntegerValueOf;
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedLong unsignedLong) {
        Preconditions.checkNotNull(unsignedLong);
        return UnsignedLongs.compare(this.a, unsignedLong.a);
    }

    public int hashCode() {
        return Longs.hashCode(this.a);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof UnsignedLong) && this.a == ((UnsignedLong) obj).a;
    }

    public String toString() {
        return UnsignedLongs.toString(this.a);
    }

    public String toString(int i) {
        return UnsignedLongs.toString(this.a, i);
    }
}
