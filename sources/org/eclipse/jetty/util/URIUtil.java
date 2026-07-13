package org.eclipse.jetty.util;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class URIUtil implements Cloneable {
    public static final String HTTP = "http";
    public static final String HTTPS = "https";
    public static final String HTTPS_COLON = "https:";
    public static final String HTTP_COLON = "http:";
    public static final String SLASH = "/";
    public static final String __CHARSET = System.getProperty("org.eclipse.jetty.util.URI.charset", "UTF-8");

    private URIUtil() {
    }

    public static String encodePath(String str) {
        StringBuilder sbEncodePath;
        return (str == null || str.length() == 0 || (sbEncodePath = encodePath(null, str)) == null) ? str : sbEncodePath.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        if (r5 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.StringBuilder encodePath(java.lang.StringBuilder r5, java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.URIUtil.encodePath(java.lang.StringBuilder, java.lang.String):java.lang.StringBuilder");
    }

    public static StringBuilder encodeString(StringBuilder sb, String str, String str2) {
        if (sb == null) {
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '%' || str2.indexOf(cCharAt) >= 0) {
                    sb = new StringBuilder(str.length() << 1);
                    break;
                }
            }
            if (sb == null) {
                return null;
            }
        }
        synchronized (sb) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == '%' || str2.indexOf(cCharAt2) >= 0) {
                    sb.append('%');
                    StringUtil.append(sb, (byte) (cCharAt2 & 255), 16);
                } else {
                    sb.append(cCharAt2);
                }
            }
        }
        return sb;
    }

    public static String decodePath(String str) {
        char[] cArr;
        String str2;
        int length;
        String str3;
        int i;
        byte[] bArr;
        int i2;
        int i3;
        char[] cArr2;
        int i4;
        byte[] bArr2 = null;
        if (str == null) {
            return null;
        }
        int length2 = str.length();
        int i5 = 0;
        int i6 = 0;
        int length3 = 0;
        char[] cArr3 = null;
        while (true) {
            if (i5 >= length2) {
                break;
            }
            char cCharAt = str.charAt(i5);
            if (cCharAt == '%' && i5 + 2 < length2) {
                if (cArr3 == null) {
                    cArr3 = new char[length2];
                    bArr2 = new byte[length2];
                    str.getChars(0, i5, cArr3, 0);
                }
                int i7 = i6 + 1;
                bArr2[i6] = (byte) (TypeUtil.parseInt(str, i5 + 1, 2, 16) & 255);
                cArr2 = cArr3;
                i4 = i7;
                i3 = length3;
                byte[] bArr3 = bArr2;
                i2 = i5 + 2;
                bArr = bArr3;
            } else if (cCharAt == ';') {
                if (cArr3 == null) {
                    char[] cArr4 = new char[length2];
                    str.getChars(0, i5, cArr4, 0);
                    cArr = cArr4;
                }
            } else if (bArr2 == null) {
                i3 = length3 + 1;
                int i8 = i5;
                bArr = bArr2;
                i2 = i8;
                int i9 = i6;
                cArr2 = cArr3;
                i4 = i9;
            } else {
                if (i6 > 0) {
                    try {
                        str3 = new String(bArr2, 0, i6, __CHARSET);
                    } catch (UnsupportedEncodingException e) {
                        str3 = new String(bArr2, 0, i6);
                    }
                    str3.getChars(0, str3.length(), cArr3, length3);
                    length3 += str3.length();
                    i = 0;
                } else {
                    i = i6;
                }
                cArr3[length3] = cCharAt;
                int i10 = i5;
                bArr = bArr2;
                i2 = i10;
                int i11 = i;
                i3 = length3 + 1;
                cArr2 = cArr3;
                i4 = i11;
            }
            int i12 = i2 + 1;
            length3 = i3;
            int i13 = i4;
            cArr3 = cArr2;
            i6 = i13;
            bArr2 = bArr;
            i5 = i12;
        }
        i5 = length3;
        cArr = cArr3;
        if (cArr != null) {
            if (i6 > 0) {
                try {
                    str2 = new String(bArr2, 0, i6, __CHARSET);
                } catch (UnsupportedEncodingException e2) {
                    str2 = new String(bArr2, 0, i6);
                }
                str2.getChars(0, str2.length(), cArr, i5);
                length = str2.length() + i5;
            } else {
                length = i5;
            }
            return new String(cArr, 0, length);
        }
        return str;
    }

    public static String decodePath(byte[] bArr, int i, int i2) {
        byte b;
        int i3;
        byte[] bArr2 = null;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= i2) {
                i4 = i2;
                break;
            }
            byte b2 = bArr[i4 + i];
            if (b2 == 37 && i4 + 2 < i2) {
                byte b3 = (byte) (TypeUtil.parseInt(bArr, i4 + i + 1, 2, 16) & 255);
                i4 += 2;
                b = b3;
            } else {
                if (b2 == 59) {
                    break;
                }
                if (bArr2 == null) {
                    i3 = i5 + 1;
                    int i6 = i4;
                    i5 = i3;
                    i4 = i6 + 1;
                    bArr2 = bArr2;
                } else {
                    b = b2;
                }
            }
            if (bArr2 == null) {
                bArr2 = new byte[i2];
                for (int i7 = 0; i7 < i5; i7++) {
                    bArr2[i7] = bArr[i7 + i];
                }
            }
            i3 = i5 + 1;
            bArr2[i5] = b;
            int i62 = i4;
            i5 = i3;
            i4 = i62 + 1;
            bArr2 = bArr2;
        }
        if (bArr2 == null) {
            return StringUtil.toString(bArr, i, i4, __CHARSET);
        }
        return StringUtil.toString(bArr2, 0, i5, __CHARSET);
    }

    public static String addPaths(String str, String str2) {
        if (str == null || str.length() == 0) {
            return (str == null || str2 != null) ? str2 : str;
        }
        if (str2 != null && str2.length() != 0) {
            int iIndexOf = str.indexOf(59);
            if (iIndexOf < 0) {
                iIndexOf = str.indexOf(63);
            }
            if (iIndexOf == 0) {
                return str2 + str;
            }
            if (iIndexOf < 0) {
                iIndexOf = str.length();
            }
            StringBuilder sb = new StringBuilder(str.length() + str2.length() + 2);
            sb.append(str);
            if (sb.charAt(iIndexOf - 1) == '/') {
                if (str2.startsWith(SLASH)) {
                    sb.deleteCharAt(iIndexOf - 1);
                    sb.insert(iIndexOf - 1, str2);
                } else {
                    sb.insert(iIndexOf, str2);
                }
            } else if (str2.startsWith(SLASH)) {
                sb.insert(iIndexOf, str2);
            } else {
                sb.insert(iIndexOf, '/');
                sb.insert(iIndexOf + 1, str2);
            }
            return sb.toString();
        }
        return str;
    }

    public static String parentPath(String str) {
        int iLastIndexOf;
        if (str == null || SLASH.equals(str) || (iLastIndexOf = str.lastIndexOf(47, str.length() - 2)) < 0) {
            return null;
        }
        return str.substring(0, iLastIndexOf + 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0166 A[PHI: r3
  0x0166: PHI (r3v11 int) = (r3v1 int), (r3v2 int), (r3v1 int), (r3v8 int), (r3v1 int) binds: [B:47:0x008e, B:49:0x0092, B:90:0x010e, B:92:0x0112, B:19:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0173 A[PHI: r2 r3 r6
  0x0173: PHI (r2v5 int) = (r2v1 int), (r2v1 int), (r2v1 int), (r2v2 int), (r2v2 int), (r2v1 int), (r2v1 int), (r2v1 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]
  0x0173: PHI (r3v6 int) = (r3v2 int), (r3v2 int), (r3v2 int), (r3v1 int), (r3v1 int), (r3v8 int), (r3v8 int), (r3v8 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]
  0x0173: PHI (r6v22 int) = (r6v6 int), (r6v6 int), (r6v6 int), (r6v10 int), (r6v10 int), (r6v27 int), (r6v27 int), (r6v27 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String canonicalPath(java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.URIUtil.canonicalPath(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String compactPath(java.lang.String r7) {
        /*
            r5 = 2
            r1 = 0
            if (r7 == 0) goto La
            int r0 = r7.length()
            if (r0 != 0) goto Lb
        La:
            return r7
        Lb:
            int r4 = r7.length()
            r2 = r1
            r0 = r1
        L11:
            if (r2 >= r4) goto L22
            char r3 = r7.charAt(r2)
            switch(r3) {
                case 47: goto L1e;
                case 63: goto La;
                default: goto L1a;
            }
        L1a:
            r0 = r1
        L1b:
            int r2 = r2 + 1
            goto L11
        L1e:
            int r0 = r0 + 1
            if (r0 != r5) goto L1b
        L22:
            if (r0 < r5) goto La
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            int r3 = r7.length()
            r5.<init>(r3)
            r5.append(r7, r1, r2)
            r3 = r0
        L31:
            if (r2 >= r4) goto L45
            char r6 = r7.charAt(r2)
            switch(r6) {
                case 47: goto L4a;
                case 63: goto L42;
                default: goto L3a;
            }
        L3a:
            r5.append(r6)
            r0 = r1
        L3e:
            int r2 = r2 + 1
            r3 = r0
            goto L31
        L42:
            r5.append(r7, r2, r4)
        L45:
            java.lang.String r7 = r5.toString()
            goto La
        L4a:
            int r0 = r3 + 1
            if (r3 != 0) goto L3e
            r5.append(r6)
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.URIUtil.compactPath(java.lang.String):java.lang.String");
    }

    public static boolean hasScheme(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ':') {
                return true;
            }
            if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                if (i <= 0) {
                    return false;
                }
                if ((cCharAt < '0' || cCharAt > '9') && cCharAt != '.' && cCharAt != '+' && cCharAt != '-') {
                    return false;
                }
            }
        }
        return false;
    }
}
