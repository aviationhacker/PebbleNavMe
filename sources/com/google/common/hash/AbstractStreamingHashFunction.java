package com.google.common.hash;

import com.google.common.base.Preconditions;
import defpackage.ky;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractStreamingHashFunction implements HashFunction {
    protected AbstractStreamingHashFunction() {
    }

    @Override // com.google.common.hash.HashFunction
    public <T> HashCode hashObject(T t, Funnel<? super T> funnel) {
        return newHasher().putObject(t, funnel).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        return newHasher().putUnencodedChars(charSequence).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return newHasher().putString(charSequence, charset).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return newHasher().putInt(i).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        return newHasher().putLong(j).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr) {
        return newHasher().putBytes(bArr).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        return newHasher().putBytes(bArr, i, i2).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        return newHasher();
    }

    public static abstract class AbstractStreamingHasher extends ky {
        private final ByteBuffer a;
        private final int b;
        private final int c;

        public abstract HashCode a();

        public abstract void process(ByteBuffer byteBuffer);

        protected AbstractStreamingHasher(int i) {
            this(i, i);
        }

        protected AbstractStreamingHasher(int i, int i2) {
            Preconditions.checkArgument(i2 % i == 0);
            this.a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
            this.b = i2;
            this.c = i;
        }

        public void processRemaining(ByteBuffer byteBuffer) {
            byteBuffer.position(byteBuffer.limit());
            byteBuffer.limit(this.c + 7);
            while (byteBuffer.position() < this.c) {
                byteBuffer.putLong(0L);
            }
            byteBuffer.limit(this.c);
            byteBuffer.flip();
            process(byteBuffer);
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putBytes(byte[] bArr) {
            return putBytes(bArr, 0, bArr.length);
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putBytes(byte[] bArr, int i, int i2) {
            return a(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
        }

        private Hasher a(ByteBuffer byteBuffer) {
            if (byteBuffer.remaining() <= this.a.remaining()) {
                this.a.put(byteBuffer);
                b();
            } else {
                int iPosition = this.b - this.a.position();
                for (int i = 0; i < iPosition; i++) {
                    this.a.put(byteBuffer.get());
                }
                c();
                while (byteBuffer.remaining() >= this.c) {
                    process(byteBuffer);
                }
                this.a.put(byteBuffer);
            }
            return this;
        }

        @Override // defpackage.ky, com.google.common.hash.PrimitiveSink
        public final Hasher putUnencodedChars(CharSequence charSequence) {
            for (int i = 0; i < charSequence.length(); i++) {
                putChar(charSequence.charAt(i));
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putByte(byte b) {
            this.a.put(b);
            b();
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putShort(short s) {
            this.a.putShort(s);
            b();
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putChar(char c) {
            this.a.putChar(c);
            b();
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putInt(int i) {
            this.a.putInt(i);
            b();
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public final Hasher putLong(long j) {
            this.a.putLong(j);
            b();
            return this;
        }

        @Override // com.google.common.hash.Hasher
        public final <T> Hasher putObject(T t, Funnel<? super T> funnel) {
            funnel.funnel(t, this);
            return this;
        }

        @Override // com.google.common.hash.Hasher
        public final HashCode hash() {
            c();
            this.a.flip();
            if (this.a.remaining() > 0) {
                processRemaining(this.a);
            }
            return a();
        }

        private void b() {
            if (this.a.remaining() < 8) {
                c();
            }
        }

        private void c() {
            this.a.flip();
            while (this.a.remaining() >= this.c) {
                process(this.a);
            }
            this.a.compact();
        }
    }
}
