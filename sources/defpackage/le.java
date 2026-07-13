package defpackage;

import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class le extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int a;

    public le(int i) {
        this.a = i;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 32;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new a(this.a);
    }

    public String toString() {
        return new StringBuilder(31).append("Hashing.murmur3_32(").append(this.a).append(")").toString();
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof le) && this.a == ((le) obj).a;
    }

    public int hashCode() {
        return getClass().hashCode() ^ this.a;
    }

    @Override // com.google.common.hash.AbstractStreamingHashFunction, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return d(c(this.a, b(i)), 4);
    }

    @Override // com.google.common.hash.AbstractStreamingHashFunction, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        int i = (int) (j >>> 32);
        return d(c(c(this.a, b((int) j)), b(i)), 8);
    }

    @Override // com.google.common.hash.AbstractStreamingHashFunction, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int iB = this.a;
        for (int i = 1; i < charSequence.length(); i += 2) {
            iB = c(iB, b(charSequence.charAt(i - 1) | (charSequence.charAt(i) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            iB ^= b(charSequence.charAt(charSequence.length() - 1));
        }
        return d(iB, charSequence.length() * 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i) {
        return Integer.rotateLeft((-862048943) * i, 15) * 461845907;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) - 430675100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashCode d(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return HashCode.fromInt(i5 ^ (i5 >>> 16));
    }

    static final class a extends AbstractStreamingHashFunction.AbstractStreamingHasher {
        private int a;
        private int b;

        a(int i) {
            super(4);
            this.a = i;
            this.b = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void process(ByteBuffer byteBuffer) {
            this.a = le.c(this.a, le.b(byteBuffer.getInt()));
            this.b += 4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void processRemaining(ByteBuffer byteBuffer) {
            int i = 0;
            this.b += byteBuffer.remaining();
            int i2 = 0;
            while (byteBuffer.hasRemaining()) {
                i2 ^= UnsignedBytes.toInt(byteBuffer.get()) << i;
                i += 8;
            }
            this.a ^= le.b(i2);
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public HashCode a() {
            return le.d(this.a, this.b);
        }
    }
}
