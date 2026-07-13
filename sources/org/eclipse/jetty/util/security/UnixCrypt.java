package org.eclipse.jetty.util.security;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import java.lang.reflect.Array;
import org.apache.commons.lang3.ClassUtils;
import org.eclipse.jetty.http.HttpTokens;

/* JADX INFO: loaded from: classes.dex */
public class UnixCrypt {
    private static final byte[] a = {HttpTokens.COLON, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 60, 52, 44, 36, Ascii.FS, Ascii.DC4, Ascii.FF, 4, 62, 54, 46, 38, Ascii.RS, Ascii.SYN, Ascii.SO, 6, SignedBytes.MAX_POWER_OF_TWO, 56, 48, 40, 32, Ascii.CAN, Ascii.DLE, 8, 57, 49, 41, 33, Ascii.EM, 17, 9, 1, HttpTokens.SEMI_COLON, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, 61, 53, 45, 37, Ascii.GS, Ascii.NAK, 13, 5, 63, 55, 47, 39, Ascii.US, Ascii.ETB, Ascii.SI, 7};
    private static final byte[] b = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, Ascii.VT, Ascii.FF, 13, Ascii.FF, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 1};
    private static final byte[] c = {57, 49, 41, 33, Ascii.EM, 17, 9, 1, HttpTokens.COLON, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, HttpTokens.SEMI_COLON, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, 60, 52, 44, 36, 63, 55, 47, 39, Ascii.US, Ascii.ETB, Ascii.SI, 7, 62, 54, 46, 38, Ascii.RS, Ascii.SYN, Ascii.SO, 6, 61, 53, 45, 37, Ascii.GS, Ascii.NAK, 13, 5, Ascii.FS, Ascii.DC4, Ascii.FF, 4};
    private static final byte[] d = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};
    private static final byte[] e = {9, Ascii.DC2, Ascii.SO, 17, Ascii.VT, Ascii.CAN, 1, 5, Ascii.SYN, Ascii.EM, 3, Ascii.FS, Ascii.SI, 6, Ascii.NAK, 10, 35, 38, Ascii.ETB, 19, Ascii.FF, 4, Ascii.SUB, 8, 43, 54, Ascii.DLE, 7, Ascii.ESC, Ascii.DC4, 13, 2, 0, 0, 41, 52, Ascii.US, 37, 47, 55, 0, 0, Ascii.RS, 40, 51, 45, 33, 48, 0, 0, 44, 49, 39, 56, 34, 53, 0, 0, 46, 42, 50, 36, Ascii.GS, 32};
    private static final byte[][] f = {new byte[]{Ascii.SO, 4, 13, 1, 2, Ascii.SI, Ascii.VT, 8, 3, 10, 6, Ascii.FF, 5, 9, 0, 7, 0, Ascii.SI, 7, 4, Ascii.SO, 2, 13, 1, 10, 6, Ascii.FF, Ascii.VT, 9, 5, 3, 8, 4, 1, Ascii.SO, 8, 13, 6, 2, Ascii.VT, Ascii.SI, Ascii.FF, 9, 7, 3, 10, 5, 0, Ascii.SI, Ascii.FF, 8, 2, 4, 9, 1, 7, 5, Ascii.VT, 3, Ascii.SO, 10, 0, 6, 13}, new byte[]{Ascii.SI, 1, 8, Ascii.SO, 6, Ascii.VT, 3, 4, 9, 7, 2, 13, Ascii.FF, 0, 5, 10, 3, 13, 4, 7, Ascii.SI, 2, 8, Ascii.SO, Ascii.FF, 0, 1, 10, 6, 9, Ascii.VT, 5, 0, Ascii.SO, 7, Ascii.VT, 10, 4, 13, 1, 5, 8, Ascii.FF, 6, 9, 3, 2, Ascii.SI, 13, 8, 10, 1, 3, Ascii.SI, 4, 2, Ascii.VT, 6, 7, Ascii.FF, 0, 5, Ascii.SO, 9}, new byte[]{10, 0, 9, Ascii.SO, 6, 3, Ascii.SI, 5, 1, 13, Ascii.FF, 7, Ascii.VT, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, Ascii.SO, Ascii.FF, Ascii.VT, Ascii.SI, 1, 13, 6, 4, 9, 8, Ascii.SI, 3, 0, Ascii.VT, 1, 2, Ascii.FF, 5, 10, Ascii.SO, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, Ascii.SI, Ascii.SO, 3, Ascii.VT, 5, 2, Ascii.FF}, new byte[]{7, 13, Ascii.SO, 3, 0, 6, 9, 10, 1, 2, 8, 5, Ascii.VT, Ascii.FF, 4, Ascii.SI, 13, 8, Ascii.VT, 5, 6, Ascii.SI, 0, 3, 4, 7, 2, Ascii.FF, 1, 10, Ascii.SO, 9, 10, 6, 9, 0, Ascii.FF, Ascii.VT, 7, 13, Ascii.SI, 1, 3, Ascii.SO, 5, 2, 8, 4, 3, Ascii.SI, 0, 6, 10, 1, 13, 8, 9, 4, 5, Ascii.VT, Ascii.FF, 7, 2, Ascii.SO}, new byte[]{2, Ascii.FF, 4, 1, 7, 10, Ascii.VT, 6, 8, 5, 3, Ascii.SI, 13, 0, Ascii.SO, 9, Ascii.SO, Ascii.VT, 2, Ascii.FF, 4, 7, 13, 1, 5, 0, Ascii.SI, 10, 3, 9, 8, 6, 4, 2, 1, Ascii.VT, 10, 13, 7, 8, Ascii.SI, 9, Ascii.FF, 5, 6, 3, 0, Ascii.SO, Ascii.VT, 8, Ascii.FF, 7, 1, Ascii.SO, 2, 13, 6, Ascii.SI, 0, 9, 10, 4, 5, 3}, new byte[]{Ascii.FF, 1, 10, Ascii.SI, 9, 2, 6, 8, 0, 13, 3, 4, Ascii.SO, 7, 5, Ascii.VT, 10, Ascii.SI, 4, 2, 7, Ascii.FF, 9, 5, 6, 1, 13, Ascii.SO, 0, Ascii.VT, 3, 8, 9, Ascii.SO, Ascii.SI, 5, 2, 8, Ascii.FF, 3, 7, 0, 4, 10, 1, 13, Ascii.VT, 6, 4, 3, 2, Ascii.FF, 9, 5, Ascii.SI, 10, Ascii.VT, Ascii.SO, 1, 7, 6, 0, 8, 13}, new byte[]{4, Ascii.VT, 2, Ascii.SO, Ascii.SI, 0, 8, 13, 3, Ascii.FF, 9, 7, 5, 10, 6, 1, 13, 0, Ascii.VT, 7, 4, 9, 1, 10, Ascii.SO, 3, 5, Ascii.FF, 2, Ascii.SI, 8, 6, 1, 4, Ascii.VT, 13, Ascii.FF, 3, 7, Ascii.SO, 10, Ascii.SI, 6, 8, 0, 5, 9, 2, 6, Ascii.VT, 13, 8, 1, 4, 10, 7, 9, 5, 0, Ascii.SI, Ascii.SO, 2, 3, Ascii.FF}, new byte[]{13, 2, 8, 4, 6, Ascii.SI, Ascii.VT, 1, 10, 9, 3, Ascii.SO, 5, 0, Ascii.FF, 7, 1, Ascii.SI, 13, 8, 10, 3, 7, 4, Ascii.FF, 5, 6, Ascii.VT, 0, Ascii.SO, 9, 2, 7, Ascii.VT, 4, 1, 9, Ascii.FF, Ascii.SO, 2, 0, 6, 10, 13, Ascii.SI, 3, 5, 8, 2, 1, Ascii.SO, 7, 4, 10, 8, 13, Ascii.SI, Ascii.FF, 9, 0, 3, 5, 6, Ascii.VT}};
    private static final byte[] g = {Ascii.DLE, 7, Ascii.DC4, Ascii.NAK, Ascii.GS, Ascii.FF, Ascii.FS, 17, 1, Ascii.SI, Ascii.ETB, Ascii.SUB, 5, Ascii.DC2, Ascii.US, 10, 2, 8, Ascii.CAN, Ascii.SO, 32, Ascii.ESC, 3, 9, 19, 13, Ascii.RS, 6, Ascii.SYN, Ascii.VT, 4, Ascii.EM};
    private static final byte[] h = {1, 2, 3, 4, 17, Ascii.DC2, 19, Ascii.DC4, 5, 6, 7, 8, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, 9, 10, Ascii.VT, Ascii.FF, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, 13, Ascii.SO, Ascii.SI, Ascii.DLE, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 49, 50, 51, 52, 37, 38, 39, 40, 53, 54, 55, 56, 41, 42, 43, 44, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, 45, 46, 47, 48, 61, 62, 63, SignedBytes.MAX_POWER_OF_TWO};
    private static final byte[] i = {46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] j = new byte[128];
    private static final long[][] k = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 16, 16);
    private static final long[][][] l = (long[][][]) Array.newInstance((Class<?>) Long.TYPE, 2, 16, 16);
    private static final long[][] m = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 16);
    private static final long[][] n = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 64);
    private static final long[][] o = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 16, 16);

    static {
        byte[] bArr = new byte[64];
        byte[] bArr2 = new byte[64];
        for (int i2 = 0; i2 < 64; i2++) {
            j[i[i2]] = (byte) i2;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            bArr[i3] = 0;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            byte b2 = e[i4];
            if (b2 != 0) {
                int i5 = b2 + (d[0] - 1);
                if (i5 % 28 < d[0]) {
                    i5 -= 28;
                }
                int i6 = c[i5];
                if (i6 > 0) {
                    int i7 = i6 - 1;
                    i6 = ((i7 | 7) - (i7 & 7)) + 1;
                }
                bArr[i4] = (byte) i6;
            }
        }
        a(k, bArr, 8);
        for (int i8 = 0; i8 < 2; i8++) {
            for (int i9 = 0; i9 < 64; i9++) {
                bArr2[i9] = 0;
                bArr[i9] = 0;
            }
            for (int i10 = 0; i10 < 64; i10++) {
                byte b3 = e[i10];
                if (b3 != 0) {
                    bArr2[b3 - 1] = (byte) (i10 + 1);
                }
            }
            for (int i11 = 0; i11 < 64; i11++) {
                byte b4 = e[i11];
                if (b4 != 0) {
                    int i12 = b4 + i8;
                    if (i12 % 28 <= i8) {
                        i12 -= 28;
                    }
                    bArr[i11] = bArr2[i12];
                }
            }
            a(l[i8], bArr, 8);
        }
        for (int i13 = 0; i13 < 8; i13++) {
            int i14 = 0;
            while (i14 < 8) {
                int i15 = i14 < 2 ? 0 : a[b[((i13 * 6) + i14) - 2] - 1];
                if (i15 > 32) {
                    i15 -= 32;
                } else if (i15 > 0) {
                    i15--;
                }
                if (i15 > 0) {
                    int i16 = i15 - 1;
                    i15 = ((i16 | 7) - (i16 & 7)) + 1;
                }
                bArr[(i13 * 8) + i14] = (byte) i15;
                i14++;
            }
        }
        a(m, bArr, 8);
        for (int i17 = 0; i17 < 64; i17++) {
            int i18 = a[h[i17] - 1];
            if (i18 > 0) {
                int i19 = i18 - 1;
                i18 = ((i19 | 7) - (i19 & 7)) + 1;
            }
            bArr[i18 - 1] = (byte) (i17 + 1);
        }
        a(o, bArr, 8);
        for (int i20 = 0; i20 < 48; i20++) {
            bArr[i20] = g[b[i20] - 1];
        }
        for (int i21 = 0; i21 < 8; i21++) {
            for (int i22 = 0; i22 < 64; i22++) {
                byte b5 = f[i21][(((i22 >> 0) & 1) << 5) | (((i22 >> 1) & 1) << 3) | (((i22 >> 2) & 1) << 2) | (((i22 >> 3) & 1) << 1) | (((i22 >> 4) & 1) << 0) | (((i22 >> 5) & 1) << 4)];
                int i23 = (((b5 >> 3) & 1) << 0) | (((b5 >> 2) & 1) << 1) | (((b5 >> 1) & 1) << 2) | (((b5 >> 0) & 1) << 3);
                for (int i24 = 0; i24 < 32; i24++) {
                    bArr2[i24] = 0;
                }
                for (int i25 = 0; i25 < 4; i25++) {
                    bArr2[(i21 * 4) + i25] = (byte) ((i23 >> i25) & 1);
                }
                long j2 = 0;
                int i26 = 24;
                while (true) {
                    i26--;
                    if (i26 >= 0) {
                        j2 = (j2 << 1) | (((long) bArr2[bArr[i26] - 1]) << 32) | ((long) bArr2[bArr[i26 + 24] - 1]);
                    }
                }
                n[i21][i22] = a(j2);
            }
        }
    }

    private UnixCrypt() {
    }

    private static int a(int i2) {
        return ((i2 << 26) & (-67108864)) | ((i2 << 12) & 16515072) | ((i2 >> 2) & 64512) | ((i2 >> 16) & 252);
    }

    private static long a(long j2) {
        return ((j2 << 26) & (-288230371923853312L)) | ((j2 << 12) & 70931694147600384L) | ((j2 >> 2) & 277076930264064L) | ((j2 >> 16) & 1082331758844L);
    }

    private static long a(long j2, long[][] jArr) {
        long j3 = 0;
        int i2 = 8;
        while (true) {
            i2--;
            if (i2 >= 0) {
                int i3 = (int) (255 & j2);
                j2 >>= 8;
                j3 = j3 | jArr[i2 << 1][i3 & 15] | jArr[(i2 << 1) + 1][i3 >> 4];
            } else {
                return j3;
            }
        }
    }

    private static long a(int i2, long[][] jArr) {
        long j2 = 0;
        int i3 = 4;
        while (true) {
            i3--;
            if (i3 >= 0) {
                int i4 = i2 & 255;
                i2 >>= 8;
                j2 = j2 | jArr[i3 << 1][i4 & 15] | jArr[(i3 << 1) + 1][i4 >> 4];
            } else {
                return j2;
            }
        }
    }

    private static long[] b(long j2) {
        long jA = a(j2, k);
        long[] jArr = new long[16];
        jArr[0] = jA & (-217020518463700993L);
        for (int i2 = 1; i2 < 16; i2++) {
            jArr[i2] = jA;
            jA = a(jA, l[d[i2] - 1]);
            jArr[i2] = jA & (-217020518463700993L);
        }
        return jArr;
    }

    private static long a(long j2, int i2, int i3, long[] jArr) {
        int iA = a(i2);
        long j3 = 6148914691236517205L & j2;
        long j4 = ((-6148914694099828736L) & j2) | ((j2 >> 1) & 1431655765);
        long jA = a((int) (((((j3 << 32) | (j3 << 1)) & (-4294967296L)) | ((j4 | (j4 >> 32)) & 4294967295L)) >> 32), m);
        long jA2 = a((int) ((-1) & jA), m);
        while (true) {
            i3--;
            if (i3 >= 0) {
                for (int i4 = 0; i4 < 8; i4++) {
                    long j5 = ((jA2 >> 32) ^ jA2) & ((long) iA) & 4294967295L;
                    long j6 = jArr[i4 << 1] ^ ((j5 | (j5 << 32)) ^ jA2);
                    jA ^= n[7][(int) ((j6 >> 2) & 63)] ^ ((((((n[0][(int) ((j6 >> 58) & 63)] ^ n[1][(int) ((j6 >> 50) & 63)]) ^ n[2][(int) ((j6 >> 42) & 63)]) ^ n[3][(int) ((j6 >> 34) & 63)]) ^ n[4][(int) ((j6 >> 26) & 63)]) ^ n[5][(int) ((j6 >> 18) & 63)]) ^ n[6][(int) ((j6 >> 10) & 63)]);
                    long j7 = ((jA >> 32) ^ jA) & ((long) iA) & 4294967295L;
                    long j8 = jArr[(i4 << 1) + 1] ^ ((j7 | (j7 << 32)) ^ jA);
                    jA2 ^= n[7][(int) ((j8 >> 2) & 63)] ^ ((((((n[0][(int) ((j8 >> 58) & 63)] ^ n[1][(int) ((j8 >> 50) & 63)]) ^ n[2][(int) ((j8 >> 42) & 63)]) ^ n[3][(int) ((j8 >> 34) & 63)]) ^ n[4][(int) ((j8 >> 26) & 63)]) ^ n[5][(int) ((j8 >> 18) & 63)]) ^ n[6][(int) ((j8 >> 10) & 63)]);
                }
                long j9 = jA ^ jA2;
                jA2 ^= j9;
                jA = j9 ^ jA2;
            } else {
                return a(((((jA >> 35) & 252645135) | (((jA & (-1)) << 1) & 4042322160L)) << 32) | (((jA2 & (-1)) << 1) & 4042322160L) | ((jA2 >> 35) & 252645135), o);
            }
        }
    }

    private static void a(long[][] jArr, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < i2 * 8; i3++) {
            int i4 = bArr[i3] - 1;
            if (i4 >= 0) {
                int i5 = i4 >> 2;
                int i6 = 1 << (i4 & 3);
                for (int i7 = 0; i7 < 16; i7++) {
                    int i8 = (i3 & 7) + ((7 - (i3 >> 3)) << 3);
                    if ((i7 & i6) != 0) {
                        long[] jArr2 = jArr[i5];
                        jArr2[i7] = jArr2[i7] | (1 << i8);
                    }
                }
            }
        }
    }

    public static String crypt(String str, String str2) {
        byte[] bArr = new byte[13];
        long jCharAt = 0;
        if (str == null || str2 == null) {
            return Constraint.ANY_ROLE;
        }
        int length = str.length();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 8) {
                break;
            }
            jCharAt = (jCharAt << 8) | ((long) (i3 < length ? str.charAt(i3) * 2 : 0));
            i2 = i3 + 1;
        }
        long[] jArrB = b(jCharAt);
        int i4 = 2;
        int i5 = 0;
        while (true) {
            int i6 = i4 - 1;
            if (i6 < 0) {
                break;
            }
            char cCharAt = i6 < str2.length() ? str2.charAt(i6) : ClassUtils.PACKAGE_SEPARATOR_CHAR;
            bArr[i6] = (byte) cCharAt;
            i5 = (j[cCharAt] & UnsignedBytes.MAX_VALUE) | (i5 << 6);
            i4 = i6;
        }
        long jA = a(0L, i5, 25, jArrB);
        bArr[12] = i[(((int) jA) << 2) & 63];
        long j2 = jA >> 4;
        int i7 = 12;
        while (true) {
            i7--;
            if (i7 >= 2) {
                bArr[i7] = i[((int) j2) & 63];
                j2 >>= 6;
            } else {
                return new String(bArr, 0, 13);
            }
        }
    }

    public static void main(String[] strArr) {
        if (strArr.length != 2) {
            System.err.println("Usage - java org.eclipse.util.UnixCrypt <key> <salt>");
            System.exit(1);
        }
        System.err.println("Crypt=" + crypt(strArr[0], strArr[1]));
    }
}
