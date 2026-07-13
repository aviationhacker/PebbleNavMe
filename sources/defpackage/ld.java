package defpackage;

import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ld extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int a;

    public ld(int i) {
        this.a = i;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new a(this.a);
    }

    public String toString() {
        return new StringBuilder(32).append("Hashing.murmur3_128(").append(this.a).append(")").toString();
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ld) && this.a == ((ld) obj).a;
    }

    public int hashCode() {
        return getClass().hashCode() ^ this.a;
    }

    static final class a extends AbstractStreamingHashFunction.AbstractStreamingHasher {
        private long a;
        private long b;
        private int c;

        a(int i) {
            super(16);
            this.a = i;
            this.b = i;
            this.c = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void process(ByteBuffer byteBuffer) {
            a(byteBuffer.getLong(), byteBuffer.getLong());
            this.c += 16;
        }

        private void a(long j, long j2) {
            this.a ^= b(j);
            this.a = Long.rotateLeft(this.a, 27);
            this.a += this.b;
            this.a = (this.a * 5) + 1390208809;
            this.b ^= c(j2);
            this.b = Long.rotateLeft(this.b, 31);
            this.b += this.a;
            this.b = (this.b * 5) + 944331445;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void processRemaining(ByteBuffer byteBuffer) {
            long j;
            long j2 = 0;
            long j3 = 0;
            this.c += byteBuffer.remaining();
            switch (byteBuffer.remaining()) {
                case 1:
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 2:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 3:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 4:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 5:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 6:
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 7:
                    j2 = 0 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(6))) << 48);
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16;
                    j2 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8;
                    j = j2 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(0)));
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 8:
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 9:
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 10:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 11:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 12:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 13:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 14:
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                case 15:
                    j3 = 0 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(14))) << 48);
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16;
                    j3 ^= ((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8;
                    j3 ^= (long) UnsignedBytes.toInt(byteBuffer.get(8));
                    j = 0 ^ byteBuffer.getLong();
                    this.a = b(j) ^ this.a;
                    this.b = c(j3) ^ this.b;
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public HashCode a() {
            this.a ^= (long) this.c;
            this.b ^= (long) this.c;
            this.a += this.b;
            this.b += this.a;
            this.a = a(this.a);
            this.b = a(this.b);
            this.a += this.b;
            this.b += this.a;
            return HashCode.a(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.a).putLong(this.b).array());
        }

        private static long a(long j) {
            long j2 = ((j >>> 33) ^ j) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        private static long b(long j) {
            return Long.rotateLeft((-8663945395140668459L) * j, 31) * 5545529020109919103L;
        }

        private static long c(long j) {
            return Long.rotateLeft(5545529020109919103L * j, 33) * (-8663945395140668459L);
        }
    }
}
