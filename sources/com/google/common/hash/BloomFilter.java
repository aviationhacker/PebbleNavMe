package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import defpackage.kz;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private final kz.a a;
    private final int b;
    private final Funnel<? super T> c;
    private final b d;

    public interface b extends Serializable {
        <T> boolean a(T t, Funnel<? super T> funnel, int i, kz.a aVar);

        <T> boolean b(T t, Funnel<? super T> funnel, int i, kz.a aVar);

        int ordinal();
    }

    private BloomFilter(kz.a aVar, int i, Funnel<? super T> funnel, b bVar) {
        Preconditions.checkArgument(i > 0, "numHashFunctions (%s) must be > 0", Integer.valueOf(i));
        Preconditions.checkArgument(i <= 255, "numHashFunctions (%s) must be <= 255", Integer.valueOf(i));
        this.a = (kz.a) Preconditions.checkNotNull(aVar);
        this.b = i;
        this.c = (Funnel) Preconditions.checkNotNull(funnel);
        this.d = (b) Preconditions.checkNotNull(bVar);
    }

    @CheckReturnValue
    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.a.c(), this.b, this.c, this.d);
    }

    @CheckReturnValue
    public boolean mightContain(T t) {
        return this.d.b(t, this.c, this.b, this.a);
    }

    @Override // com.google.common.base.Predicate
    @CheckReturnValue
    @Deprecated
    public boolean apply(T t) {
        return mightContain(t);
    }

    public boolean put(T t) {
        return this.d.a(t, this.c, this.b, this.a);
    }

    @CheckReturnValue
    public double expectedFpp() {
        return Math.pow(this.a.b() / a(), this.b);
    }

    @VisibleForTesting
    long a() {
        return this.a.a();
    }

    @CheckReturnValue
    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        return this != bloomFilter && this.b == bloomFilter.b && a() == bloomFilter.a() && this.d.equals(bloomFilter.d) && this.c.equals(bloomFilter.c);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        Preconditions.checkArgument(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        Preconditions.checkArgument(this.b == bloomFilter.b, "BloomFilters must have the same number of hash functions (%s != %s)", Integer.valueOf(this.b), Integer.valueOf(bloomFilter.b));
        Preconditions.checkArgument(a() == bloomFilter.a(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", Long.valueOf(a()), Long.valueOf(bloomFilter.a()));
        Preconditions.checkArgument(this.d.equals(bloomFilter.d), "BloomFilters must have equal strategies (%s != %s)", this.d, bloomFilter.d);
        Preconditions.checkArgument(this.c.equals(bloomFilter.c), "BloomFilters must have equal funnels (%s != %s)", this.c, bloomFilter.c);
        this.a.a(bloomFilter.a);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.b == bloomFilter.b && this.c.equals(bloomFilter.c) && this.a.equals(bloomFilter.a) && this.d.equals(bloomFilter.d);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), this.c, this.d, this.a);
    }

    @CheckReturnValue
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    @CheckReturnValue
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return a(funnel, j, d, kz.MURMUR128_MITZ_64);
    }

    @VisibleForTesting
    static <T> BloomFilter<T> a(Funnel<? super T> funnel, long j, double d, b bVar) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j >= 0, "Expected insertions (%s) must be >= 0", Long.valueOf(j));
        Preconditions.checkArgument(d > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        Preconditions.checkArgument(d < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        Preconditions.checkNotNull(bVar);
        if (j == 0) {
            j = 1;
        }
        long jA = a(j, d);
        try {
            return new BloomFilter<>(new kz.a(jA), a(j, jA), funnel, bVar);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(new StringBuilder(57).append("Could not create BloomFilter of ").append(jA).append(" bits").toString(), e);
        }
    }

    @CheckReturnValue
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    @CheckReturnValue
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }

    @VisibleForTesting
    static int a(long j, long j2) {
        return Math.max(1, (int) Math.round((j2 / j) * Math.log(2.0d)));
    }

    @VisibleForTesting
    static long a(long j, double d) {
        if (d == 0.0d) {
            d = Double.MIN_VALUE;
        }
        return (long) (((-j) * Math.log(d)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    private Object writeReplace() {
        return new a(this);
    }

    static class a<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] a;
        final int b;
        final Funnel<? super T> c;
        final b d;

        a(BloomFilter<T> bloomFilter) {
            this.a = ((BloomFilter) bloomFilter).a.a;
            this.b = ((BloomFilter) bloomFilter).b;
            this.c = ((BloomFilter) bloomFilter).c;
            this.d = ((BloomFilter) bloomFilter).d;
        }

        Object readResolve() {
            return new BloomFilter(new kz.a(this.a), this.b, this.c, this.d);
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.checkedCast(this.d.ordinal()));
        dataOutputStream.writeByte(UnsignedBytes.checkedCast(this.b));
        dataOutputStream.writeInt(this.a.a.length);
        for (long j : this.a.a) {
            dataOutputStream.writeLong(j);
        }
    }

    @CheckReturnValue
    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<T> funnel) throws IOException {
        int i;
        byte b2;
        int i2 = -1;
        Preconditions.checkNotNull(inputStream, "InputStream");
        Preconditions.checkNotNull(funnel, "Funnel");
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            b2 = dataInputStream.readByte();
            try {
                i = UnsignedBytes.toInt(dataInputStream.readByte());
            } catch (RuntimeException e) {
                e = e;
                i = -1;
            }
            try {
                i2 = dataInputStream.readInt();
                kz kzVar = kz.values()[b2];
                long[] jArr = new long[i2];
                for (int i3 = 0; i3 < jArr.length; i3++) {
                    jArr[i3] = dataInputStream.readLong();
                }
                return new BloomFilter<>(new kz.a(jArr), i, funnel, kzVar);
            } catch (RuntimeException e2) {
                e = e2;
                String strValueOf = String.valueOf("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                IOException iOException = new IOException(new StringBuilder(String.valueOf(strValueOf).length() + 65).append(strValueOf).append((int) b2).append(" numHashFunctions: ").append(i).append(" dataLength: ").append(i2).toString());
                iOException.initCause(e);
                throw iOException;
            }
        } catch (RuntimeException e3) {
            e = e3;
            i = -1;
            b2 = -1;
        }
    }
}
