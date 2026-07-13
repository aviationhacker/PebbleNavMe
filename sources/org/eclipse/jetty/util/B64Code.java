package org.eclipse.jetty.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes.dex */
public class B64Code {
    static final char[] a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    static final byte[] b = new byte[256];

    static {
        for (int i = 0; i < 256; i++) {
            b[i] = -1;
        }
        for (byte b2 = 0; b2 < 64; b2 = (byte) (b2 + 1)) {
            b[(byte) a[b2]] = b2;
        }
        b[61] = 0;
    }

    public static String encode(String str) {
        try {
            return encode(str, (String) null);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        if (str2 == null) {
            bytes = str.getBytes("ISO-8859-1");
        } else {
            bytes = str.getBytes(str2);
        }
        return new String(encode(bytes));
    }

    public static char[] encode(byte[] bArr) {
        int i = 0;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i2 = (length / 3) * 3;
        int i3 = 0;
        while (i < i2) {
            int i4 = i + 1;
            byte b2 = bArr[i];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            i = i5 + 1;
            byte b4 = bArr[i5];
            int i6 = i3 + 1;
            cArr[i3] = a[(b2 >>> 2) & 63];
            int i7 = i6 + 1;
            cArr[i6] = a[((b2 << 4) & 63) | ((b3 >>> 4) & 15)];
            int i8 = i7 + 1;
            cArr[i7] = a[((b3 << 2) & 63) | ((b4 >>> 6) & 3)];
            i3 = i8 + 1;
            cArr[i8] = a[b4 & 63];
        }
        if (length != i) {
            switch (length % 3) {
                case 1:
                    int i9 = i + 1;
                    byte b5 = bArr[i];
                    int i10 = i3 + 1;
                    cArr[i3] = a[(b5 >>> 2) & 63];
                    int i11 = i10 + 1;
                    cArr[i10] = a[(b5 << 4) & 63];
                    int i12 = i11 + 1;
                    cArr[i11] = '=';
                    int i13 = i12 + 1;
                    cArr[i12] = '=';
                    break;
                case 2:
                    int i14 = i + 1;
                    byte b6 = bArr[i];
                    int i15 = i14 + 1;
                    byte b7 = bArr[i14];
                    int i16 = i3 + 1;
                    cArr[i3] = a[(b6 >>> 2) & 63];
                    int i17 = i16 + 1;
                    cArr[i16] = a[((b6 << 4) & 63) | ((b7 >>> 4) & 15)];
                    int i18 = i17 + 1;
                    cArr[i17] = a[(b7 << 2) & 63];
                    int i19 = i18 + 1;
                    cArr[i18] = '=';
                    break;
            }
            return cArr;
        }
        return cArr;
    }

    public static char[] encode(byte[] bArr, boolean z) {
        if (bArr == null) {
            return null;
        }
        if (!z) {
            return encode(bArr);
        }
        int length = bArr.length;
        int i = ((length + 2) / 3) * 4;
        char[] cArr = new char[i + ((i / 76) * 2) + 2];
        int i2 = (length / 3) * 3;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i4 + 1;
            byte b2 = bArr[i4];
            int i7 = i6 + 1;
            byte b3 = bArr[i6];
            i4 = i7 + 1;
            byte b4 = bArr[i7];
            int i8 = i3 + 1;
            cArr[i3] = a[(b2 >>> 2) & 63];
            int i9 = i8 + 1;
            cArr[i8] = a[((b2 << 4) & 63) | ((b3 >>> 4) & 15)];
            int i10 = i9 + 1;
            cArr[i9] = a[((b3 << 2) & 63) | ((b4 >>> 6) & 3)];
            int i11 = i10 + 1;
            cArr[i10] = a[b4 & 63];
            int i12 = i5 + 4;
            if (i12 % 76 == 0) {
                int i13 = i11 + 1;
                cArr[i11] = CharUtils.CR;
                cArr[i13] = '\n';
                i3 = i13 + 1;
                i5 = i12;
            } else {
                i5 = i12;
                i3 = i11;
            }
        }
        if (length != i4) {
            switch (length % 3) {
                case 1:
                    int i14 = i4 + 1;
                    byte b5 = bArr[i4];
                    int i15 = i3 + 1;
                    cArr[i3] = a[(b5 >>> 2) & 63];
                    int i16 = i15 + 1;
                    cArr[i15] = a[(b5 << 4) & 63];
                    int i17 = i16 + 1;
                    cArr[i16] = '=';
                    i3 = i17 + 1;
                    cArr[i17] = '=';
                    break;
                case 2:
                    int i18 = i4 + 1;
                    byte b6 = bArr[i4];
                    int i19 = i18 + 1;
                    byte b7 = bArr[i18];
                    int i20 = i3 + 1;
                    cArr[i3] = a[(b6 >>> 2) & 63];
                    int i21 = i20 + 1;
                    cArr[i20] = a[((b6 << 4) & 63) | ((b7 >>> 4) & 15)];
                    int i22 = i21 + 1;
                    cArr[i21] = a[(b7 << 2) & 63];
                    i3 = i22 + 1;
                    cArr[i22] = '=';
                    break;
            }
        }
        int i23 = i3 + 1;
        cArr[i3] = CharUtils.CR;
        int i24 = i23 + 1;
        cArr[i23] = '\n';
        return cArr;
    }

    public static String decode(String str, String str2) {
        byte[] bArrDecode = decode(str);
        return str2 == null ? new String(bArrDecode) : new String(bArrDecode, str2);
    }

