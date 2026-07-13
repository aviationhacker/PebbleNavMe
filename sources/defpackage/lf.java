package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.hash.AbstractStreamingHashFunction;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class lf extends AbstractStreamingHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int a;
    private final int b;
    private final long c;
    private final long d;

    public lf(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", Integer.valueOf(i));
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", Integer.valueOf(i2));
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new a(this.a, this.b, this.c, this.d);
    }

    public String toString() {
        int i = this.a;
        int i2 = this.b;
        long j = this.c;
        return new StringBuilder(81).append("Hashing.sipHash").append(i).append(i2).append("(").append(j).append(", ").append(this.d).append(")").toString();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof lf)) {
            return false;
        }
        lf lfVar = (lf) obj;
        return this.a == lfVar.a && this.b == lfVar.b && this.c == lfVar.c && this.d == lfVar.d;
    }

    public int hashCode() {
        return (int) ((((long) ((getClass().hashCode() ^ this.a) ^ this.b)) ^ this.c) ^ this.d);
    }

    static final class a extends AbstractStreamingHashFunction.AbstractStreamingHasher {
        private final int a;
        private final int b;
        private long c;
        private long d;
        private long e;
        private long f;
        private long g;
        private long h;

        a(int i, int i2, long j, long j2) {
            super(8);
            this.c = 8317987319222330741L;
            this.d = 7237128888997146477L;
            this.e = 7816392313619706465L;
            this.f = 8387220255154660723L;
            this.g = 0L;
            this.h = 0L;
            this.a = i;
            this.b = i2;
            this.c ^= j;
            this.d ^= j2;
            this.e ^= j;
            this.f ^= j2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void process(ByteBuffer byteBuffer) {
            this.g += 8;
            a(byteBuffer.getLong());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public void processRemaining(ByteBuffer byteBuffer) {
            this.g += (long) byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.h ^= (((long) byteBuffer.get()) & 255) << i;
                i += 8;
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHashFunction.AbstractStreamingHasher
        public HashCode a() {
            this.h ^= this.g << 56;
            a(this.h);
            this.e ^= 255;
            a(this.b);
            return HashCode.fromLong(((this.c ^ this.d) ^ this.e) ^ this.f);
        }

        private void a(long j) {
            this.f ^= j;
            a(this.a);
            this.c ^= j;
        }

        private void a(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                this.c += this.d;
                this.e += this.f;
                this.d = Long.rotateLeft(this.d, 13);
                this.f = Long.rotateLeft(this.f, 16);
                this.d ^= this.c;
                this.f ^= this.e;
                this.c = Long.rotateLeft(this.c, 32);
                this.e += this.d;
                this.c += this.f;
                this.d = Long.rotateLeft(this.d, 17);
                this.f = Long.rotateLeft(this.f, 21);
                this.d ^= this.e;
                this.f ^= this.c;
                this.e = Long.rotateLeft(this.e, 32);
            }
        }
    }
}
