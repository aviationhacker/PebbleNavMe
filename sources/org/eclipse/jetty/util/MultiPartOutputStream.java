package org.eclipse.jetty.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MultiPartOutputStream extends FilterOutputStream {
    private String c;
    private byte[] d;
    private boolean e;
    private static final byte[] a = {13, 10};
    private static final byte[] b = {45, 45};
    public static String MULTIPART_MIXED = "multipart/mixed";
    public static String MULTIPART_X_MIXED_REPLACE = "multipart/x-mixed-replace";

    public MultiPartOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.e = false;
        this.c = "jetty" + System.identityHashCode(this) + Long.toString(System.currentTimeMillis(), 36);
        this.d = this.c.getBytes("ISO-8859-1");
        this.e = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.e) {
            this.out.write(a);
        }
        this.out.write(b);
        this.out.write(this.d);
        this.out.write(b);
        this.out.write(a);
        this.e = false;
        super.close();
    }

    public String getBoundary() {
        return this.c;
    }

    public OutputStream getOut() {
        return this.out;
    }

    public void startPart(String str) throws IOException {
        if (this.e) {
            this.out.write(a);
        }
        this.e = true;
        this.out.write(b);
        this.out.write(this.d);
        this.out.write(a);
        if (str != null) {
            this.out.write(("Content-Type: " + str).getBytes("ISO-8859-1"));
        }
        this.out.write(a);
        this.out.write(a);
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.e) {
            this.out.write(a);
        }
        this.e = true;
        this.out.write(b);
        this.out.write(this.d);
        this.out.write(a);
        if (str != null) {
            this.out.write(("Content-Type: " + str).getBytes("ISO-8859-1"));
        }
        this.out.write(a);
        for (int i = 0; strArr != null && i < strArr.length; i++) {
            this.out.write(strArr[i].getBytes("ISO-8859-1"));
            this.out.write(a);
        }
        this.out.write(a);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
    }
}
