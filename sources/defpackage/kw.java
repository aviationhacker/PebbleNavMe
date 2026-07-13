package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.hash.Funnel;
import com.google.common.hash.Hasher;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
abstract class kw extends ky {
    private final ByteBuffer a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    protected abstract void a(byte b);

    kw() {
    }

    protected void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    protected void a(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(bArr[i3]);
        }
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putByte(byte b) {
        a(b);
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        a(bArr);
        return this;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        a(bArr, i, i2);
        return this;
    }

    private Hasher a(int i) {
        try {
            a(this.a.array(), 0, i);
            return this;
        } finally {
            this.a.clear();
        }
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putShort(short s) {
        this.a.putShort(s);
        return a(2);
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putInt(int i) {
        this.a.putInt(i);
        return a(4);
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putLong(long j) {
        this.a.putLong(j);
        return a(8);
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putChar(char c) {
        this.a.putChar(c);
        return a(2);
    }

    @Override // com.google.common.hash.Hasher
    public <T> Hasher putObject(T t, Funnel<? super T> funnel) {
        funnel.funnel(t, this);
        return this;
    }
}
