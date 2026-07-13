package org.eclipse.jetty.http;

/* JADX INFO: loaded from: classes.dex */
public class HttpCookie {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final int e;
    private final String f;
    private final boolean g;
    private final int h;
    private final boolean i;

    public HttpCookie(String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = null;
        this.d = null;
        this.i = false;
        this.e = -1;
        this.f = null;
        this.g = false;
        this.h = 0;
    }

    public HttpCookie(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = null;
        this.d = str3;
        this.i = false;
        this.e = -1;
        this.f = str4;
        this.g = false;
        this.h = 0;
    }

    public HttpCookie(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = null;
        this.d = null;
        this.i = false;
        this.e = i;
        this.f = null;
        this.g = false;
        this.h = 0;
    }

    public HttpCookie(String str, String str2, String str3, String str4, int i, boolean z, boolean z2) {
        this.c = null;
        this.d = str3;
        this.i = z;
        this.e = i;
        this.a = str;
        this.f = str4;
        this.g = z2;
        this.b = str2;
        this.h = 0;
    }

    public HttpCookie(String str, String str2, String str3, String str4, int i, boolean z, boolean z2, String str5, int i2) {
        this.c = str5;
        this.d = str3;
        this.i = z;
        this.e = i;
        this.a = str;
        this.f = str4;
        this.g = z2;
        this.b = str2;
        this.h = i2;
    }

    public String getName() {
        return this.a;
    }

    public String getValue() {
        return this.b;
    }

    public String getComment() {
        return this.c;
    }

    public String getDomain() {
        return this.d;
    }

    public int getMaxAge() {
        return this.e;
    }

    public String getPath() {
        return this.f;
    }

    public boolean isSecure() {
        return this.g;
    }

    public int getVersion() {
        return this.h;
    }

    public boolean isHttpOnly() {
        return this.i;
    }
}
