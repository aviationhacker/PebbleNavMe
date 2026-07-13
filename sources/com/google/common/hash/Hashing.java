package com.google.common.hash;

import android.support.v4.media.TransportMediator;
import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import defpackage.kx;
import defpackage.la;
import defpackage.lb;
import defpackage.lc;
import defpackage.ld;
import defpackage.le;
import defpackage.lf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@CheckReturnValue
public final class Hashing {
    private static final int a = (int) System.currentTimeMillis();

    static class a {
        static final HashFunction a = Hashing.b(b.b, "Hashing.adler32()");
    }

    static class d {
        static final HashFunction a = Hashing.b(b.a, "Hashing.crc32()");
    }

    static final class e {
        static final HashFunction a = new lb();
    }

    static class g {
        static final HashFunction a = new lc("MD5", "Hashing.md5()");
    }

    static class h {
        static final HashFunction a = new ld(0);
        static final HashFunction b = Hashing.murmur3_128(Hashing.a);
    }

    static class i {
        static final HashFunction a = new le(0);
        static final HashFunction b = Hashing.murmur3_32(Hashing.a);
    }

    static class j {
        static final HashFunction a = new lc("SHA-1", "Hashing.sha1()");
    }

    static class k {
        static final HashFunction a = new lc("SHA-256", "Hashing.sha256()");
    }

    static class l {
        static final HashFunction a = new lc("SHA-384", "Hashing.sha384()");
    }

    static class m {
        static final HashFunction a = new lc("SHA-512", "Hashing.sha512()");
    }

    static class n {
        static final HashFunction a = new lf(2, 4, 506097522914230528L, 1084818905618843912L);
    }

    public static HashFunction goodFastHash(int i2) {
        int iA = a(i2);
        if (iA == 32) {
            return i.b;
        }
        if (iA <= 128) {
            return h.b;
        }
        int i3 = (iA + TransportMediator.KEYCODE_MEDIA_PAUSE) / 128;
        HashFunction[] hashFunctionArr = new HashFunction[i3];
        hashFunctionArr[0] = h.b;
        int i4 = a;
        for (int i5 = 1; i5 < i3; i5++) {
            i4 += 1500450271;
            hashFunctionArr[i5] = murmur3_128(i4);
        }
        return new c(hashFunctionArr);
    }

    public static HashFunction murmur3_32(int i2) {
        return new le(i2);
    }

    public static HashFunction murmur3_32() {
        return i.a;
    }

    public static HashFunction murmur3_128(int i2) {
        return new ld(i2);
    }

    public static HashFunction murmur3_128() {
        return h.a;
    }

    public static HashFunction sipHash24() {
        return n.a;
    }

    public static HashFunction sipHash24(long j2, long j3) {
        return new lf(2, 4, j2, j3);
    }

    public static HashFunction md5() {
        return g.a;
    }

    public static HashFunction sha1() {
        return j.a;
    }

    public static HashFunction sha256() {
        return k.a;
    }

    public static HashFunction sha384() {
        return l.a;
    }

    public static HashFunction sha512() {
        return m.a;
    }

    public static HashFunction crc32c() {
        return e.a;
    }

    public static HashFunction crc32() {
        return d.a;
    }

    public static HashFunction adler32() {
        return a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashFunction b(b bVar, String str) {
        return new la(bVar, bVar.c, str);
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'a' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static abstract class b implements Supplier<Checksum> {
        public static final b a;
        public static final b b;
        private static final /* synthetic */ b[] d;
        private final int c;

        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a */
        public abstract Checksum get();

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) d.clone();
        }

        static {
            int i = 32;
            a = new b("CRC_32", 0, i) { // from class: com.google.common.hash.Hashing.b.1
                @Override // com.google.common.hash.Hashing.b, com.google.common.base.Supplier
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Checksum get() {
                    return new CRC32();
                }
            };
            b = new b("ADLER_32", 1, i) { // from class: com.google.common.hash.Hashing.b.2
                @Override // com.google.common.hash.Hashing.b, com.google.common.base.Supplier
                /* JADX INFO: renamed from: a */
                public Checksum get() {
                    return new Adler32();
                }
            };
            d = new b[]{a, b};
        }

        private b(String str, int i, int i2) {
            this.c = i2;
        }
    }

