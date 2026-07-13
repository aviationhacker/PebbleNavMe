package org.eclipse.jetty.io;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.jetty.io.Buffers;

/* JADX INFO: loaded from: classes.dex */
public class PooledBuffers extends AbstractBuffers {
    private final Queue<Buffer> a;
    private final Queue<Buffer> b;
    private final Queue<Buffer> c;
    private final AtomicInteger d;
    private final int e;
    private final boolean f;
    private final boolean g;

    public PooledBuffers(Buffers.Type type, int i, Buffers.Type type2, int i2, Buffers.Type type3, int i3) {
        super(type, i, type2, i2, type3);
        this.d = new AtomicInteger();
        this.a = new ConcurrentLinkedQueue();
        this.b = new ConcurrentLinkedQueue();
        this.c = new ConcurrentLinkedQueue();
        this.f = type == type3;
        this.g = type2 == type3;
        this.e = i3;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getHeader() {
        Buffer bufferPoll = this.a.poll();
        if (bufferPoll == null) {
            return newHeader();
        }
        this.d.decrementAndGet();
        return bufferPoll;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer() {
        Buffer bufferPoll = this.b.poll();
        if (bufferPoll == null) {
            return newBuffer();
        }
        this.d.decrementAndGet();
        return bufferPoll;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer(int i) {
        if (this.f && i == getHeaderSize()) {
            return getHeader();
        }
        if (this.g && i == getBufferSize()) {
            return getBuffer();
        }
        Buffer bufferPoll = this.c.poll();
        while (bufferPoll != null && bufferPoll.capacity() != i) {
            this.d.decrementAndGet();
            bufferPoll = this.c.poll();
        }
        if (bufferPoll == null) {
            return newBuffer(i);
        }
        this.d.decrementAndGet();
        return bufferPoll;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (!buffer.isVolatile() && !buffer.isImmutable()) {
            if (this.d.incrementAndGet() > this.e) {
                this.d.decrementAndGet();
                return;
            }
            if (isHeader(buffer)) {
                this.a.add(buffer);
            } else if (isBuffer(buffer)) {
                this.b.add(buffer);
            } else {
                this.c.add(buffer);
            }
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffers
    public String toString() {
        return String.format("%s [%d/%d@%d,%d/%d@%d,%d/%d@-]", getClass().getSimpleName(), Integer.valueOf(this.a.size()), Integer.valueOf(this.e), Integer.valueOf(this._headerSize), Integer.valueOf(this.b.size()), Integer.valueOf(this.e), Integer.valueOf(this._bufferSize), Integer.valueOf(this.c.size()), Integer.valueOf(this.e));
    }
}
