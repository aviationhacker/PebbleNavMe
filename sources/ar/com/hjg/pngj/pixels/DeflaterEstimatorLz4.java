package ar.com.hjg.pngj.pixels;

import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class DeflaterEstimatorLz4 {
    static final ByteOrder a = ByteOrder.nativeOrder();
    static final int b = Math.max(6, 2);

    public int compressEstim(byte[] bArr, int i, int i2) {
        int iA = 0;
        if (i2 >= 10) {
            int i3 = ((i2 + 65546) - 1) / 65546;
            int i4 = i2 / i3;
            if (i4 >= 65546 || i4 * i3 > i2 || i3 < 1 || i4 < 1) {
                throw new RuntimeException("?? " + i2);
            }
            int i5 = i2;
            int i6 = 0;
            while (i5 > 0) {
                if (i5 > i4) {
                    i5 = i4;
                }
                iA += a(bArr, i, i5);
                i += i5;
                i6 += i5;
                i5 = i2 - i6;
            }
            return i6 == i2 ? iA : (int) (((((double) iA) / ((double) i6)) * ((double) i2)) + 0.5d);
        }
        return i2;
    }

    public int compressEstim(byte[] bArr) {
        return compressEstim(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
    
        r2 = a(r13, r10, r4, r14, r0);
        r3 = r4 - r2;
        r2 = r10 - r2;
        r4 = r3 - r0;
        r0 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (r4 < 15) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        if (r4 <= 15) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        r0 = r0 + ((r4 - 15) / 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
    
        r1 = r0 + r4;
        r0 = r2;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        r1 = r1 + 2;
        r2 = r2 + 4;
        r3 = a(r13, r0 + 4, r2, r6);
        r0 = r2 + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
    
        if (r3 < 15) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
    
        if (r3 < 270) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        r1 = r1 + ((r3 - 15) / 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0087, code lost:
    
        if (r0 <= r7) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0089, code lost:
    
        r14 = r0;
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
    
        a(r8, a(c(r13, r0 - 2)), (r0 - 2) - r14);
        r3 = a(c(r13, r0));
        r2 = a(r8, r3) + r14;
        a(r8, r3, r0 - r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b2, code lost:
    
        if (b(r13, r0, r2) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b8, code lost:
    
        r1 = r1 + 1;
        r2 = r0;
        r0 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int a(byte[] r13, int r14, int r15) {
        /*
            int r5 = r14 + r15
            int r6 = r5 + (-5)
            int r7 = r5 + (-12)
            r0 = 0
            r1 = 13
            if (r15 < r1) goto L26
            r1 = 8192(0x2000, float:1.148E-41)
            short[] r8 = new short[r1]
            int r1 = r14 + 1
            r2 = r1
            r1 = r0
            r0 = r14
        L14:
            r3 = 1
            int r4 = ar.com.hjg.pngj.pixels.DeflaterEstimatorLz4.b
            int r3 = r3 << r4
            int r3 = r3 + 3
            r4 = r2
            r2 = r3
        L1c:
            int r3 = r2 + 1
            int r9 = ar.com.hjg.pngj.pixels.DeflaterEstimatorLz4.b
            int r2 = r2 >>> r9
            int r2 = r2 + r4
            if (r2 <= r7) goto L35
            r14 = r0
            r0 = r1
        L26:
            int r1 = r5 - r14
            r2 = 270(0x10e, float:3.78E-43)
            if (r1 < r2) goto L31
            int r2 = r1 + (-15)
            int r2 = r2 / 255
            int r0 = r0 + r2
        L31:
            int r0 = r0 + 1
            int r0 = r0 + r1
            return r0
        L35:
            int r9 = c(r13, r4)
            int r9 = a(r9)
            int r10 = a(r8, r9)
            int r10 = r10 + r14
            int r11 = r4 - r14
            a(r8, r9, r11)
            boolean r9 = b(r13, r10, r4)
            if (r9 == 0) goto Lbe
            int r2 = a(r13, r10, r4, r14, r0)
            int r3 = r4 - r2
            int r2 = r10 - r2
            int r4 = r3 - r0
            int r0 = r1 + 1
            r1 = 15
            if (r4 < r1) goto L68
            r1 = 15
            if (r4 <= r1) goto L66
            int r1 = r4 + (-15)
            int r1 = r1 / 255
            int r0 = r0 + r1
        L66:
            int r0 = r0 + 1
        L68:
            int r0 = r0 + r4
            r1 = r0
            r0 = r2
            r2 = r3
        L6c:
            int r1 = r1 + 2
            int r2 = r2 + 4
            int r0 = r0 + 4
            int r3 = a(r13, r0, r2, r6)
            int r0 = r2 + r3
            r2 = 15
            if (r3 < r2) goto L87
            r2 = 270(0x10e, float:3.78E-43)
            if (r3 < r2) goto L85
            int r2 = r3 + (-15)
            int r2 = r2 / 255
            int r1 = r1 + r2
        L85:
            int r1 = r1 + 1
        L87:
            if (r0 <= r7) goto L8c
            r14 = r0
            r0 = r1
            goto L26
        L8c:
            int r2 = r0 + (-2)
            int r2 = c(r13, r2)
            int r2 = a(r2)
            int r3 = r0 + (-2)
            int r3 = r3 - r14
            a(r8, r2, r3)
            int r2 = c(r13, r0)
            int r3 = a(r2)
            int r2 = a(r8, r3)
            int r2 = r2 + r14
            int r4 = r0 - r14
            a(r8, r3, r4)
            boolean r3 = b(r13, r0, r2)
            if (r3 != 0) goto Lb8
            int r2 = r0 + 1
            goto L14
        Lb8:
            int r1 = r1 + 1
            r12 = r2
            r2 = r0
            r0 = r12
            goto L6c
        Lbe:
            r4 = r2
            r2 = r3
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: ar.com.hjg.pngj.pixels.DeflaterEstimatorLz4.a(byte[], int, int):int");
    }

    static int a(int i) {
        return ((-1640531535) * i) >>> 19;
    }

    static boolean b(byte[] bArr, int i, int i2) {
        return bArr[i] == bArr[i2] && bArr[i + 1] == bArr[i2 + 1] && bArr[i + 2] == bArr[i2 + 2] && bArr[i + 3] == bArr[i2 + 3];
    }

    static int a(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i2 < i3) {
            int i5 = i + 1;
            int i6 = i2 + 1;
            if (bArr[i] != bArr[i2]) {
                break;
            }
            i4++;
            i2 = i6;
            i = i5;
        }
        return i4;
    }

    static int a(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = 0;
        while (i > i3 && i2 > i4) {
            i--;
            i2--;
            if (bArr[i] != bArr[i2]) {
                break;
            }
            i5++;
        }
        return i5;
    }

    static int a(short[] sArr, int i) {
        return sArr[i] & 65535;
    }

    static int a(byte[] bArr, int i) {
        return ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i + 3] & UnsignedBytes.MAX_VALUE);
    }

    static int b(byte[] bArr, int i) {
        return (bArr[i] & UnsignedBytes.MAX_VALUE) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 3] & UnsignedBytes.MAX_VALUE) << 24);
    }

    static int c(byte[] bArr, int i) {
        return a == ByteOrder.BIG_ENDIAN ? a(bArr, i) : b(bArr, i);
    }

    static void a(short[] sArr, int i, int i2) {
        sArr[i] = (short) i2;
    }
}
