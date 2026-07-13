package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class FileBackedOutputStream extends OutputStream {
    private final int a;
    private final boolean b;
    private final ByteSource c;
    private OutputStream d;
    private a e;
    private File f;

    static class a extends ByteArrayOutputStream {
        private a() {
        }

        byte[] a() {
            return this.buf;
        }

        int b() {
            return this.count;
        }
    }

    public FileBackedOutputStream(int i) {
        this(i, false);
    }

    public FileBackedOutputStream(int i, boolean z) {
        this.a = i;
        this.b = z;
        this.e = new a();
        this.d = this.e;
        if (z) {
            this.c = new ByteSource() { // from class: com.google.common.io.FileBackedOutputStream.1
                @Override // com.google.common.io.ByteSource
                public InputStream openStream() {
                    return FileBackedOutputStream.this.a();
                }

                protected void finalize() {
                    try {
                        FileBackedOutputStream.this.reset();
                    } catch (Throwable th) {
                        th.printStackTrace(System.err);
                    }
                }
            };
        } else {
            this.c = new ByteSource() { // from class: com.google.common.io.FileBackedOutputStream.2
                @Override // com.google.common.io.ByteSource
                public InputStream openStream() {
                    return FileBackedOutputStream.this.a();
                }
            };
        }
    }

    public ByteSource asByteSource() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized InputStream a() {
        InputStream byteArrayInputStream;
        if (this.f != null) {
            byteArrayInputStream = new FileInputStream(this.f);
        } else {
            byteArrayInputStream = new ByteArrayInputStream(this.e.a(), 0, this.e.b());
        }
        return byteArrayInputStream;
    }

    public synchronized void reset() {
        try {
            close();
            if (this.e == null) {
                this.e = new a();
            } else {
                this.e.reset();
            }
            this.d = this.e;
            if (this.f != null) {
                File file = this.f;
                this.f = null;
                if (!file.delete()) {
                    String strValueOf = String.valueOf(file);
                    throw new IOException(new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Could not delete: ").append(strValueOf).toString());
                }
            }
        } catch (Throwable th) {
            if (this.e == null) {
                this.e = new a();
            } else {
                this.e.reset();
            }
            this.d = this.e;
            if (this.f != null) {
                File file2 = this.f;
                this.f = null;
                if (!file2.delete()) {
                    String strValueOf2 = String.valueOf(file2);
                    throw new IOException(new StringBuilder(String.valueOf(strValueOf2).length() + 18).append("Could not delete: ").append(strValueOf2).toString());
                }
            }
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
        a(1);
        this.d.write(i);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        this.d.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.d.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() {
        this.d.flush();
    }

    private void a(int i) throws IOException {
        if (this.f == null && this.e.b() + i > this.a) {
            File fileCreateTempFile = File.createTempFile("FileBackedOutputStream", null);
            if (this.b) {
                fileCreateTempFile.deleteOnExit();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(this.e.a(), 0, this.e.b());
            fileOutputStream.flush();
            this.d = fileOutputStream;
            this.f = fileCreateTempFile;
            this.e = null;
        }
    }
}
