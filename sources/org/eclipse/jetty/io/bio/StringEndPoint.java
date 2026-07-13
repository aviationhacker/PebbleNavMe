package org.eclipse.jetty.io.bio;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class StringEndPoint extends StreamEndPoint {
    String a;
    ByteArrayInputStream b;
    ByteArrayOutputStream c;

    public StringEndPoint() {
        super(null, null);
        this.a = "UTF-8";
        this.b = new ByteArrayInputStream(new byte[0]);
        this.c = new ByteArrayOutputStream();
        this.d = this.b;
        this.e = this.c;
    }

    public StringEndPoint(String str) {
        this();
        if (str != null) {
            this.a = str;
        }
    }

    public void setInput(String str) {
        try {
            this.b = new ByteArrayInputStream(str.getBytes(this.a));
            this.d = this.b;
            this.c = new ByteArrayOutputStream();
            this.e = this.c;
            this.g = false;
            this.h = false;
        } catch (Exception e) {
            throw new IllegalStateException(e.toString());
        }
    }

    public String getOutput() {
        try {
            String str = new String(this.c.toByteArray(), this.a);
            this.c.reset();
            return str;
        } catch (Exception e) {
            throw new IllegalStateException(this.a) { // from class: org.eclipse.jetty.io.bio.StringEndPoint.1
                {
                    initCause(e);
                }
            };
        }
    }

    public boolean hasMore() {
        return this.b.available() > 0;
    }
}
