package org.eclipse.jetty.http;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class HttpException extends IOException {
    int a;
    String b;

    public HttpException(int i) {
        this.a = i;
        this.b = null;
    }

    public HttpException(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public HttpException(int i, String str, Throwable th) {
        this.a = i;
        this.b = str;
        initCause(th);
    }

    public String getReason() {
        return this.b;
    }

    public void setReason(String str) {
        this.b = str;
    }

    public int getStatus() {
        return this.a;
    }

    public void setStatus(int i) {
        this.a = i;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "HttpException(" + this.a + "," + this.b + "," + super.getCause() + ")";
    }
}
