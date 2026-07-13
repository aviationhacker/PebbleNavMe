package org.eclipse.jetty.websocket;

import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.BuffersFactory;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketBuffers {
    private final int a;
    private final Buffers b;

    public WebSocketBuffers(int i) {
        this.a = i;
        this.b = BuffersFactory.newBuffers(Buffers.Type.DIRECT, i, Buffers.Type.INDIRECT, i, Buffers.Type.INDIRECT, -1);
    }

    public Buffer getBuffer() {
        return this.b.getBuffer();
    }

    public Buffer getDirectBuffer() {
        return this.b.getHeader();
    }

    public void returnBuffer(Buffer buffer) {
        this.b.returnBuffer(buffer);
    }

    public int getBufferSize() {
        return this.a;
    }
}
