package org.eclipse.jetty.http;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.UrlEncoded;
import org.eclipse.jetty.util.Utf8StringBuilder;

/* JADX INFO: loaded from: classes.dex */
public class HttpURI {
    private static final byte[] p = new byte[0];
    boolean a;
    byte[] b;
    String c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    boolean n;
    final Utf8StringBuilder o;

    public HttpURI() {
        this.a = false;
        this.b = p;
        this.n = false;
        this.o = new Utf8StringBuilder(64);
    }

    public HttpURI(boolean z) {
        this.a = false;
        this.b = p;
        this.n = false;
        this.o = new Utf8StringBuilder(64);
        this.a = z;
    }

    public HttpURI(String str) {
        this.a = false;
        this.b = p;
        this.n = false;
        this.o = new Utf8StringBuilder(64);
        this.c = str;
        try {
            byte[] bytes = str.getBytes("UTF-8");
            parse(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public HttpURI(byte[] bArr, int i, int i2) {
        this.a = false;
        this.b = p;
        this.n = false;
        this.o = new Utf8StringBuilder(64);
        a(bArr, i, i2);
    }

    public HttpURI(URI uri) {
        this.a = false;
        this.b = p;
        this.n = false;
        this.o = new Utf8StringBuilder(64);
        parse(uri.toASCIIString());
    }

    public void parse(String str) {
        byte[] bytes = str.getBytes();
        a(bytes, 0, bytes.length);
        this.c = str;
    }

    public void parse(byte[] bArr, int i, int i2) {
        this.c = null;
        a(bArr, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (r6.g >= r6.i) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
    
        r6.h = org.eclipse.jetty.util.TypeUtil.parseInt(r6.b, r6.g + 1, (r6.i - r6.g) - 1, 10);
        r6.i = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0062, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0094, code lost:
    
        throw new java.lang.IllegalArgumentException("No port");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseConnect(byte[] r7, int r8, int r9) {
        /*
            r6 = this;
            r1 = 4
            r0 = 0
            r6.c = r0
            r0 = 0
            r6.n = r0
            r6.b = r7
            int r4 = r8 + r9
            int r0 = r8 + r9
            r6.m = r0
            r6.d = r8
            r6.e = r8
            r6.f = r8
            int r0 = r6.m
            r6.g = r0
            r0 = -1
            r6.h = r0
            int r0 = r6.m
            r6.i = r0
            int r0 = r6.m
            r6.j = r0
            int r0 = r6.m
            r6.k = r0
            int r0 = r6.m
            r6.l = r0
            r0 = r1
            r2 = r8
        L2e:
            if (r2 >= r4) goto L45
            byte[] r3 = r6.b
            r3 = r3[r2]
            r3 = r3 & 255(0xff, float:3.57E-43)
            char r5 = (char) r3
            int r3 = r2 + 1
            switch(r0) {
                case 4: goto L3e;
                case 5: goto L65;
                default: goto L3c;
            }
        L3c:
            r2 = r3
            goto L2e
        L3e:
            switch(r5) {
                case 58: goto L43;
                case 91: goto L63;
                default: goto L41;
            }
        L41:
            r2 = r3
            goto L2e
        L43:
            r6.g = r2
        L45:
            int r0 = r6.g
            int r1 = r6.i
            if (r0 >= r1) goto L8d
            byte[] r0 = r6.b
            int r1 = r6.g
            int r1 = r1 + 1
            int r2 = r6.i
            int r3 = r6.g
            int r2 = r2 - r3
            int r2 = r2 + (-1)
            r3 = 10
            int r0 = org.eclipse.jetty.util.TypeUtil.parseInt(r0, r1, r2, r3)
            r6.h = r0
            r6.i = r8
            return
        L63:
            r0 = 5
            goto L41
        L65:
            switch(r5) {
                case 47: goto L6a;
                case 93: goto L8b;
                default: goto L68;
            }
        L68:
            r2 = r3
            goto L2e
        L6a:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "No closing ']' for "
            java.lang.StringBuilder r1 = r1.append(r2)
            byte[] r2 = r6.b
            java.lang.String r3 = org.eclipse.jetty.util.URIUtil.__CHARSET
            java.lang.String r2 = org.eclipse.jetty.util.StringUtil.toString(r2, r8, r9, r3)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8b:
            r0 = r1
            goto L68
        L8d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "No port"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpURI.parseConnect(byte[], int, int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:70:0x0177. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:76:0x0195. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instruction units count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpURI.a(byte[], int, int):void");
    }

    private String a(int i, int i2) {
        this.o.reset();
        this.o.append(this.b, i, i2);
        return this.o.toString();
    }

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
        return a(this.d, (this.e - this.d) - 1);
    }

    public String getAuthority() {
        if (this.e == this.i) {
            return null;
        }
        return a(this.e, this.i - this.e);
    }

    public String getHost() {
        if (this.f == this.g) {
            return null;
        }
        return a(this.f, this.g - this.f);
    }

    public int getPort() {
        return this.h;
    }

    public String getPath() {
        if (this.i == this.j) {
            return null;
        }
        return a(this.i, this.j - this.i);
    }

    public String getDecodedPath() {
        if (this.i == this.j) {
            return null;
        }
        int i = this.j - this.i;
        boolean z = false;
        int i2 = this.i;
        while (i2 < this.j) {
            byte b = this.b[i2];
            if (b == 37) {
                if (!z) {
                    this.o.reset();
                    this.o.append(this.b, this.i, i2 - this.i);
                    z = true;
                }
                if (i2 + 2 >= this.j) {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
                if (this.b[i2 + 1] == 117) {
                    if (i2 + 5 >= this.j) {
                        throw new IllegalArgumentException("Bad %u encoding: " + this);
                    }
                    try {
                        this.o.getStringBuilder().append(new String(Character.toChars(TypeUtil.parseInt(this.b, i2 + 2, 4, 16))));
                        i2 += 5;
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                } else {
                    this.o.append((byte) (TypeUtil.parseInt(this.b, i2 + 1, 2, 16) & 255));
                    i2 += 2;
                }
            } else if (z) {
                this.o.append(b);
            }
            i2++;
        }
        if (!z) {
            return a(this.i, i);
        }
        return this.o.toString();
    }

    public String getDecodedPath(String str) {
        int length;
        byte[] bArr = null;
        if (this.i == this.j) {
            return null;
        }
        int i = this.j - this.i;
        int i2 = this.i;
        int i3 = 0;
        while (i2 < this.j) {
            byte b = this.b[i2];
            if (b == 37) {
                if (bArr == null) {
                    bArr = new byte[i];
                    System.arraycopy(this.b, this.i, bArr, 0, i3);
                }
                if (i2 + 2 >= this.j) {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
                if (this.b[i2 + 1] == 117) {
                    if (i2 + 5 >= this.j) {
                        throw new IllegalArgumentException("Bad %u encoding: " + this);
                    }
                    try {
                        byte[] bytes = new String(Character.toChars(TypeUtil.parseInt(this.b, i2 + 2, 4, 16))).getBytes(str);
                        System.arraycopy(bytes, 0, bArr, i3, bytes.length);
                        length = bytes.length + i3;
                        i2 += 5;
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                } else {
                    length = i3 + 1;
                    bArr[i3] = (byte) (TypeUtil.parseInt(this.b, i2 + 1, 2, 16) & 255);
                    i2 += 2;
                }
            } else if (bArr == null) {
                length = i3 + 1;
            } else {
                length = i3 + 1;
                bArr[i3] = b;
            }
            int i4 = i2;
            i3 = length;
            i2 = i4 + 1;
            bArr = bArr;
        }
        if (bArr == null) {
            return StringUtil.toString(this.b, this.i, this.j - this.i, str);
        }
        return StringUtil.toString(bArr, 0, i3, str);
    }

    public String getPathAndParam() {
        if (this.i == this.k) {
            return null;
        }
        return a(this.i, this.k - this.i);
    }

    public String getCompletePath() {
        if (this.i == this.m) {
            return null;
        }
        return a(this.i, this.m - this.i);
    }

    public String getParam() {
        if (this.j == this.k) {
            return null;
        }
        return a(this.j + 1, (this.k - this.j) - 1);
    }

    public String getQuery() {
        if (this.k == this.l) {
            return null;
        }
        return a(this.k + 1, (this.l - this.k) - 1);
    }

    public String getQuery(String str) {
        if (this.k == this.l) {
            return null;
        }
        return StringUtil.toString(this.b, this.k + 1, (this.l - this.k) - 1, str);
    }

    public boolean hasQuery() {
        return this.l > this.k;
    }

    public String getFragment() {
        if (this.l == this.m) {
            return null;
        }
        return a(this.l + 1, (this.m - this.l) - 1);
    }

    public void decodeQueryTo(MultiMap multiMap) {
        if (this.k != this.l) {
            this.o.reset();
            UrlEncoded.decodeUtf8To(this.b, this.k + 1, (this.l - this.k) - 1, multiMap, this.o);
        }
    }

    public void decodeQueryTo(MultiMap multiMap, String str) {
        if (this.k != this.l) {
            if (str == null || StringUtil.isUTF8(str)) {
                UrlEncoded.decodeUtf8To(this.b, this.k + 1, (this.l - this.k) - 1, multiMap);
            } else {
                UrlEncoded.decodeTo(StringUtil.toString(this.b, this.k + 1, (this.l - this.k) - 1, str), multiMap, str);
            }
        }
    }

    public void clear() {
        this.m = 0;
        this.l = 0;
        this.k = 0;
        this.j = 0;
        this.i = 0;
        this.g = 0;
        this.f = 0;
        this.e = 0;
        this.d = 0;
        this.b = p;
        this.c = "";
        this.n = false;
    }

    public String toString() {
        if (this.c == null) {
            this.c = a(this.d, this.m - this.d);
        }
        return this.c;
    }

    public void writeTo(Utf8StringBuilder utf8StringBuilder) {
        utf8StringBuilder.append(this.b, this.d, this.m - this.d);
    }
}
