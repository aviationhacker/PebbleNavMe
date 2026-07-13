package org.eclipse.jetty.util;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes.dex */
public class QuotedStringTokenizer extends StringTokenizer {
    private static final char[] k = new char[32];
    private String a;
    private String b;
    private boolean c;
    private boolean d;
    private StringBuffer e;
    private boolean f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;

    public QuotedStringTokenizer(String str, String str2, boolean z, boolean z2) {
        super("");
        this.b = "\t\n\r";
        this.c = false;
        this.d = false;
        this.f = false;
        this.g = 0;
        this.h = 0;
        this.i = true;
        this.j = true;
        this.a = str;
        if (str2 != null) {
            this.b = str2;
        }
        this.d = z;
        this.c = z2;
        if (this.b.indexOf(39) >= 0 || this.b.indexOf(34) >= 0) {
            throw new Error("Can't use quotes as delimiters: " + this.b);
        }
        this.e = new StringBuffer(this.a.length() > 1024 ? 512 : this.a.length() / 2);
    }

    public QuotedStringTokenizer(String str, String str2, boolean z) {
        this(str, str2, z, false);
    }

    public QuotedStringTokenizer(String str, String str2) {
        this(str, str2, false, false);
    }

    public QuotedStringTokenizer(String str) {
        this(str, null, false, false);
    }

    @Override // java.util.StringTokenizer
    public boolean hasMoreTokens() {
        if (this.f) {
            return true;
        }
        this.h = this.g;
        boolean z = false;
        char c = 0;
        while (this.g < this.a.length()) {
            String str = this.a;
            int i = this.g;
            this.g = i + 1;
            char cCharAt = str.charAt(i);
            switch (c) {
                case 0:
                    if (this.b.indexOf(cCharAt) >= 0) {
                        if (this.d) {
                            this.e.append(cCharAt);
                            this.f = true;
                            return true;
                        }
                    } else if (cCharAt == '\'' && this.j) {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 2;
                    } else if (cCharAt == '\"' && this.i) {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 3;
                    } else {
                        this.e.append(cCharAt);
                        this.f = true;
                        c = 1;
                    }
                    break;
                case 1:
                    this.f = true;
                    if (this.b.indexOf(cCharAt) >= 0) {
                        if (this.d) {
                            this.g--;
                        }
                        return this.f;
                    }
                    if (cCharAt == '\'' && this.j) {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 2;
                    } else if (cCharAt == '\"' && this.i) {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 3;
                    } else {
                        this.e.append(cCharAt);
                    }
                    break;
                    break;
                case 2:
                    this.f = true;
                    if (z) {
                        this.e.append(cCharAt);
                        z = false;
                    } else if (cCharAt == '\'') {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 1;
                    } else if (cCharAt == '\\') {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        z = true;
                    } else {
                        this.e.append(cCharAt);
                    }
                    break;
                case 3:
                    this.f = true;
                    if (z) {
                        this.e.append(cCharAt);
                        z = false;
                    } else if (cCharAt == '\"') {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        c = 1;
                    } else if (cCharAt == '\\') {
                        if (this.c) {
                            this.e.append(cCharAt);
                        }
                        z = true;
                    } else {
                        this.e.append(cCharAt);
                    }
                    break;
            }
        }
        return this.f;
    }

    @Override // java.util.StringTokenizer
    public String nextToken() {
        if (!hasMoreTokens() || this.e == null) {
            throw new NoSuchElementException();
        }
        String string = this.e.toString();
        this.e.setLength(0);
        this.f = false;
        return string;
    }

