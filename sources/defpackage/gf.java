package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class gf extends ByteArrayOutputStream {
    private int a;
    private long b = 0;

    protected abstract void flushBuffer(byte[] bArr, int i);

    public gf(int i) {
        this.a = i;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
        } catch (Exception e) {
        }
        super.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        super.flush();
        a(true);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        super.write(bArr, i, i2);
        a(false);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        super.write(bArr);
        a(false);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        super.write(i);
        a(false);
    }

    @Override // java.io.ByteArrayOutputStream
    public final synchronized void reset() {
        super.reset();
    }

    private final void a(boolean z) {
        while (true) {
            if (z || this.count >= this.a) {
                int i = this.a;
                if (i > this.count) {
                    i = this.count;
                }
                if (i != 0) {
                    flushBuffer(this.buf, i);
                    this.b += (long) i;
                    int i2 = this.count - i;
                    this.count = i2;
                    if (i2 > 0) {
                        System.arraycopy(this.buf, i, this.buf, 0, i2);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public void setSize(int i) {
        this.a = i;
        System.out.println("setting size: " + i + " count" + this.count);
        a(false);
    }

    public long getCountFlushed() {
        return this.b;
    }
}
