package org.eclipse.jetty.util;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jetty.util.Utf8Appendable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class UrlEncoded extends MultiMap implements Cloneable {
    private static final Logger c = Log.getLogger((Class<?>) UrlEncoded.class);
    public static final String ENCODING = System.getProperty("org.eclipse.jetty.util.UrlEncoding.charset", "UTF-8");

    public UrlEncoded(UrlEncoded urlEncoded) {
        super((MultiMap) urlEncoded);
    }

    public UrlEncoded() {
        super(6);
    }

    public UrlEncoded(String str) {
        super(6);
        decode(str, ENCODING);
    }

    public UrlEncoded(String str, String str2) {
        super(6);
        decode(str, str2);
    }

    public void decode(String str) {
        decodeTo(str, this, ENCODING, -1);
    }

    public void decode(String str, String str2) {
        decodeTo(str, this, str2, -1);
    }

    public String encode() {
        return encode(ENCODING, false);
    }

    public String encode(String str) {
        return encode(str, false);
    }

    public synchronized String encode(String str, boolean z) {
        return encode(this, str, z);
    }

    public static String encode(MultiMap multiMap, String str, boolean z) {
        if (str == null) {
            str = ENCODING;
        }
        StringBuilder sb = new StringBuilder(128);
        Iterator it = multiMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            int size = LazyList.size(value);
            if (size == 0) {
                sb.append(encodeString(string, str));
                if (z) {
                    sb.append('=');
                }
            } else {
                for (int i = 0; i < size; i++) {
                    if (i > 0) {
                        sb.append('&');
                    }
                    Object obj = LazyList.get(value, i);
                    sb.append(encodeString(string, str));
                    if (obj != null) {
                        String string2 = obj.toString();
                        if (string2.length() > 0) {
                            sb.append('=');
                            sb.append(encodeString(string2, str));
                        } else if (z) {
                            sb.append('=');
                        }
                    } else if (z) {
                        sb.append('=');
                    }
                }
            }
            if (it.hasNext()) {
                sb.append('&');
            }
        }
        return sb.toString();
    }

    public static void decodeTo(String str, MultiMap multiMap, String str2) {
        decodeTo(str, multiMap, str2, -1);
    }

    public static void decodeTo(String str, MultiMap multiMap, String str2, int i) {
        String strDecodeString;
        String strDecodeString2;
        if (str2 == null) {
            str2 = ENCODING;
        }
        synchronized (multiMap) {
            int i2 = -1;
            boolean z = false;
            String str3 = null;
            for (int i3 = 0; i3 < str.length(); i3++) {
                switch (str.charAt(i3)) {
                    case '%':
                        z = true;
                        break;
                    case '&':
                        int i4 = (i3 - i2) - 1;
                        if (i4 == 0) {
                            strDecodeString2 = "";
                        } else {
                            strDecodeString2 = z ? decodeString(str, i2 + 1, i4, str2) : str.substring(i2 + 1, i3);
                        }
                        if (str3 != null) {
                            multiMap.add(str3, strDecodeString2);
                        } else if (strDecodeString2 != null && strDecodeString2.length() > 0) {
                            multiMap.add(strDecodeString2, "");
                        }
                        if (i > 0 && multiMap.size() > i) {
                            throw new IllegalStateException("Form too many keys");
                        }
                        z = false;
                        i2 = i3;
                        str3 = null;
                        break;
                        break;
                    case '+':
                        z = true;
                        break;
                    case '=':
                        if (str3 == null) {
                            String strDecodeString3 = z ? decodeString(str, i2 + 1, (i3 - i2) - 1, str2) : str.substring(i2 + 1, i3);
                            i2 = i3;
                            str3 = strDecodeString3;
                            z = false;
                        }
                        break;
                }
            }
            if (str3 != null) {
                int length = (str.length() - i2) - 1;
                if (length == 0) {
                    strDecodeString = "";
                } else {
                    strDecodeString = z ? decodeString(str, i2 + 1, length, str2) : str.substring(i2 + 1);
                }
                multiMap.add(str3, strDecodeString);
            } else if (i2 < str.length()) {
                String strDecodeString4 = z ? decodeString(str, i2 + 1, (str.length() - i2) - 1, str2) : str.substring(i2 + 1);
                if (strDecodeString4 != null && strDecodeString4.length() > 0) {
                    multiMap.add(strDecodeString4, "");
                }
            }
        }
    }

    public static void decodeUtf8To(byte[] bArr, int i, int i2, MultiMap multiMap) {
        decodeUtf8To(bArr, i, i2, multiMap, new Utf8StringBuilder());
    }

    public static void decodeUtf8To(byte[] bArr, int i, int i2, MultiMap multiMap, Utf8StringBuilder utf8StringBuilder) {
        synchronized (multiMap) {
            int i3 = i + i2;
            int i4 = i;
            String string = null;
            while (i4 < i3) {
                byte b = bArr[i4];
                switch ((char) (b & UnsignedBytes.MAX_VALUE)) {
                    case '%':
                        if (i4 + 2 < i3) {
                            if (117 == bArr[i4 + 1]) {
                                int i5 = i4 + 1;
                                if (i5 + 4 < i3) {
                                    try {
                                        StringBuilder stringBuilder = utf8StringBuilder.getStringBuilder();
                                        int i6 = i5 + 1;
                                        int iConvertHexDigit = TypeUtil.convertHexDigit(bArr[i6]) << Ascii.FF;
                                        int i7 = i6 + 1;
                                        int iConvertHexDigit2 = iConvertHexDigit + (TypeUtil.convertHexDigit(bArr[i7]) << 8);
                                        i5 = i7 + 1;
                                        int iConvertHexDigit3 = (TypeUtil.convertHexDigit(bArr[i5]) << 4) + iConvertHexDigit2;
                                        i4 = i5 + 1;
                                        stringBuilder.append(Character.toChars(TypeUtil.convertHexDigit(bArr[i4]) + iConvertHexDigit3));
                                    } catch (Utf8Appendable.NotUtf8Exception e) {
                                        i4 = i5;
                                        c.warn(e.toString(), new Object[0]);
                                        c.debug(e);
                                    }
                                } else {
                                    utf8StringBuilder.getStringBuilder().append(Utf8Appendable.REPLACEMENT);
                                    i4 = i3;
                                }
                            } else {
                                int i8 = i4 + 1;
                                i4 = i8 + 1;
                                utf8StringBuilder.append((byte) (TypeUtil.convertHexDigit(bArr[i4]) + (TypeUtil.convertHexDigit(bArr[i8]) << 4)));
                            }
                        } else {
                            utf8StringBuilder.getStringBuilder().append(Utf8Appendable.REPLACEMENT);
                            i4 = i3;
                        }
                        break;
                    case '&':
                        String string2 = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toString();
                        utf8StringBuilder.reset();
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        string = null;
                        break;
                    case '+':
                        utf8StringBuilder.append((byte) 32);
                        break;
                    case '=':
                        if (string != null) {
                            utf8StringBuilder.append(b);
                        } else {
                            string = utf8StringBuilder.toString();
                            utf8StringBuilder.reset();
                        }
                        break;
                    default:
                        try {
                            utf8StringBuilder.append(b);
                        } catch (Utf8Appendable.NotUtf8Exception e2) {
                            c.warn(e2.toString(), new Object[0]);
                            c.debug(e2);
                        }
                        break;
                }
                i4++;
            }
            if (string != null) {
                String replacedString = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toReplacedString();
                utf8StringBuilder.reset();
                multiMap.add(string, replacedString);
            } else if (utf8StringBuilder.length() > 0) {
                multiMap.add(utf8StringBuilder.toReplacedString(), "");
            }
        }
    }

    public static void decode88591To(InputStream inputStream, MultiMap multiMap, int i, int i2) {
        int i3;
        int i4;
        int i5;
        synchronized (multiMap) {
            StringBuffer stringBuffer = new StringBuffer();
            int i6 = 0;
            String string = null;
            while (true) {
                int i7 = inputStream.read();
                if (i7 >= 0) {
                    switch ((char) i7) {
                        case '%':
                            int i8 = inputStream.read();
                            if (117 == i8) {
                                int i9 = inputStream.read();
                                if (i9 >= 0 && (i4 = inputStream.read()) >= 0 && (i5 = inputStream.read()) >= 0) {
                                    stringBuffer.append(Character.toChars((TypeUtil.convertHexDigit(i8) << 12) + (TypeUtil.convertHexDigit(i9) << 8) + (TypeUtil.convertHexDigit(i4) << 4) + TypeUtil.convertHexDigit(i5)));
                                }
                            } else if (i8 >= 0 && (i3 = inputStream.read()) >= 0) {
                                stringBuffer.append((char) ((TypeUtil.convertHexDigit(i8) << 4) + TypeUtil.convertHexDigit(i3)));
                            }
                            break;
                        case '&':
                            String string2 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                            stringBuffer.setLength(0);
                            if (string != null) {
                                multiMap.add(string, string2);
                            } else if (string2 != null && string2.length() > 0) {
                                multiMap.add(string2, "");
                            }
                            if (i2 > 0 && multiMap.size() > i2) {
                                throw new IllegalStateException("Form too many keys");
                            }
                            string = null;
                            break;
                            break;
                        case '+':
                            stringBuffer.append(' ');
                            break;
                        case '=':
                            if (string != null) {
                                stringBuffer.append((char) i7);
                            } else {
                                string = stringBuffer.toString();
                                stringBuffer.setLength(0);
                            }
                            break;
                        default:
                            stringBuffer.append((char) i7);
                            break;
                    }
                    if (i >= 0) {
                        int i10 = i6 + 1;
                        if (i10 > i) {
                            throw new IllegalStateException("Form too large");
                        }
                        i6 = i10;
                    }
                } else if (string != null) {
                    Object string3 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                    stringBuffer.setLength(0);
                    multiMap.add(string, string3);
                } else if (stringBuffer.length() > 0) {
                    multiMap.add(stringBuffer.toString(), "");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x001b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void decodeUtf8To(java.io.InputStream r10, org.eclipse.jetty.util.MultiMap r11, int r12, int r13) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeUtf8To(java.io.InputStream, org.eclipse.jetty.util.MultiMap, int, int):void");
    }

    public static void decodeUtf16To(InputStream inputStream, MultiMap multiMap, int i, int i2) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-16");
        StringWriter stringWriter = new StringWriter(8192);
        IO.copy(inputStreamReader, stringWriter, i);
        decodeTo(stringWriter.getBuffer().toString(), multiMap, "UTF-16", i2);
    }

    public static void decodeTo(InputStream inputStream, MultiMap multiMap, String str, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        if (str == null) {
            str = ENCODING;
        }
        if ("UTF-8".equalsIgnoreCase(str)) {
            decodeUtf8To(inputStream, multiMap, i, i2);
            return;
        }
        if ("ISO-8859-1".equals(str)) {
            decode88591To(inputStream, multiMap, i, i2);
            return;
        }
        if ("UTF-16".equalsIgnoreCase(str)) {
            decodeUtf16To(inputStream, multiMap, i, i2);
            return;
        }
        synchronized (multiMap) {
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2();
            int i6 = 0;
            String str2 = null;
            while (true) {
                int i7 = inputStream.read();
                if (i7 > 0) {
                    switch ((char) i7) {
                        case '%':
                            int i8 = inputStream.read();
                            if (117 == i8) {
                                int i9 = inputStream.read();
                                if (i9 >= 0 && (i4 = inputStream.read()) >= 0 && (i5 = inputStream.read()) >= 0) {
                                    byteArrayOutputStream2.write(new String(Character.toChars((TypeUtil.convertHexDigit(i8) << 12) + (TypeUtil.convertHexDigit(i9) << 8) + (TypeUtil.convertHexDigit(i4) << 4) + TypeUtil.convertHexDigit(i5))).getBytes(str));
                                }
                            } else if (i8 >= 0 && (i3 = inputStream.read()) >= 0) {
                                byteArrayOutputStream2.write((TypeUtil.convertHexDigit(i8) << 4) + TypeUtil.convertHexDigit(i3));
                            }
                            break;
                        case '&':
                            String string = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                            byteArrayOutputStream2.setCount(0);
                            if (str2 != null) {
                                multiMap.add(str2, string);
                            } else if (string != null && string.length() > 0) {
                                multiMap.add(string, "");
                            }
                            if (i2 > 0 && multiMap.size() > i2) {
                                throw new IllegalStateException("Form too many keys");
                            }
                            str2 = null;
                            break;
                            break;
                        case '+':
                            byteArrayOutputStream2.write(32);
                            break;
                        case '=':
                            if (str2 != null) {
                                byteArrayOutputStream2.write(i7);
                            } else {
                                String string2 = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                                byteArrayOutputStream2.setCount(0);
                                str2 = string2;
                            }
                            break;
                        default:
                            byteArrayOutputStream2.write(i7);
                            break;
                    }
                    int i10 = i6 + 1;
                    if (i >= 0 && i10 > i) {
                        throw new IllegalStateException("Form too large");
                    }
                    i6 = i10;
                } else {
                    int size = byteArrayOutputStream2.size();
                    if (str2 != null) {
                        Object string3 = size == 0 ? "" : byteArrayOutputStream2.toString(str);
                        byteArrayOutputStream2.setCount(0);
                        multiMap.add(str2, string3);
                    } else if (size > 0) {
                        multiMap.add(byteArrayOutputStream2.toString(str), "");
                    }
                }
            }
        }
    }

    public static String decodeString(String str, int i, int i2, String str2) {
        Utf8StringBuffer utf8StringBuffer;
        int i3;
        Utf8StringBuffer utf8StringBuffer2;
        Utf8Appendable.NotUtf8Exception e;
        NumberFormatException e2;
        StringBuffer stringBuffer;
        int i4;
        int i5;
        int i6;
        int length;
        if (str2 == null || StringUtil.isUTF8(str2)) {
            Utf8StringBuffer utf8StringBuffer3 = null;
            int i7 = 0;
            while (i7 < i2) {
                char cCharAt = str.charAt(i + i7);
                if (cCharAt < 0 || cCharAt > 255) {
                    if (utf8StringBuffer3 == null) {
                        Utf8StringBuffer utf8StringBuffer4 = new Utf8StringBuffer(i2);
                        utf8StringBuffer4.getStringBuffer().append((CharSequence) str, i, i + i7 + 1);
                        int i8 = i7;
                        utf8StringBuffer = utf8StringBuffer4;
                        i3 = i8;
                    } else {
                        utf8StringBuffer3.getStringBuffer().append(cCharAt);
                        int i9 = i7;
                        utf8StringBuffer = utf8StringBuffer3;
                        i3 = i9;
                    }
                } else if (cCharAt == '+') {
                    if (utf8StringBuffer3 == null) {
                        utf8StringBuffer3 = new Utf8StringBuffer(i2);
                        utf8StringBuffer3.getStringBuffer().append((CharSequence) str, i, i + i7);
                    }
                    utf8StringBuffer3.getStringBuffer().append(' ');
                    int i10 = i7;
                    utf8StringBuffer = utf8StringBuffer3;
                    i3 = i10;
                } else if (cCharAt == '%') {
                    if (utf8StringBuffer3 == null) {
                        utf8StringBuffer2 = new Utf8StringBuffer(i2);
                        utf8StringBuffer2.getStringBuffer().append((CharSequence) str, i, i + i7);
                    } else {
                        utf8StringBuffer2 = utf8StringBuffer3;
                    }
                    if (i7 + 2 < i2) {
                        try {
                            if ('u' == str.charAt(i + i7 + 1)) {
                                if (i7 + 5 < i2) {
                                    i3 = i7 + 5;
                                    try {
                                        utf8StringBuffer2.getStringBuffer().append(new String(Character.toChars(TypeUtil.parseInt(str, i + i7 + 2, 4, 16))));
                                    } catch (NumberFormatException e3) {
                                        e2 = e3;
                                        c.debug(e2);
                                        utf8StringBuffer2.getStringBuffer().append(Utf8Appendable.REPLACEMENT);
                                        utf8StringBuffer = utf8StringBuffer2;
                                    } catch (Utf8Appendable.NotUtf8Exception e4) {
                                        e = e4;
                                        c.warn(e.toString(), new Object[0]);
                                        c.debug(e);
                                        utf8StringBuffer = utf8StringBuffer2;
                                    }
                                } else {
                                    try {
                                        utf8StringBuffer2.getStringBuffer().append(Utf8Appendable.REPLACEMENT);
                                        i3 = i2;
                                    } catch (NumberFormatException e5) {
                                        e2 = e5;
                                        i3 = i2;
                                        c.debug(e2);
                                        utf8StringBuffer2.getStringBuffer().append(Utf8Appendable.REPLACEMENT);
                                        utf8StringBuffer = utf8StringBuffer2;
                                    } catch (Utf8Appendable.NotUtf8Exception e6) {
                                        e = e6;
                                        i3 = i2;
                                        c.warn(e.toString(), new Object[0]);
                                        c.debug(e);
                                        utf8StringBuffer = utf8StringBuffer2;
                                    }
                                }
                            } else {
                                i3 = i7 + 2;
                                utf8StringBuffer2.append((byte) TypeUtil.parseInt(str, i + i7 + 1, 2, 16));
                            }
                            utf8StringBuffer = utf8StringBuffer2;
                        } catch (NumberFormatException e7) {
                            i3 = i7;
                            e2 = e7;
                        } catch (Utf8Appendable.NotUtf8Exception e8) {
                            i3 = i7;
                            e = e8;
                        }
                    } else {
                        utf8StringBuffer2.getStringBuffer().append(Utf8Appendable.REPLACEMENT);
                        i3 = i2;
                        utf8StringBuffer = utf8StringBuffer2;
                    }
                } else {
                    if (utf8StringBuffer3 != null) {
                        utf8StringBuffer3.getStringBuffer().append(cCharAt);
                    }
                    int i11 = i7;
                    utf8StringBuffer = utf8StringBuffer3;
                    i3 = i11;
                }
                int i12 = i3 + 1;
                utf8StringBuffer3 = utf8StringBuffer;
                i7 = i12;
            }
            if (utf8StringBuffer3 == null) {
                if (i != 0 || str.length() != i2) {
                    return str.substring(i, i + i2);
                }
                return str;
            }
            return utf8StringBuffer3.toReplacedString();
        }
        StringBuffer stringBuffer2 = null;
        int i13 = 0;
        while (i13 < i2) {
            try {
                char cCharAt2 = str.charAt(i + i13);
                if (cCharAt2 < 0 || cCharAt2 > 255) {
                    if (stringBuffer2 == null) {
                        stringBuffer2 = new StringBuffer(i2);
                        stringBuffer2.append((CharSequence) str, i, i + i13 + 1);
                    } else {
                        stringBuffer2.append(cCharAt2);
                    }
                } else if (cCharAt2 == '+') {
                    if (stringBuffer2 == null) {
                        stringBuffer2 = new StringBuffer(i2);
                        stringBuffer2.append((CharSequence) str, i, i + i13);
                    }
                    stringBuffer2.append(' ');
                } else if (cCharAt2 == '%') {
                    if (stringBuffer2 == null) {
                        stringBuffer = new StringBuffer(i2);
                        stringBuffer.append((CharSequence) str, i, i + i13);
                    } else {
                        stringBuffer = stringBuffer2;
                    }
                    byte[] bArr = new byte[i2];
                    char cCharAt3 = cCharAt2;
                    int i14 = i13;
                    int i15 = 0;
                    while (cCharAt3 >= 0 && cCharAt3 <= 255) {
                        if (cCharAt3 == '%') {
                            if (i14 + 2 < i2) {
                                try {
                                    if ('u' == str.charAt(i + i14 + 1)) {
                                        if (i14 + 6 < i2) {
                                            i6 = i14 + 6;
                                            try {
                                                byte[] bytes = new String(Character.toChars(TypeUtil.parseInt(str, i + i14 + 2, 4, 16))).getBytes(str2);
                                                System.arraycopy(bytes, 0, bArr, i15, bytes.length);
                                                length = bytes.length + i15;
                                            } catch (NumberFormatException e9) {
                                                e = e9;
                                                int i16 = i15;
                                                i5 = i6;
                                                i4 = i16;
                                                c.ignore(e);
                                                bArr[i4] = 63;
                                                i14 = i5;
                                                i15 = i4 + 1;
                                            }
                                        } else {
                                            length = i15 + 1;
                                            try {
                                                bArr[i15] = 63;
                                                i6 = i2;
                                            } catch (NumberFormatException e10) {
                                                i5 = i14;
                                                e = e10;
                                                i4 = length;
                                                c.ignore(e);
                                                bArr[i4] = 63;
                                                i14 = i5;
                                                i15 = i4 + 1;
                                            }
                                        }
                                    } else {
                                        i6 = i14 + 3;
                                        bArr[i15] = (byte) TypeUtil.parseInt(str, i + i14 + 1, 2, 16);
                                        length = i15 + 1;
                                    }
                                    i15 = length;
                                    i14 = i6;
                                } catch (NumberFormatException e11) {
                                    e = e11;
                                    i4 = i15;
                                    i5 = i14;
                                }
                            } else {
                                bArr[i15] = 63;
                                i15++;
                                i14 = i2;
                            }
                        } else if (cCharAt3 == '+') {
                            bArr[i15] = 32;
                            i14++;
                            i15++;
                        } else {
                            bArr[i15] = (byte) cCharAt3;
                            i14++;
                            i15++;
                        }
                        if (i14 >= i2) {
                            break;
                        }
                        cCharAt3 = str.charAt(i + i14);
                    }
                    i13 = i14 - 1;
                    stringBuffer.append(new String(bArr, 0, i15, str2));
                    stringBuffer2 = stringBuffer;
                } else if (stringBuffer2 != null) {
                    stringBuffer2.append(cCharAt2);
                }
                i13++;
            } catch (UnsupportedEncodingException e12) {
                throw new RuntimeException(e12);
            }
        }
        if (stringBuffer2 == null) {
            if (i != 0 || str.length() != i2) {
                return str.substring(i, i + i2);
            }
            return str;
        }
        return stringBuffer2.toString();
    }

    public static String encodeString(String str) {
        return encodeString(str, ENCODING);
    }

    public static String encodeString(String str, String str2) {
        byte[] bytes;
        int i;
        int i2;
        if (str2 == null) {
            str2 = ENCODING;
        }
        try {
            bytes = str.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        int length = bytes.length;
        byte[] bArr = new byte[bytes.length * 3];
        boolean z = true;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            byte b = bytes[i3];
            if (b == 32) {
                bArr[i4] = 43;
                i2 = i4 + 1;
                z = false;
            } else if ((b >= 97 && b <= 122) || ((b >= 65 && b <= 90) || (b >= 48 && b <= 57))) {
                i2 = i4 + 1;
                bArr[i4] = b;
            } else {
                int i5 = i4 + 1;
                bArr[i4] = 37;
                byte b2 = (byte) ((b & 240) >> 4);
                if (b2 >= 10) {
                    bArr[i5] = (byte) ((b2 + 65) - 10);
                    i = i5 + 1;
                } else {
                    bArr[i5] = (byte) (b2 + 48);
                    i = i5 + 1;
                }
                byte b3 = (byte) (b & Ascii.SI);
                if (b3 >= 10) {
                    bArr[i] = (byte) ((b3 + 65) - 10);
                    i2 = i + 1;
                    z = false;
                } else {
                    bArr[i] = (byte) (b3 + 48);
                    i2 = i + 1;
                    z = false;
                }
            }
            i3++;
            i4 = i2;
        }
        if (!z) {
            try {
                return new String(bArr, 0, i4, str2);
            } catch (UnsupportedEncodingException e2) {
                return new String(bArr, 0, i4);
            }
        }
        return str;
    }

    public Object clone() {
        return new UrlEncoded(this);
    }
}
