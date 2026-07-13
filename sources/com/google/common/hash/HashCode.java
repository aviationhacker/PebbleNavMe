package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class HashCode {
    private static final char[] a = "0123456789abcdef".toCharArray();

    abstract void a(byte[] bArr, int i, int i2);

    abstract boolean a(HashCode hashCode);

    @CheckReturnValue
    public abstract byte[] asBytes();

    @CheckReturnValue
    public abstract int asInt();

    @CheckReturnValue
    public abstract long asLong();

    @CheckReturnValue
    public abstract int bits();

    @CheckReturnValue
    public abstract long padToLong();

    HashCode() {
    }

    public int writeBytesTo(byte[] bArr, int i, int i2) {
        int iMin = Ints.min(i2, bits() / 8);
        Preconditions.checkPositionIndexes(i, i + iMin, bArr.length);
        a(bArr, i, iMin);
        return iMin;
    }

    public byte[] a() {
        return asBytes();
    }

    @CheckReturnValue
    public static HashCode fromInt(int i) {
        return new b(i);
    }

    static final class b extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int a;

        b(int i) {
            this.a = i;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 32;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return new byte[]{(byte) this.a, (byte) (this.a >> 8), (byte) (this.a >> 16), (byte) (this.a >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return this.a;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return UnsignedInts.toLong(this.a);
        }

        @Override // com.google.common.hash.HashCode
        void a(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.a >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        boolean a(HashCode hashCode) {
            return this.a == hashCode.asInt();
        }
    }

    @CheckReturnValue
    public static HashCode fromLong(long j) {
        return new c(j);
    }

    static final class c extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long a;

        c(long j) {
            this.a = j;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return new byte[]{(byte) this.a, (byte) (this.a >> 8), (byte) (this.a >> 16), (byte) (this.a >> 24), (byte) (this.a >> 32), (byte) (this.a >> 40), (byte) (this.a >> 48), (byte) (this.a >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return (int) this.a;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            return this.a;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return this.a;
        }

        @Override // com.google.common.hash.HashCode
        void a(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.a >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        boolean a(HashCode hashCode) {
            return this.a == hashCode.asLong();
        }
    }

    @CheckReturnValue
    public static HashCode fromBytes(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return a((byte[]) bArr.clone());
    }

    public static HashCode a(byte[] bArr) {
        return new a(bArr);
    }

    static final class a extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] a;

        a(byte[] bArr) {
            this.a = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return this.a.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return (byte[]) this.a.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            Preconditions.checkState(this.a.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(this.a.length));
            return (this.a[0] & UnsignedBytes.MAX_VALUE) | ((this.a[1] & UnsignedBytes.MAX_VALUE) << 8) | ((this.a[2] & UnsignedBytes.MAX_VALUE) << 16) | ((this.a[3] & UnsignedBytes.MAX_VALUE) << 24);
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            Preconditions.checkState(this.a.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", Integer.valueOf(this.a.length));
            return padToLong();
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            long j = this.a[0] & UnsignedBytes.MAX_VALUE;
            for (int i = 1; i < Math.min(this.a.length, 8); i++) {
                j |= (((long) this.a[i]) & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.HashCode
        void a(byte[] bArr, int i, int i2) {
            System.arraycopy(this.a, 0, bArr, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.hash.HashCode
        public byte[] a() {
            return this.a;
        }

        @Override // com.google.common.hash.HashCode
        boolean a(HashCode hashCode) {
            if (this.a.length != hashCode.a().length) {
                return false;
            }
            boolean z = true;
            for (int i = 0; i < this.a.length; i++) {
                z &= this.a[i] == hashCode.a()[i];
            }
            return z;
        }
    }

    @CheckReturnValue
    public static HashCode fromString(String str) {
        Preconditions.checkArgument(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        Preconditions.checkArgument(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((a(str.charAt(i)) << 4) + a(str.charAt(i + 1)));
        }
        return a(bArr);
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        throw new IllegalArgumentException(new StringBuilder(32).append("Illegal hexadecimal character: ").append(c2).toString());
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return bits() == hashCode.bits() && a(hashCode);
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bArrA = a();
        int i = bArrA[0] & UnsignedBytes.MAX_VALUE;
        for (int i2 = 1; i2 < bArrA.length; i2++) {
            i |= (bArrA[i2] & UnsignedBytes.MAX_VALUE) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bArrA = a();
        StringBuilder sb = new StringBuilder(bArrA.length * 2);
        for (byte b2 : bArrA) {
            sb.append(a[(b2 >> 4) & 15]).append(a[b2 & Ascii.SI]);
        }
        return sb.toString();
    }
}
