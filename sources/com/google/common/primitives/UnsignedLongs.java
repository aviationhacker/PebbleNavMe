package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import defpackage.ln;
import java.math.BigInteger;
import java.util.Comparator;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class UnsignedLongs {
    public static final long MAX_VALUE = -1;
    private static final long[] a = new long[37];
    private static final int[] b = new int[37];
    private static final int[] c = new int[37];

    private UnsignedLongs() {
    }

    private static long a(long j) {
        return Long.MIN_VALUE ^ j;
    }

    @CheckReturnValue
    public static int compare(long j, long j2) {
        return Longs.compare(a(j), a(j2));
    }

    @CheckReturnValue
    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long jA = a(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jA2 = a(jArr[i]);
            if (jA2 < jA) {
                jA = jA2;
            }
        }
        return a(jA);
    }

    @CheckReturnValue
    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long jA = a(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jA2 = a(jArr[i]);
            if (jA2 > jA) {
                jA = jA2;
            }
        }
        return a(jA);
    }

    @CheckReturnValue
    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(toString(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str).append(toString(jArr[i]));
        }
        return sb.toString();
    }

    @CheckReturnValue
    public static Comparator<long[]> lexicographicalComparator() {
        return a.INSTANCE;
    }

    enum a implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                if (jArr[i] != jArr2[i]) {
                    return UnsignedLongs.compare(jArr[i], jArr2[i]);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    @CheckReturnValue
    public static long divide(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return ((long) (compare(j - (j3 * j2), j2) < 0 ? 0 : 1)) + j3;
    }

    @CheckReturnValue
    public static long remainder(long j, long j2) {
        if (j2 < 0) {
            if (compare(j, j2) >= 0) {
                return j - j2;
            }
            return j;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (compare(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    public static long parseUnsignedLong(String str) {
        return parseUnsignedLong(str, 10);
    }

    public static long decode(String str) {
        ln lnVarA = ln.a(str);
        try {
            return parseUnsignedLong(lnVarA.a, lnVarA.b);
        } catch (NumberFormatException e) {
            String strValueOf = String.valueOf(str);
            NumberFormatException numberFormatException = new NumberFormatException(strValueOf.length() != 0 ? "Error parsing value: ".concat(strValueOf) : new String("Error parsing value: "));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    public static long parseUnsignedLong(String str, int i) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i < 2 || i > 36) {
            throw new NumberFormatException(new StringBuilder(26).append("illegal radix: ").append(i).toString());
        }
        int i2 = c[i] - 1;
        long j = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int iDigit = Character.digit(str.charAt(i3), i);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i3 > i2 && a(j, iDigit, i)) {
                String strValueOf = String.valueOf(str);
                throw new NumberFormatException(strValueOf.length() != 0 ? "Too large for unsigned long: ".concat(strValueOf) : new String("Too large for unsigned long: "));
            }
            j = (j * ((long) i)) + ((long) iDigit);
        }
        return j;
    }

    private static boolean a(long j, int i, int i2) {
        if (j < 0) {
            return true;
        }
        if (j < a[i2]) {
            return false;
        }
        return j > a[i2] || i > b[i2];
    }

    @CheckReturnValue
    public static String toString(long j) {
        return toString(j, 10);
    }

    @CheckReturnValue
    public static String toString(long j, int i) {
        int i2;
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", Integer.valueOf(i));
        if (j == 0) {
            return "0";
        }
        char[] cArr = new char[64];
        int length = cArr.length;
        if (j < 0) {
            long jDivide = divide(j, i);
            int i3 = length - 1;
            cArr[i3] = Character.forDigit((int) (j - (((long) i) * jDivide)), i);
            i2 = i3;
            j = jDivide;
        } else {
            i2 = length;
        }
        while (j > 0) {
            int i4 = i2 - 1;
            cArr[i4] = Character.forDigit((int) (j % ((long) i)), i);
            j /= (long) i;
            i2 = i4;
        }
        return new String(cArr, i2, cArr.length - i2);
    }

    static {
        BigInteger bigInteger = new BigInteger("10000000000000000", 16);
        for (int i = 2; i <= 36; i++) {
            a[i] = divide(-1L, i);
            b[i] = (int) remainder(-1L, i);
            c[i] = bigInteger.toString(i).length() - 1;
        }
    }
}