    @Override // java.util.StringTokenizer
    public String nextToken(String str) {
        this.b = str;
        this.g = this.h;
        this.e.setLength(0);
        this.f = false;
        return nextToken();
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public boolean hasMoreElements() {
        return hasMoreTokens();
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public Object nextElement() {
        return nextToken();
    }

    @Override // java.util.StringTokenizer
    public int countTokens() {
        return -1;
    }

    public static String quoteIfNeeded(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\\' || cCharAt == '\"' || cCharAt == '\'' || Character.isWhitespace(cCharAt) || str2.indexOf(cCharAt) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
                quote(stringBuffer, str);
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
        quote(stringBuffer, str);
        return stringBuffer.toString();
    }

    static {
        Arrays.fill(k, (char) 65535);
        k[8] = 'b';
        k[9] = 't';
        k[10] = 'n';
        k[12] = 'f';
        k[13] = 'r';
    }

    public static void quote(Appendable appendable, String str) {
        try {
            appendable.append('\"');
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt >= ' ') {
                    if (cCharAt == '\"' || cCharAt == '\\') {
                        appendable.append('\\');
                    }
                    appendable.append(cCharAt);
                } else {
                    char c = k[cCharAt];
                    if (c == 65535) {
                        appendable.append('\\').append('u').append('0').append('0');
                        if (cCharAt < 16) {
                            appendable.append('0');
                        }
                        appendable.append(Integer.toString(cCharAt, 16));
                    } else {
                        appendable.append('\\').append(c);
                    }
                }
            }
            appendable.append('\"');
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean quoteIfNeeded(Appendable appendable, String str, String str2) {
        for (int i = 0; i < str.length(); i++) {
            if (str2.indexOf(str.charAt(i)) >= 0) {
                quote(appendable, str);
                return true;
            }
        }
        try {
            appendable.append(str);
            return false;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String unquoteOnly(String str) {
        return unquoteOnly(str, false);
    }

    public static String unquoteOnly(String str, boolean z) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt == '\"' || cCharAt == '\'') {
            StringBuilder sb = new StringBuilder(str.length() - 2);
            boolean z2 = false;
            for (int i = 1; i < str.length() - 1; i++) {
                char cCharAt2 = str.charAt(i);
                if (z2) {
                    if (z && !a(cCharAt2)) {
                        sb.append('\\');
                    }
                    sb.append(cCharAt2);
                    z2 = false;
                } else if (cCharAt2 == '\\') {
                    z2 = true;
                } else {
                    sb.append(cCharAt2);
                }
            }
            return sb.toString();
        }
        return str;
    }

    public static String unquote(String str) {
        return unquote(str, false);
    }

    public static String unquote(String str, boolean z) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt == '\"' || cCharAt == '\'') {
            StringBuilder sb = new StringBuilder(str.length() - 2);
            int i = 1;
            boolean z2 = false;
            while (i < str.length() - 1) {
                char cCharAt2 = str.charAt(i);
                if (z2) {
                    switch (cCharAt2) {
                        case '\"':
                            sb.append('\"');
                            z2 = false;
                            break;
                        case '/':
                            sb.append('/');
                            z2 = false;
                            break;
                        case '\\':
                            sb.append('\\');
                            z2 = false;
                            break;
                        case 'b':
                            sb.append('\b');
                            z2 = false;
                            break;
                        case 'f':
                            sb.append('\f');
                            z2 = false;
                            break;
                        case 'n':
                            sb.append('\n');
                            z2 = false;
                            break;
                        case 'r':
                            sb.append(CharUtils.CR);
                            z2 = false;
                            break;
                        case 't':
                            sb.append('\t');
                            z2 = false;
                            break;
                        case 'u':
                            int i2 = i + 1;
                            int i3 = i2 + 1;
                            int iConvertHexDigit = (TypeUtil.convertHexDigit((byte) str.charAt(i)) << Ascii.CAN) + (TypeUtil.convertHexDigit((byte) str.charAt(i2)) << Ascii.DLE);
                            int i4 = i3 + 1;
                            int iConvertHexDigit2 = (TypeUtil.convertHexDigit((byte) str.charAt(i3)) << 8) + iConvertHexDigit;
                            i = i4 + 1;
                            sb.append((char) (TypeUtil.convertHexDigit((byte) str.charAt(i4)) + iConvertHexDigit2));
                            z2 = false;
                            break;
                        default:
                            if (z && !a(cCharAt2)) {
                                sb.append('\\');
                            }
                            sb.append(cCharAt2);
                            z2 = false;
                            break;
                    }
                } else if (cCharAt2 == '\\') {
                    z2 = true;
                } else {
                    sb.append(cCharAt2);
                }
                i++;
            }
            return sb.toString();
        }
        return str;
    }

    private static boolean a(char c) {
        return c == 'n' || c == 'r' || c == 't' || c == 'f' || c == 'b' || c == '\\' || c == '/' || c == '\"' || c == 'u';
    }

    public boolean getDouble() {
        return this.i;
    }

    public void setDouble(boolean z) {
        this.i = z;
    }

    public boolean getSingle() {
        return this.j;
    }

    public void setSingle(boolean z) {
        this.j = z;
    }
}
