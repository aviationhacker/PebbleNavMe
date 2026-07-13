package org.eclipse.jetty.util;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.lang3.ClassUtils;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class StringUtil {
    public static final String ALL_INTERFACES = "0.0.0.0";
    public static final String CRLF = "\r\n";
    public static final String __ISO_8859_1 = "ISO-8859-1";
    public static final String __UTF16 = "UTF-16";
    public static final String __UTF8 = "UTF-8";
    public static final String __UTF8Alt = "UTF8";
    private static final Logger a = Log.getLogger((Class<?>) StringUtil.class);
    public static final String __LINE_SEPARATOR = System.getProperty("line.separator", "\n");
    public static final Charset __UTF8_CHARSET = Charset.forName("UTF-8");
    public static final Charset __ISO_8859_1_CHARSET = Charset.forName("ISO-8859-1");
    private static char[] b = {0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', CharUtils.CR, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', ClassUtils.PACKAGE_SEPARATOR_CHAR, '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '[', '\\', ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|', '}', '~', Ascii.MAX};

    public static String asciiToLowerCase(String str) {
        char[] cArr;
        char c;
        int length = str.length();
        while (true) {
            int i = length;
            length = i - 1;
            if (i <= 0) {
                cArr = null;
                break;
            }
            char cCharAt = str.charAt(length);
            if (cCharAt <= 127 && cCharAt != (c = b[cCharAt])) {
                char[] charArray = str.toCharArray();
                charArray[length] = c;
                cArr = charArray;
                break;
            }
        }
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                break;
            }
            if (cArr[i2] <= 127) {
                cArr[i2] = b[cArr[i2]];
                length = i2;
            } else {
                length = i2;
            }
        }
        return cArr == null ? str : new String(cArr);
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        if (str2 == null) {
            return true;
        }
        if (str == null || str.length() < str2.length()) {
            return false;
        }
        for (int i = 0; i < str2.length(); i++) {
            char cCharAt = str.charAt(i);
            char cCharAt2 = str2.charAt(i);
            if (cCharAt != cCharAt2) {
                if (cCharAt <= 127) {
                    cCharAt = b[cCharAt];
                }
                if (cCharAt2 <= 127) {
                    cCharAt2 = b[cCharAt2];
                }
                if (cCharAt != cCharAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        int length;
        int length2;
        if (str2 == null) {
            return true;
        }
        if (str != null && (length = str.length()) >= (length2 = str2.length())) {
            while (true) {
                int i = length2 - 1;
                if (length2 <= 0) {
                    return true;
                }
                int i2 = length - 1;
                char cCharAt = str.charAt(i2);
                char cCharAt2 = str2.charAt(i);
                if (cCharAt != cCharAt2) {
                    if (cCharAt <= 127) {
                        cCharAt = b[cCharAt];
                    }
                    if (cCharAt2 <= 127) {
                        cCharAt2 = b[cCharAt2];
                    }
                    if (cCharAt != cCharAt2) {
                        return false;
                    }
                }
                length2 = i;
                length = i2;
            }
        }
        return false;
    }

    public static int indexFrom(String str, String str2) {
        for (int i = 0; i < str.length(); i++) {
            if (str2.indexOf(str.charAt(i)) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static String replace(String str, String str2, String str3) {
        int length = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf != -1) {
            StringBuilder sb = new StringBuilder(str.length() + str3.length());
            do {
                sb.append(str.substring(length, iIndexOf));
                sb.append(str3);
                length = str2.length() + iIndexOf;
                iIndexOf = str.indexOf(str2, length);
            } while (iIndexOf != -1);
            if (length < str.length()) {
                sb.append(str.substring(length, str.length()));
            }
            return sb.toString();
        }
        return str;
    }

    public static String unquote(String str) {
        return QuotedStringTokenizer.unquote(str);
    }

    public static void append(StringBuilder sb, String str, int i, int i2) {
        synchronized (sb) {
            int i3 = i + i2;
            while (i < i3) {
                if (i >= str.length()) {
                    break;
                }
                sb.append(str.charAt(i));
                i++;
            }
        }
    }

    public static void append(StringBuilder sb, byte b2, int i) {
        int i2 = b2 & 255;
        int i3 = ((i2 / i) % i) + 48;
        if (i3 > 57) {
            i3 = ((i3 - 48) - 10) + 97;
        }
        sb.append((char) i3);
        int i4 = (i2 % i) + 48;
        if (i4 > 57) {
            i4 = ((i4 - 48) - 10) + 97;
        }
        sb.append((char) i4);
    }

    public static void append2digits(StringBuffer stringBuffer, int i) {
        if (i < 100) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    public static void append2digits(StringBuilder sb, int i) {
        if (i < 100) {
            sb.append((char) ((i / 10) + 48));
            sb.append((char) ((i % 10) + 48));
        }
    }

    public static String nonNull(String str) {
        if (str == null) {
            return "";
        }
        return str;
    }

    public static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (cArr[i + i3] != str.charAt(i3)) {
                return false;
            }
        }
        return true;
    }

    public static String toUTF8String(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String toString(byte[] bArr, int i, int i2, String str) {
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static boolean isUTF8(String str) {
        return "UTF-8".equalsIgnoreCase(str) || __UTF8Alt.equalsIgnoreCase(str);
    }

    public static String printable(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isISOControl(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String printable(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            char c = (char) bArr[i];
            if (Character.isWhitespace(c) || (c > ' ' && c < 127)) {
                sb.append(c);
            } else {
                sb.append("0x");
                TypeUtil.toHex(bArr[i], (Appendable) sb);
            }
        }
        return sb.toString();
    }

    public static byte[] getBytes(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (Exception e) {
            a.warn(e);
            return str.getBytes();
        }
    }

    public static byte[] getBytes(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (Exception e) {
            a.warn(e);
            return str.getBytes();
        }
    }

    public static String sidBytesToString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("S-");
        sb.append(Byte.toString(bArr[0])).append('-');
        StringBuilder sb2 = new StringBuilder();
        for (int i = 2; i <= 7; i++) {
            sb2.append(Integer.toHexString(bArr[i] & UnsignedBytes.MAX_VALUE));
        }
        sb.append(Long.parseLong(sb2.toString(), 16));
        byte b2 = bArr[1];
        for (int i2 = 0; i2 < b2; i2++) {
            int i3 = i2 * 4;
            sb2.setLength(0);
            sb2.append(String.format("%02X%02X%02X%02X", Integer.valueOf(bArr[i3 + 11] & UnsignedBytes.MAX_VALUE), Integer.valueOf(bArr[i3 + 10] & UnsignedBytes.MAX_VALUE), Integer.valueOf(bArr[i3 + 9] & UnsignedBytes.MAX_VALUE), Integer.valueOf(bArr[i3 + 8] & UnsignedBytes.MAX_VALUE)));
            sb.append('-').append(Long.parseLong(sb2.toString(), 16));
        }
        return sb.toString();
    }

    public static byte[] sidStringToBytes(String str) {
        int i = 2;
        int i2 = 0;
        String[] strArrSplit = str.split("-");
        int length = strArrSplit.length - 3;
        byte[] bArr = new byte[(length * 4) + 8];
        bArr[0] = (byte) Integer.parseInt(strArrSplit[1]);
        bArr[1] = (byte) length;
        String hexString = Long.toHexString(Long.parseLong(strArrSplit[2]));
        while (hexString.length() < 12) {
            hexString = "0" + hexString;
        }
        while (i2 < hexString.length()) {
            bArr[i] = (byte) Integer.parseInt(hexString.substring(i2, i2 + 2), 16);
            i2 += 2;
            i++;
        }
        for (int i3 = 3; i3 < strArrSplit.length; i3++) {
            String hexString2 = Long.toHexString(Long.parseLong(strArrSplit[i3]));
            while (hexString2.length() < 8) {
                hexString2 = "0" + hexString2;
            }
            int length2 = hexString2.length();
            while (length2 > 0) {
                bArr[i] = (byte) Integer.parseInt(hexString2.substring(length2 - 2, length2), 16);
                length2 -= 2;
                i++;
            }
        }
        return bArr;
    }
}
