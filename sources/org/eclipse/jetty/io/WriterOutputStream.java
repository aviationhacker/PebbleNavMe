package org.eclipse.jetty.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class WriterOutputStream extends OutputStream {
    protected final String _encoding;
    protected final Writer _writer;
    private final byte[] a;

    public WriterOutputStream(Writer writer, String str) {
        this.a = new byte[1];
        this._writer = writer;
        this._encoding = str;
    }

    public WriterOutputStream(Writer writer) {
        this.a = new byte[1];
        this._writer = writer;
        this._encoding = null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._writer.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this._writer.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        if (this._encoding == null) {
            this._writer.write(new String(bArr));
        } else {
            this._writer.write(new String(bArr, this._encoding));
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this._encoding == null) {
            this._writer.write(new String(bArr, i, i2));
        } else {
            this._writer.write(new String(bArr, i, i2, this._encoding));
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
        this.a[0] = (byte) i;
        write(this.a);
    }
}
