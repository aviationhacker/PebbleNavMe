package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffers;

/* JADX INFO: loaded from: classes.dex */
public class ThreadLocalBuffers extends AbstractBuffers {
    private final ThreadLocal<ThreadBuffers> a;

    public ThreadLocalBuffers(Buffers.Type type, int i, Buffers.Type type2, int i2, Buffers.Type type3) {
        super(type, i, type2, i2, type3);
        this.a = new ThreadLocal<ThreadBuffers>() { // from class: org.eclipse.jetty.io.ThreadLocalBuffers.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ThreadBuffers initialValue() {
                return new ThreadBuffers();
            }
        };
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer() {
        ThreadBuffers threadBuffers = this.a.get();
        if (threadBuffers.a != null) {
            Buffer buffer = threadBuffers.a;
            threadBuffers.a = null;
            return buffer;
        }
        if (threadBuffers.c != null && isBuffer(threadBuffers.c)) {
            Buffer buffer2 = threadBuffers.c;
            threadBuffers.c = null;
            return buffer2;
        }
        return newBuffer();
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getHeader() {
        ThreadBuffers threadBuffers = this.a.get();
        if (threadBuffers.b != null) {
            Buffer buffer = threadBuffers.b;
            threadBuffers.b = null;
            return buffer;
        }
        if (threadBuffers.c != null && isHeader(threadBuffers.c)) {
            Buffer buffer2 = threadBuffers.c;
            threadBuffers.c = null;
            return buffer2;
        }
        return newHeader();
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer(int i) {
        ThreadBuffers threadBuffers = this.a.get();
        if (threadBuffers.c == null || threadBuffers.c.capacity() != i) {
            return newBuffer(i);
        }
        Buffer buffer = threadBuffers.c;
        threadBuffers.c = null;
        return buffer;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (!buffer.isVolatile() && !buffer.isImmutable()) {
            ThreadBuffers threadBuffers = this.a.get();
            if (threadBuffers.b == null && isHeader(buffer)) {
                threadBuffers.b = buffer;
            } else if (threadBuffers.a == null && isBuffer(buffer)) {
                threadBuffers.a = buffer;
            } else {
                threadBuffers.c = buffer;
            }
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffers
    public String toString() {
        return "{{" + getHeaderSize() + "," + getBufferSize() + "}}";
    }

    public static class ThreadBuffers {
        Buffer a;
        Buffer b;
        Buffer c;

        protected ThreadBuffers() {
        }
    }
}
