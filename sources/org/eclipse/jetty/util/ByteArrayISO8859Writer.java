package org.eclipse.jetty.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class ByteArrayISO8859Writer extends Writer {
    private byte[] a;
    private int b;
    private ByteArrayOutputStream2 c;
    private OutputStreamWriter d;
    private boolean e;

    public ByteArrayISO8859Writer() {
        this.c = null;
        this.d = null;
        this.e = false;
        this.a = new byte[2048];
    }

    public ByteArrayISO8859Writer(int i) {
        this.c = null;
        this.d = null;
        this.e = false;
        this.a = new byte[i];
    }

    public ByteArrayISO8859Writer(byte[] bArr) {
        this.c = null;
        this.d = null;
        this.e = false;
        this.a = bArr;
        this.e = true;
    }

    public Object getLock() {
        return this.lock;
    }

    public int size() {
        return this.b;
    }

    public int capacity() {
        return this.a.length;
    }

    public int spareCapacity() {
        return this.a.length - this.b;
    }

    public void setLength(int i) {
        this.b = i;
    }

    public byte[] getBuf() {
        return this.a;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this.a, 0, this.b);
    }

    public void write(char c) throws IOException {
        ensureSpareCapacity(1);
        if (c >= 0 && c <= 127) {
            byte[] bArr = this.a;
            int i = this.b;
            this.b = i + 1;
            bArr[i] = (byte) c;
            return;
        }
        a(new char[]{c}, 0, 1);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        ensureSpareCapacity(cArr.length);
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            if (c >= 0 && c <= 127) {
                byte[] bArr = this.a;
                int i2 = this.b;
                this.b = i2 + 1;
                bArr[i2] = (byte) c;
            } else {
                a(cArr, i, cArr.length - i);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        ensureSpareCapacity(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c >= 0 && c <= 127) {
                byte[] bArr = this.a;
                int i4 = this.b;
                this.b = i4 + 1;
                bArr[i4] = (byte) c;
            } else {
                a(cArr, i + i3, i2 - i3);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        if (str == null) {
            write("null", 0, 4);
            return;
        }
        int length = str.length();
        ensureSpareCapacity(length);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this.a;
                int i2 = this.b;
                this.b = i2 + 1;
                bArr[i2] = (byte) cCharAt;
            } else {
                a(str.toCharArray(), i, length - i);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        ensureSpareCapacity(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            char cCharAt = str.charAt(i + i3);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this.a;
                int i4 = this.b;
                this.b = i4 + 1;
                bArr[i4] = (byte) cCharAt;
            } else {
                a(str.toCharArray(), i + i3, i2 - i3);
                return;
            }
        }
    }

    private void a(char[] cArr, int i, int i2) throws IOException {
        if (this.c == null) {
            this.c = new ByteArrayOutputStream2(i2 * 2);
            this.d = new OutputStreamWriter(this.c, "ISO-8859-1");
        } else {
            this.c.reset();
        }
        this.d.write(cArr, i, i2);
        this.d.flush();
        ensureSpareCapacity(this.c.getCount());
        System.arraycopy(this.c.getBuf(), 0, this.a, this.b, this.c.getCount());
        this.b += this.c.getCount();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    public void resetWriter() {
        this.b = 0;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void destroy() {
        this.a = null;
    }

    public void ensureSpareCapacity(int i) throws IOException {
        if (this.b + i > this.a.length) {
            if (this.e) {
                throw new IOException("Buffer overflow: " + this.a.length);
            }
            byte[] bArr = new byte[((this.a.length + i) * 4) / 3];
            System.arraycopy(this.a, 0, bArr, 0, this.b);
            this.a = bArr;
        }
    }

    public byte[] getByteArray() {
        byte[] bArr = new byte[this.b];
        System.arraycopy(this.a, 0, bArr, 0, this.b);
        return bArr;
    }
}
