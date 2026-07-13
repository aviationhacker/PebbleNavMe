package org.eclipse.jetty.http;

import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.UrlEncoded;
import org.eclipse.jetty.util.Utf8StringBuffer;

/* JADX INFO: loaded from: classes.dex */
public class EncodedHttpURI extends HttpURI {
    private final String p;

    public EncodedHttpURI(String str) {
        this.p = str;
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getScheme() {
        if (this.d == this.e) {
            return null;
        }
        int i = this.e - this.d;
        if (i == 5 && this.b[this.d] == 104 && this.b[this.d + 1] == 116 && this.b[this.d + 2] == 116 && this.b[this.d + 3] == 112) {
            return "http";
        }
        if (i == 6 && this.b[this.d] == 104 && this.b[this.d + 1] == 116 && this.b[this.d + 2] == 116 && this.b[this.d + 3] == 112 && this.b[this.d + 4] == 115) {
            return "https";
        }
        return StringUtil.toString(this.b, this.d, (this.e - this.d) - 1, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getAuthority() {
        if (this.e == this.i) {
            return null;
        }
        return StringUtil.toString(this.b, this.e, this.i - this.e, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getHost() {
        if (this.f == this.g) {
            return null;
        }
        return StringUtil.toString(this.b, this.f, this.g - this.f, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public int getPort() {
        if (this.g == this.i) {
            return -1;
        }
        return TypeUtil.parseInt(this.b, this.g + 1, (this.i - this.g) - 1, 10);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getPath() {
        if (this.i == this.j) {
            return null;
        }
        return StringUtil.toString(this.b, this.i, this.j - this.i, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getDecodedPath() {
        if (this.i == this.j) {
            return null;
        }
        return URIUtil.decodePath(this.b, this.i, this.j - this.i);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getPathAndParam() {
        if (this.i == this.k) {
            return null;
        }
        return StringUtil.toString(this.b, this.i, this.k - this.i, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getCompletePath() {
        if (this.i == this.m) {
            return null;
        }
        return StringUtil.toString(this.b, this.i, this.m - this.i, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getParam() {
        if (this.j == this.k) {
            return null;
        }
        return StringUtil.toString(this.b, this.j + 1, (this.k - this.j) - 1, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getQuery() {
        if (this.k == this.l) {
            return null;
        }
        return StringUtil.toString(this.b, this.k + 1, (this.l - this.k) - 1, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public boolean hasQuery() {
        return this.l > this.k;
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getFragment() {
        if (this.l == this.m) {
            return null;
        }
        return StringUtil.toString(this.b, this.l + 1, (this.m - this.l) - 1, this.p);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public void decodeQueryTo(MultiMap multiMap) {
        if (this.k != this.l) {
            UrlEncoded.decodeTo(StringUtil.toString(this.b, this.k + 1, (this.l - this.k) - 1, this.p), multiMap, this.p);
        }
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public void decodeQueryTo(MultiMap multiMap, String str) {
        if (this.k != this.l) {
            if (str == null) {
                str = this.p;
            }
            UrlEncoded.decodeTo(StringUtil.toString(this.b, this.k + 1, (this.l - this.k) - 1, str), multiMap, str);
        }
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String toString() {
        if (this.c == null) {
            this.c = StringUtil.toString(this.b, this.d, this.m - this.d, this.p);
        }
        return this.c;
    }

    public void writeTo(Utf8StringBuffer utf8StringBuffer) {
        utf8StringBuffer.getStringBuffer().append(toString());
    }
}
