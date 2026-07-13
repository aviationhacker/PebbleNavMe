package defpackage;

import com.google.common.base.Preconditions;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class ll {
    private static final long a = Double.doubleToRawLongBits(1.0d);

    public static long a(double d) {
        Preconditions.checkArgument(b(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : 4503599627370496L | jDoubleToRawLongBits;
    }

    public static boolean b(double d) {
        return Math.getExponent(d) <= 1023;
    }

    public static boolean c(double d) {
        return Math.getExponent(d) >= -1022;
    }

    public static double d(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | a);
    }

    public static double a(BigInteger bigInteger) {
        boolean z = true;
        BigInteger bigIntegerAbs = bigInteger.abs();
        int iBitLength = bigIntegerAbs.bitLength() - 1;
        if (iBitLength < 63) {
            return bigInteger.longValue();
        }
        if (iBitLength > 1023) {
            return ((double) bigInteger.signum()) * Double.POSITIVE_INFINITY;
        }
        int i = (iBitLength - 52) - 1;
        long jLongValue = bigIntegerAbs.shiftRight(i).longValue();
        long j = (jLongValue >> 1) & 4503599627370495L;
        if ((jLongValue & 1) == 0 || ((j & 1) == 0 && bigIntegerAbs.getLowestSetBit() >= i)) {
            z = false;
        }
        if (z) {
            j++;
        }
        return Double.longBitsToDouble((j + (((long) (iBitLength + 1023)) << 52)) | (((long) bigInteger.signum()) & Long.MIN_VALUE));
    }
}
