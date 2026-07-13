package org.eclipse.jetty.io.nio;

import java.nio.ByteBuffer;
import org.eclipse.jetty.io.ByteArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
public class IndirectNIOBuffer extends ByteArrayBuffer implements NIOBuffer {
    protected final ByteBuffer _buf;

    public IndirectNIOBuffer(int i) {
        super(i, 2, false);
        this._buf = ByteBuffer.wrap(this._bytes);
        this._buf.position(0);
        this._buf.limit(this._buf.capacity());
    }

    public IndirectNIOBuffer(ByteBuffer byteBuffer, boolean z) {
        super(byteBuffer.array(), 0, 0, z ? 0 : 2, false);
        if (byteBuffer.isDirect()) {
            throw new IllegalArgumentException();
        }
        this._buf = byteBuffer;
        this._get = byteBuffer.position();
        this._put = byteBuffer.limit();
        byteBuffer.position(0);
        byteBuffer.limit(byteBuffer.capacity());
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public ByteBuffer getByteBuffer() {
        return this._buf;
    }

    @Override // org.eclipse.jetty.io.nio.NIOBuffer
    public boolean isDirect() {
        return false;
    }
}
