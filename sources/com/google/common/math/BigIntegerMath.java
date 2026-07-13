package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import defpackage.ll;
import defpackage.lm;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class BigIntegerMath {

    @VisibleForTesting
    static final BigInteger a = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);
    private static final double b = Math.log(10.0d);
    private static final double c = Math.log(2.0d);

    public static boolean isPowerOfTwo(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() + (-1);
    }

    public static int log2(BigInteger bigInteger, RoundingMode roundingMode) {
        lm.a("x", (BigInteger) Preconditions.checkNotNull(bigInteger));
        int iBitLength = bigInteger.bitLength() - 1;
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(isPowerOfTwo(bigInteger));
                return iBitLength;
            case 2:
            case 3:
                return iBitLength;
            case 4:
            case 5:
                return !isPowerOfTwo(bigInteger) ? iBitLength + 1 : iBitLength;
            case 6:
            case 7:
            case 8:
                if (iBitLength >= 256) {
                    return bigInteger.pow(2).bitLength() + (-1) >= (iBitLength * 2) + 1 ? iBitLength + 1 : iBitLength;
                }
                if (bigInteger.compareTo(a.shiftRight(256 - iBitLength)) > 0) {
                    return iBitLength + 1;
                }
                return iBitLength;
            default:
                throw new AssertionError();
        }
    }

    /* JADX INFO: renamed from: com.google.common.math.BigIntegerMath$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[RoundingMode.values().length];

        static {
            try {
                a[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    @GwtIncompatible("TODO")
    public static int log10(BigInteger bigInteger, RoundingMode roundingMode) {
        int i;
        BigInteger bigInteger2;
        int i2;
        int iCompareTo;
        lm.a("x", bigInteger);
        if (a(bigInteger)) {
            return LongMath.log10(bigInteger.longValue(), roundingMode);
        }
        int iLog2 = (int) ((((double) log2(bigInteger, RoundingMode.FLOOR)) * c) / b);
        BigInteger bigIntegerPow = BigInteger.TEN.pow(iLog2);
        int iCompareTo2 = bigIntegerPow.compareTo(bigInteger);
        if (iCompareTo2 > 0) {
            do {
                iLog2--;
                bigIntegerPow = bigIntegerPow.divide(BigInteger.TEN);
                iCompareTo = bigIntegerPow.compareTo(bigInteger);
            } while (iCompareTo > 0);
            i = iLog2;
            bigInteger2 = bigIntegerPow;
            i2 = iCompareTo;
        } else {
            BigInteger bigIntegerMultiply = BigInteger.TEN.multiply(bigIntegerPow);
            i = iLog2;
            bigInteger2 = bigIntegerPow;
            i2 = iCompareTo2;
            BigInteger bigInteger3 = bigIntegerMultiply;
            int iCompareTo3 = bigIntegerMultiply.compareTo(bigInteger);
            while (iCompareTo3 <= 0) {
                i++;
                BigInteger bigIntegerMultiply2 = BigInteger.TEN.multiply(bigInteger3);
                i2 = iCompareTo3;
                iCompareTo3 = bigIntegerMultiply2.compareTo(bigInteger);
                bigInteger2 = bigInteger3;
                bigInteger3 = bigIntegerMultiply2;
            }
        }
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(i2 == 0);
                return i;
            case 2:
            case 3:
                return i;
            case 4:
            case 5:
                return !bigInteger2.equals(bigInteger) ? i + 1 : i;
            case 6:
            case 7:
            case 8:
                return bigInteger.pow(2).compareTo(bigInteger2.pow(2).multiply(BigInteger.TEN)) > 0 ? i + 1 : i;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible("TODO")
    public static BigInteger sqrt(BigInteger bigInteger, RoundingMode roundingMode) {
        lm.b("x", bigInteger);
        if (a(bigInteger)) {
            return BigInteger.valueOf(LongMath.sqrt(bigInteger.longValue(), roundingMode));
        }
        BigInteger bigIntegerB = b(bigInteger);
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(bigIntegerB.pow(2).equals(bigInteger));
                return bigIntegerB;
            case 2:
            case 3:
                return bigIntegerB;
            case 4:
            case 5:
                int iIntValue = bigIntegerB.intValue();
                return !(iIntValue * iIntValue == bigInteger.intValue() && bigIntegerB.pow(2).equals(bigInteger)) ? bigIntegerB.add(BigInteger.ONE) : bigIntegerB;
            case 6:
            case 7:
            case 8:
                return bigIntegerB.pow(2).add(bigIntegerB).compareTo(bigInteger) < 0 ? bigIntegerB.add(BigInteger.ONE) : bigIntegerB;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible("TODO")
    private static BigInteger b(BigInteger bigInteger) {
        BigInteger bigIntegerShiftLeft;
        int iLog2 = log2(bigInteger, RoundingMode.FLOOR);
        if (iLog2 < 1023) {
            bigIntegerShiftLeft = c(bigInteger);
        } else {
            int i = (iLog2 - 52) & (-2);
            bigIntegerShiftLeft = c(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger bigIntegerShiftRight = bigIntegerShiftLeft.add(bigInteger.divide(bigIntegerShiftLeft)).shiftRight(1);
        if (!bigIntegerShiftLeft.equals(bigIntegerShiftRight)) {
            do {
                bigIntegerShiftLeft = bigIntegerShiftRight;
                bigIntegerShiftRight = bigIntegerShiftLeft.add(bigInteger.divide(bigIntegerShiftLeft)).shiftRight(1);
            } while (bigIntegerShiftRight.compareTo(bigIntegerShiftLeft) < 0);
        }
        return bigIntegerShiftLeft;
    }

    @GwtIncompatible("TODO")
    private static BigInteger c(BigInteger bigInteger) {
        return DoubleMath.roundToBigInteger(Math.sqrt(ll.a(bigInteger)), RoundingMode.HALF_EVEN);
    }

    @GwtIncompatible("TODO")
    public static BigInteger divide(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    public static BigInteger factorial(int i) {
        lm.b("n", i);
        if (i < LongMath.d.length) {
            return BigInteger.valueOf(LongMath.d[i]);
        }
        ArrayList arrayList = new ArrayList(IntMath.divide(IntMath.log2(i, RoundingMode.CEILING) * i, 64, RoundingMode.CEILING));
        int length = LongMath.d.length;
        long j = LongMath.d[length - 1];
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> iNumberOfTrailingZeros;
        int iLog2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
        int iLog22 = LongMath.log2(length, RoundingMode.FLOOR) + 1;
        long j3 = length;
        int i2 = 1 << (iLog22 - 1);
        int i3 = iLog22;
        long j4 = j2;
        int iLog23 = iLog2;
        int i4 = iNumberOfTrailingZeros;
        long j5 = j3;
        while (j5 <= i) {
            if ((((long) i2) & j5) != 0) {
                i2 <<= 1;
                i3++;
            }
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j5);
            long j6 = j5 >> iNumberOfTrailingZeros2;
            i4 += iNumberOfTrailingZeros2;
            if (iLog23 + (i3 - iNumberOfTrailingZeros2) >= 64) {
                arrayList.add(BigInteger.valueOf(j4));
                j4 = 1;
            }
            long j7 = j4 * j6;
            iLog23 = LongMath.log2(j7, RoundingMode.FLOOR) + 1;
            j5 = 1 + j5;
            j4 = j7;
        }
        if (j4 > 1) {
            arrayList.add(BigInteger.valueOf(j4));
        }
        return a(arrayList).shiftLeft(i4);
    }

    static BigInteger a(List<BigInteger> list) {
        return a(list, 0, list.size());
    }

    static BigInteger a(List<BigInteger> list, int i, int i2) {
        switch (i2 - i) {
            case 0:
                return BigInteger.ONE;
            case 1:
                return list.get(i);
            case 2:
                return list.get(i).multiply(list.get(i + 1));
            case 3:
                return list.get(i).multiply(list.get(i + 1)).multiply(list.get(i + 2));
            default:
                int i3 = (i2 + i) >>> 1;
                return a(list, i, i3).multiply(a(list, i3, i2));
        }
    }

    public static BigInteger binomial(int i, int i2) {
        lm.b("n", i);
        lm.b("k", i2);
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", Integer.valueOf(i2), Integer.valueOf(i));
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 < LongMath.e.length && i <= LongMath.e[i2]) {
            return BigInteger.valueOf(LongMath.binomial(i, i2));
        }
        BigInteger bigInteger = BigInteger.ONE;
        long j = i;
        long j2 = 1;
        int iLog2 = LongMath.log2(i, RoundingMode.CEILING);
        BigInteger bigInteger2 = bigInteger;
        int i3 = iLog2;
        for (int i4 = 1; i4 < i2; i4++) {
            int i5 = i - i4;
            int i6 = i4 + 1;
            if (i3 + iLog2 >= 63) {
                BigInteger bigIntegerDivide = bigInteger2.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
                j = i5;
                j2 = i6;
                i3 = iLog2;
                bigInteger2 = bigIntegerDivide;
            } else {
                j *= (long) i5;
                j2 *= (long) i6;
                i3 += iLog2;
            }
        }
        return bigInteger2.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
    }

    @GwtIncompatible("TODO")
    static boolean a(BigInteger bigInteger) {
        return bigInteger.bitLength() <= 63;
    }

    private BigIntegerMath() {
    }
}
