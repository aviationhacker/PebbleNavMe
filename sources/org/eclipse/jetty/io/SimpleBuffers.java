package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes.dex */
public class SimpleBuffers implements Buffers {
    final Buffer a;
    final Buffer b;
    boolean c;
    boolean d;

    public SimpleBuffers(Buffer buffer, Buffer buffer2) {
        this.a = buffer;
        this.b = buffer2;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer() {
        Buffer byteArrayBuffer;
        synchronized (this) {
            if (this.b != null && !this.d) {
                this.d = true;
                byteArrayBuffer = this.b;
            } else if (this.b != null && this.a != null && this.a.capacity() == this.b.capacity() && !this.c) {
                this.c = true;
                byteArrayBuffer = this.a;
            } else if (this.b != null) {
                byteArrayBuffer = new ByteArrayBuffer(this.b.capacity());
            } else {
                byteArrayBuffer = new ByteArrayBuffer(4096);
            }
        }
        return byteArrayBuffer;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getHeader() {
        Buffer byteArrayBuffer;
        synchronized (this) {
            if (this.a != null && !this.c) {
                this.c = true;
                byteArrayBuffer = this.a;
            } else if (this.b != null && this.a != null && this.a.capacity() == this.b.capacity() && !this.d) {
                this.d = true;
                byteArrayBuffer = this.b;
            } else if (this.a != null) {
                byteArrayBuffer = new ByteArrayBuffer(this.a.capacity());
            } else {
                byteArrayBuffer = new ByteArrayBuffer(4096);
            }
        }
        return byteArrayBuffer;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer(int i) {
        Buffer buffer;
        synchronized (this) {
            if (this.a != null && this.a.capacity() == i) {
                buffer = getHeader();
            } else if (this.b != null && this.b.capacity() == i) {
                buffer = getBuffer();
            } else {
                buffer = null;
            }
        }
        return buffer;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void returnBuffer(Buffer buffer) {
        synchronized (this) {
            buffer.clear();
            if (buffer == this.a) {
                this.c = false;
            }
            if (buffer == this.b) {
                this.d = false;
            }
        }
    }
}
