package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.hash.Funnel;
import com.google.common.hash.Hashing;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public enum kz implements BloomFilter.b {
    MURMUR128_MITZ_32 { // from class: kz.1
        @Override // com.google.common.hash.BloomFilter.b
        public <T> boolean a(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jA = aVar.a();
            long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            boolean zA = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                zA |= aVar.a(((long) i5) % jA);
            }
            return zA;
        }

        @Override // com.google.common.hash.BloomFilter.b
        public <T> boolean b(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jA = aVar.a();
            long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                if (!aVar.b(((long) i5) % jA)) {
                    return false;
                }
            }
            return true;
        }
    },
    MURMUR128_MITZ_64 { // from class: kz.2
        @Override // com.google.common.hash.BloomFilter.b
        public <T> boolean a(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jA = aVar.a();
            byte[] bArrA = Hashing.murmur3_128().hashObject(t, funnel).a();
            long jA2 = a(bArrA);
            long jB = b(bArrA);
            boolean zA = false;
            for (int i2 = 0; i2 < i; i2++) {
                zA |= aVar.a((Long.MAX_VALUE & jA2) % jA);
                jA2 += jB;
            }
            return zA;
        }

        @Override // com.google.common.hash.BloomFilter.b
        public <T> boolean b(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jA = aVar.a();
            byte[] bArrA = Hashing.murmur3_128().hashObject(t, funnel).a();
            long jA2 = a(bArrA);
            long jB = b(bArrA);
            for (int i2 = 0; i2 < i; i2++) {
                if (!aVar.b((Long.MAX_VALUE & jA2) % jA)) {
                    return false;
                }
                jA2 += jB;
            }
            return true;
        }

        private long a(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long b(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }
    };

    public static final class a {
        public final long[] a;
        long b;

        public a(long j) {
            this(new long[Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING))]);
        }

        public a(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.a = jArr;
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += (long) Long.bitCount(j);
            }
            this.b = jBitCount;
        }

        boolean a(long j) {
            if (b(j)) {
                return false;
            }
            long[] jArr = this.a;
            int i = (int) (j >>> 6);
            jArr[i] = jArr[i] | (1 << ((int) j));
            this.b++;
            return true;
        }

        boolean b(long j) {
            return (this.a[(int) (j >>> 6)] & (1 << ((int) j))) != 0;
        }

        public long a() {
            return ((long) this.a.length) * 64;
        }

        public long b() {
            return this.b;
        }

        public a c() {
            return new a((long[]) this.a.clone());
        }

        public void a(a aVar) {
            Preconditions.checkArgument(this.a.length == aVar.a.length, "BitArrays must be of equal length (%s != %s)", Integer.valueOf(this.a.length), Integer.valueOf(aVar.a.length));
            this.b = 0L;
            for (int i = 0; i < this.a.length; i++) {
                long[] jArr = this.a;
                jArr[i] = jArr[i] | aVar.a[i];
                this.b += (long) Long.bitCount(this.a[i]);
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.a, ((a) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.a);
        }
    }
}
