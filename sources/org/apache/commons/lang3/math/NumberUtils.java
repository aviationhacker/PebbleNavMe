package org.apache.commons.lang3.math;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public class NumberUtils {
    public static final Long LONG_ZERO = new Long(0);
    public static final Long LONG_ONE = new Long(1);
    public static final Long LONG_MINUS_ONE = new Long(-1);
    public static final Integer INTEGER_ZERO = new Integer(0);
    public static final Integer INTEGER_ONE = new Integer(1);
    public static final Integer INTEGER_MINUS_ONE = new Integer(-1);
    public static final Short SHORT_ZERO = new Short((short) 0);
    public static final Short SHORT_ONE = new Short((short) 1);
    public static final Short SHORT_MINUS_ONE = new Short((short) -1);
    public static final Byte BYTE_ZERO = (byte) 0;
    public static final Byte BYTE_ONE = (byte) 1;
    public static final Byte BYTE_MINUS_ONE = (byte) -1;
    public static final Double DOUBLE_ZERO = new Double(0.0d);
    public static final Double DOUBLE_ONE = new Double(1.0d);
    public static final Double DOUBLE_MINUS_ONE = new Double(-1.0d);
    public static final Float FLOAT_ZERO = new Float(0.0f);
    public static final Float FLOAT_ONE = new Float(1.0f);
    public static final Float FLOAT_MINUS_ONE = new Float(-1.0f);

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static int toInt(String str, int i) {
        if (str != null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                return i;
            }
        }
        return i;
    }

    public static long toLong(String str) {
        return toLong(str, 0L);
    }

    public static long toLong(String str, long j) {
        if (str != null) {
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e) {
                return j;
            }
        }
        return j;
    }

    public static float toFloat(String str) {
        return toFloat(str, 0.0f);
    }

    public static float toFloat(String str, float f) {
        if (str != null) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException e) {
                return f;
            }
        }
        return f;
    }

    public static double toDouble(String str) {
        return toDouble(str, 0.0d);
    }

    public static double toDouble(String str, double d) {
        if (str != null) {
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException e) {
                return d;
            }
        }
        return d;
    }

    public static byte toByte(String str) {
        return toByte(str, (byte) 0);
    }

    public static byte toByte(String str, byte b) {
        if (str != null) {
            try {
                return Byte.parseByte(str);
            } catch (NumberFormatException e) {
                return b;
            }
        }
        return b;
    }

    public static short toShort(String str) {
        return toShort(str, (short) 0);
    }

    public static short toShort(String str, short s) {
        if (str != null) {
            try {
                return Short.parseShort(str);
            } catch (NumberFormatException e) {
                return s;
            }
        }
        return s;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016a A[Catch: NumberFormatException -> 0x01ec, TRY_LEAVE, TryCatch #7 {NumberFormatException -> 0x01ec, blocks: (B:72:0x0160, B:74:0x016a), top: B:136:0x0160 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Number createNumber(java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.createNumber(java.lang.String):java.lang.Number");
    }

    private static boolean a(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        return str.length() > 0;
    }

    public static Float createFloat(String str) {
        if (str == null) {
            return null;
        }
        return Float.valueOf(str);
    }

    public static Double createDouble(String str) {
        if (str == null) {
            return null;
        }
        return Double.valueOf(str);
    }

    public static Integer createInteger(String str) {
        if (str == null) {
            return null;
        }
        return Integer.decode(str);
    }

    public static Long createLong(String str) {
        if (str == null) {
            return null;
        }
        return Long.valueOf(str);
    }

    public static BigInteger createBigInteger(String str) {
        if (str == null) {
            return null;
        }
        return new BigInteger(str);
    }

    public static BigDecimal createBigDecimal(String str) {
        if (str == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        return new BigDecimal(str);
    }

    public static long min(long[] jArr) {
        if (jArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (jArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] < j) {
                j = jArr[i];
            }
        }
        return j;
    }

    public static int min(int[] iArr) {
        if (iArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (iArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] < i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    public static short min(short[] sArr) {
        if (sArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (sArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] < s) {
                s = sArr[i];
            }
        }
        return s;
    }

    public static byte min(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] < b) {
                b = bArr[i];
            }
        }
        return b;
    }

    public static double min(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (!Double.isNaN(dArr[i])) {
                if (dArr[i] < d) {
                    d = dArr[i];
                }
            } else {
                return Double.NaN;
            }
        }
        return d;
    }

    public static float min(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (!Float.isNaN(fArr[i])) {
                if (fArr[i] < f) {
                    f = fArr[i];
                }
            } else {
                return Float.NaN;
            }
        }
        return f;
    }

    public static long max(long[] jArr) {
        if (jArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (jArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] > j) {
                j = jArr[i];
            }
        }
        return j;
    }

    public static int max(int[] iArr) {
        if (iArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (iArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    public static short max(short[] sArr) {
        if (sArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (sArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] > s) {
                s = sArr[i];
            }
        }
        return s;
    }

    public static byte max(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] > b) {
                b = bArr[i];
            }
        }
        return b;
    }

    public static double max(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (!Double.isNaN(dArr[i])) {
                if (dArr[i] > d) {
                    d = dArr[i];
                }
            } else {
                return Double.NaN;
            }
        }
        return d;
    }

    public static float max(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (!Float.isNaN(fArr[i])) {
                if (fArr[i] > f) {
                    f = fArr[i];
                }
            } else {
                return Float.NaN;
            }
        }
        return f;
    }

    public static long min(long j, long j2, long j3) {
        long j4 = j2 < j ? j2 : j;
        return j3 < j4 ? j3 : j4;
    }

    public static int min(int i, int i2, int i3) {
        int i4 = i2 < i ? i2 : i;
        return i3 < i4 ? i3 : i4;
    }

    public static short min(short s, short s2, short s3) {
        short s4 = s2 < s ? s2 : s;
        return s3 < s4 ? s3 : s4;
    }

    public static byte min(byte b, byte b2, byte b3) {
        byte b4 = b2 < b ? b2 : b;
        return b3 < b4 ? b3 : b4;
    }

    public static double min(double d, double d2, double d3) {
        return Math.min(Math.min(d, d2), d3);
    }

    public static float min(float f, float f2, float f3) {
        return Math.min(Math.min(f, f2), f3);
    }

    public static long max(long j, long j2, long j3) {
        long j4 = j2 > j ? j2 : j;
        return j3 > j4 ? j3 : j4;
    }

    public static int max(int i, int i2, int i3) {
        int i4 = i2 > i ? i2 : i;
        return i3 > i4 ? i3 : i4;
    }

    public static short max(short s, short s2, short s3) {
        short s4 = s2 > s ? s2 : s;
        return s3 > s4 ? s3 : s4;
    }

    public static byte max(byte b, byte b2, byte b3) {
        byte b4 = b2 > b ? b2 : b;
        return b3 > b4 ? b3 : b4;
    }

    public static double max(double d, double d2, double d3) {
        return Math.max(Math.max(d, d2), d3);
    }

    public static float max(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    public static boolean isDigits(String str) {
        if (StringUtils.isEmpty(str)) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0105, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a4, code lost:
    
        if (r6 >= r7.length) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a8, code lost:
    
        if (r7[r6] < '0') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ac, code lost:
    
        if (r7[r6] > '9') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b5, code lost:
    
        if (r7[r6] == 'e') goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00bb, code lost:
    
        if (r7[r6] == 'E') goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c1, code lost:
    
        if (r7[r6] != '.') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c3, code lost:
    
        if (r4 != false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c5, code lost:
    
        if (r5 != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ca, code lost:
    
        if (r3 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00d0, code lost:
    
        if (r7[r6] == 'd') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00d6, code lost:
    
        if (r7[r6] == 'D') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00dc, code lost:
    
        if (r7[r6] == 'f') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00e2, code lost:
    
        if (r7[r6] != 'F') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00eb, code lost:
    
        if (r7[r6] == 'l') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00f1, code lost:
    
        if (r7[r6] != 'L') goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00f3, code lost:
    
        if (r0 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00f5, code lost:
    
        if (r5 != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00f7, code lost:
    
        if (r4 != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00fc, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00fe, code lost:
    
        if (r3 != false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0100, code lost:
    
        if (r0 == false) goto L101;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isNumber(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.isNumber(java.lang.String):boolean");
    }
}