    public static int consistentHash(HashCode hashCode, int i2) {
        return consistentHash(hashCode.padToLong(), i2);
    }

    public static int consistentHash(long j2, int i2) {
        int i3 = 0;
        Preconditions.checkArgument(i2 > 0, "buckets must be positive: %s", Integer.valueOf(i2));
        f fVar = new f(j2);
        while (true) {
            int iA = (int) (((double) (i3 + 1)) / fVar.a());
            if (iA < 0 || iA >= i2) {
                break;
            }
            i3 = iA;
        }
        return i3;
    }

    public static HashCode combineOrdered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        byte[] bArr = new byte[it.next().bits() / 8];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            Preconditions.checkArgument(bArrAsBytes.length == bArr.length, "All hashcodes must have the same bit length.");
            for (int i2 = 0; i2 < bArrAsBytes.length; i2++) {
                bArr[i2] = (byte) ((bArr[i2] * 37) ^ bArrAsBytes[i2]);
            }
        }
        return HashCode.a(bArr);
    }

    public static HashCode combineUnordered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        byte[] bArr = new byte[it.next().bits() / 8];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            Preconditions.checkArgument(bArrAsBytes.length == bArr.length, "All hashcodes must have the same bit length.");
            for (int i2 = 0; i2 < bArrAsBytes.length; i2++) {
                bArr[i2] = (byte) (bArr[i2] + bArrAsBytes[i2]);
            }
        }
        return HashCode.a(bArr);
    }

    static int a(int i2) {
        Preconditions.checkArgument(i2 > 0, "Number of bits must be positive");
        return (i2 + 31) & (-32);
    }

    public static HashFunction concatenating(HashFunction hashFunction, HashFunction hashFunction2, HashFunction... hashFunctionArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashFunction);
        arrayList.add(hashFunction2);
        for (HashFunction hashFunction3 : hashFunctionArr) {
            arrayList.add(hashFunction3);
        }
        return new c((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    public static HashFunction concatenating(Iterable<HashFunction> iterable) {
        Preconditions.checkNotNull(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<HashFunction> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Preconditions.checkArgument(arrayList.size() > 0, "number of hash functions (%s) must be > 0", Integer.valueOf(arrayList.size()));
        return new c((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    static final class c extends kx {
        private final int b;

        private c(HashFunction... hashFunctionArr) {
            super(hashFunctionArr);
            int length = hashFunctionArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                HashFunction hashFunction = hashFunctionArr[i];
                int iBits = hashFunction.bits() + i2;
                Preconditions.checkArgument(hashFunction.bits() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", Integer.valueOf(hashFunction.bits()), hashFunction);
                i++;
                i2 = iBits;
            }
            this.b = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.kx
        public HashCode a(Hasher[] hasherArr) {
            byte[] bArr = new byte[this.b / 8];
            int iWriteBytesTo = 0;
            for (Hasher hasher : hasherArr) {
                HashCode hashCodeHash = hasher.hash();
                iWriteBytesTo += hashCodeHash.writeBytesTo(bArr, iWriteBytesTo, hashCodeHash.bits() / 8);
            }
            return HashCode.a(bArr);
        }

        @Override // com.google.common.hash.HashFunction
        public int bits() {
            return this.b;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(this.a, ((c) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.a) * 31) + this.b;
        }
    }

    static final class f {
        private long a;

        public f(long j) {
            this.a = j;
        }

        public double a() {
            this.a = (2862933555777941757L * this.a) + 1;
            return ((double) (((int) (this.a >>> 33)) + 1)) / 2.147483648E9d;
        }
    }

    private Hashing() {
    }
}