    public static byte[] decode(char[] cArr) {
        int i;
        int i2 = 0;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Input block size is not 4");
        }
        int i3 = length - 1;
        while (i3 >= 0 && cArr[i3] == '=') {
            i3--;
        }
        if (i3 < 0) {
            return new byte[0];
        }
        int i4 = ((i3 + 1) * 3) / 4;
        byte[] bArr = new byte[i4];
        int i5 = (i4 / 3) * 3;
        int i6 = 0;
        while (i6 < i5) {
            try {
                int i7 = i2 + 1;
                try {
                    byte b2 = b[cArr[i2]];
                    int i8 = i7 + 1;
                    byte b3 = b[cArr[i7]];
                    int i9 = i8 + 1;
                    byte b4 = b[cArr[i8]];
                    i2 = i9 + 1;
                    byte b5 = b[cArr[i9]];
                    if (b2 < 0 || b3 < 0 || b4 < 0 || b5 < 0) {
                        throw new IllegalArgumentException("Not B64 encoded");
                    }
                    int i10 = i6 + 1;
                    bArr[i6] = (byte) ((b2 << 2) | (b3 >>> 4));
                    int i11 = i10 + 1;
                    bArr[i10] = (byte) ((b3 << 4) | (b4 >>> 2));
                    bArr[i11] = (byte) ((b4 << 6) | b5);
                    i6 = i11 + 1;
                } catch (IndexOutOfBoundsException e) {
                    i = i7;
                }
            } catch (IndexOutOfBoundsException e2) {
                i = i2;
            }
        }
        if (i4 != i6) {
            switch (i4 % 3) {
                case 1:
                    int i12 = i2 + 1;
                    byte b6 = b[cArr[i2]];
                    int i13 = i12 + 1;
                    byte b7 = b[cArr[i12]];
                    if (b6 < 0 || b7 < 0) {
                        throw new IllegalArgumentException("Not B64 encoded");
                    }
                    int i14 = i6 + 1;
                    bArr[i6] = (byte) ((b7 >>> 4) | (b6 << 2));
                    return bArr;
                case 2:
                    int i15 = i2 + 1;
                    try {
                        byte b8 = b[cArr[i2]];
                        int i16 = i15 + 1;
                        byte b9 = b[cArr[i15]];
                        int i17 = i16 + 1;
                        byte b10 = b[cArr[i16]];
                        if (b8 < 0 || b9 < 0 || b10 < 0) {
                            throw new IllegalArgumentException("Not B64 encoded");
                        }
                        int i18 = i6 + 1;
                        bArr[i6] = (byte) ((b8 << 2) | (b9 >>> 4));
                        int i19 = i18 + 1;
                        bArr[i18] = (byte) ((b10 >>> 2) | (b9 << 4));
                        return bArr;
                    } catch (IndexOutOfBoundsException e3) {
                        i = i15;
                    }
                    break;
                default:
                    return bArr;
            }
            throw new IllegalArgumentException("char " + i + " was not B64 encoded");
        }
        return bArr;
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() * 4) / 3);
        decode(str, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void decode(String str, ByteArrayOutputStream byteArrayOutputStream) {
        if (str != null) {
            if (byteArrayOutputStream == null) {
                throw new IllegalArgumentException("No outputstream for decoded bytes");
            }
            byte[] bArr = new byte[4];
            int i = 0;
            int i2 = 0;
            while (i2 < str.length()) {
                int i3 = i2 + 1;
                char cCharAt = str.charAt(i2);
                if (cCharAt != '=') {
                    if (Character.isWhitespace(cCharAt)) {
                        i2 = i3;
                    } else {
                        if (b[cCharAt] < 0) {
                            throw new IllegalArgumentException("Not B64 encoded");
                        }
                        int i4 = i + 1;
                        bArr[i] = b[cCharAt];
                        switch (i4) {
                            case 1:
                                i = i4;
                                break;
                            case 2:
                                byteArrayOutputStream.write((bArr[0] << 2) | (bArr[1] >>> 4));
                                i = i4;
                                break;
                            case 3:
                                byteArrayOutputStream.write((bArr[1] << 4) | (bArr[2] >>> 2));
                                i = i4;
                                break;
                            case 4:
                                byteArrayOutputStream.write((bArr[2] << 6) | bArr[3]);
                                i = 0;
                                break;
                            default:
                                i = i4;
                                break;
                        }
                        i2 = i3;
                    }
                } else {
                    return;
                }
            }
        }
    }

    public static void encode(int i, Appendable appendable) throws IOException {
        appendable.append(a[(((-67108864) & i) >> 26) & 63]);
        appendable.append(a[((66060288 & i) >> 20) & 63]);
        appendable.append(a[((1032192 & i) >> 14) & 63]);
        appendable.append(a[((i & 16128) >> 8) & 63]);
        appendable.append(a[((i & 252) >> 2) & 63]);
        appendable.append(a[((i & 3) << 4) & 63]);
        appendable.append('=');
    }

    public static void encode(long j, Appendable appendable) throws IOException {
        int i = (int) ((-4) & (j >> 32));
        appendable.append(a[(((-67108864) & i) >> 26) & 63]);
        appendable.append(a[((66060288 & i) >> 20) & 63]);
        appendable.append(a[((1032192 & i) >> 14) & 63]);
        appendable.append(a[((i & 16128) >> 8) & 63]);
        appendable.append(a[((i & 252) >> 2) & 63]);
        appendable.append(a[(((i & 3) << 4) + (((int) (j >> 28)) & 15)) & 63]);
        int i2 = 268435455 & ((int) j);
        appendable.append(a[((264241152 & i2) >> 22) & 63]);
        appendable.append(a[((4128768 & i2) >> 16) & 63]);
        appendable.append(a[((64512 & i2) >> 10) & 63]);
        appendable.append(a[((i2 & 1008) >> 4) & 63]);
        appendable.append(a[((i2 & 15) << 2) & 63]);
    }
}
