package org.eclipse.jetty.util;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ReadLineInputStream extends BufferedInputStream {
    boolean a;
    boolean b;

    public ReadLineInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public ReadLineInputStream(InputStream inputStream, int i) {
        super(inputStream, i);
    }

    public String readLine() throws IOException {
        mark(this.buf.length);
        while (true) {
            int i = super.read();
            if (this.markpos < 0) {
                throw new IOException("Buffer size exceeded: no line terminator");
            }
            if (i == -1) {
                int i2 = this.markpos;
                this.markpos = -1;
                if (this.pos > i2) {
                    return new String(this.buf, i2, this.pos - i2, StringUtil.__UTF8_CHARSET);
                }
                return null;
            }
            if (i == 13) {
                int i3 = this.pos;
                if (this.a && this.pos < this.count) {
                    if (this.buf[this.pos] == 10) {
                        this.pos++;
                    }
                } else {
                    this.b = true;
                }
                int i4 = this.markpos;
                this.markpos = -1;
                return new String(this.buf, i4, (i3 - i4) - 1, StringUtil.__UTF8_CHARSET);
            }
            if (i == 10) {
                if (this.b) {
                    this.b = false;
                    this.a = true;
                    this.markpos++;
                } else {
                    int i5 = this.markpos;
                    this.markpos = -1;
                    return new String(this.buf, i5, (this.pos - i5) - 1, StringUtil.__UTF8_CHARSET);
                }
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int i;
        i = super.read();
        if (this.b) {
            this.b = false;
            if (this.a && i == 10) {
                i = super.read();
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002b A[Catch: all -> 0x0030, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x0008, B:9:0x000f, B:16:0x001e, B:17:0x002b), top: B:22:0x0002 }] */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int read(byte[] r3, int r4, int r5) {
        /*
            r2 = this;
            r0 = -1
            monitor-enter(r2)
            boolean r1 = r2.b     // Catch: java.lang.Throwable -> L30
            if (r1 == 0) goto L2b
            if (r5 <= 0) goto L2b
            r1 = 0
            r2.b = r1     // Catch: java.lang.Throwable -> L30
            boolean r1 = r2.a     // Catch: java.lang.Throwable -> L30
            if (r1 == 0) goto L2b
            int r1 = super.read()     // Catch: java.lang.Throwable -> L30
            if (r1 != r0) goto L17
        L15:
            monitor-exit(r2)
            return r0
        L17:
            r0 = 10
            if (r1 == r0) goto L2b
            r0 = r1 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r3[r4] = r0     // Catch: java.lang.Throwable -> L30
            int r0 = r4 + 1
            int r1 = r5 + (-1)
            int r0 = super.read(r3, r0, r1)     // Catch: java.lang.Throwable -> L30
            int r0 = r0 + 1
            goto L15
        L2b:
            int r0 = super.read(r3, r4, r5)     // Catch: java.lang.Throwable -> L30
            goto L15
        L30:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.ReadLineInputStream.read(byte[], int, int):int");
    }
}
