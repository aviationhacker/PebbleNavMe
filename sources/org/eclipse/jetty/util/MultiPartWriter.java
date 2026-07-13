package org.eclipse.jetty.util;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class MultiPartWriter extends FilterWriter {
    public static String MULTIPART_MIXED = MultiPartOutputStream.MULTIPART_MIXED;
    public static String MULTIPART_X_MIXED_REPLACE = MultiPartOutputStream.MULTIPART_X_MIXED_REPLACE;
    private String a;
    private boolean b;

    public MultiPartWriter(Writer writer) {
        super(writer);
        this.b = false;
        this.a = "jetty" + System.identityHashCode(this) + Long.toString(System.currentTimeMillis(), 36);
        this.b = false;
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.b) {
            this.out.write("\r\n");
        }
        this.out.write("--");
        this.out.write(this.a);
        this.out.write("--");
        this.out.write("\r\n");
        this.b = false;
        super.close();
    }

    public String getBoundary() {
        return this.a;
    }

    public void startPart(String str) throws IOException {
        if (this.b) {
            this.out.write("\r\n");
        }
        this.out.write("--");
        this.out.write(this.a);
        this.out.write("\r\n");
        this.out.write("Content-Type: ");
        this.out.write(str);
        this.out.write("\r\n");
        this.out.write("\r\n");
        this.b = true;
    }

    public void endPart() throws IOException {
        if (this.b) {
            this.out.write("\r\n");
        }
        this.b = false;
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.b) {
            this.out.write("\r\n");
        }
        this.out.write("--");
        this.out.write(this.a);
        this.out.write("\r\n");
        this.out.write("Content-Type: ");
        this.out.write(str);
        this.out.write("\r\n");
        for (int i = 0; strArr != null && i < strArr.length; i++) {
            this.out.write(strArr[i]);
            this.out.write("\r\n");
        }
        this.out.write("\r\n");
        this.b = true;
    }
}
