package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import defpackage.ll;
import defpackage.lm;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class DoubleMath {
    private static final double b = Math.log(2.0d);

    @VisibleForTesting
    static final double[] a = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    @GwtIncompatible("#isMathematicalInteger, com.google.common.math.DoubleUtils")
    static double a(double d, RoundingMode roundingMode) {
        if (!ll.b(d)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(isMathematicalInteger(d));
                return d;
            case 2:
                if (d < 0.0d && !isMathematicalInteger(d)) {
                    return d - 1.0d;
                }
                return d;
            case 3:
                if (d > 0.0d && !isMathematicalInteger(d)) {
                    return d + 1.0d;
                }
                return d;
            case 4:
                return d;
            case 5:
                if (!isMathematicalInteger(d)) {
                    return d + Math.copySign(1.0d, d);
                }
                return d;
            case 6:
                return Math.rint(d);
            case 7:
                double dRint = Math.rint(d);
                return Math.abs(d - dRint) == 0.5d ? d + Math.copySign(0.5d, d) : dRint;
            case 8:
                double dRint2 = Math.rint(d);
                return Math.abs(d - dRint2) != 0.5d ? dRint2 : d;
            default:
                throw new AssertionError();
        }
    }

    /* JADX INFO: renamed from: com.google.common.math.DoubleMath$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[RoundingMode.values().length];

        static {
            try {
                a[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    @GwtIncompatible("#roundIntermediate")
    public static int roundToInt(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        lm.b((dA < 2.147483648E9d) & (dA > -2.147483649E9d));
        return (int) dA;
    }

    @GwtIncompatible("#roundIntermediate")
    public static long roundToLong(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        lm.b((dA < 9.223372036854776E18d) & ((-9.223372036854776E18d) - dA < 1.0d));
        return (long) dA;
    }

    @GwtIncompatible("#roundIntermediate, java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    public static BigInteger roundToBigInteger(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        if ((dA < 9.223372036854776E18d) & ((-9.223372036854776E18d) - dA < 1.0d)) {
            return BigInteger.valueOf((long) dA);
        }
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(ll.a(dA)).shiftLeft(Math.getExponent(dA) - 52);
        return dA < 0.0d ? bigIntegerShiftLeft.negate() : bigIntegerShiftLeft;
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    public static boolean isPowerOfTwo(double d) {
        return d > 0.0d && ll.b(d) && LongMath.isPowerOfTwo(ll.a(d));
    }

    public static double log2(double d) {
        return Math.log(d) / b;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    @com.google.common.annotations.GwtIncompatible("java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(double r8, java.math.RoundingMode r10) {
        /*
            r1 = 1
            r2 = 0
            r4 = 0
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 <= 0) goto L28
            boolean r0 = defpackage.ll.b(r8)
            if (r0 == 0) goto L28
            r0 = r1
        Lf:
            java.lang.String r3 = "x must be positive and finite"
            com.google.common.base.Preconditions.checkArgument(r0, r3)
            int r3 = java.lang.Math.getExponent(r8)
            boolean r0 = defpackage.ll.c(r8)
            if (r0 != 0) goto L2a
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r0 = r0 * r8
            int r0 = log2(r0, r10)
            int r0 = r0 + (-52)
        L27:
            return r0
        L28:
            r0 = r2
            goto Lf
        L2a:
            int[] r0 = com.google.common.math.DoubleMath.AnonymousClass1.a
            int r4 = r10.ordinal()
            r0 = r0[r4]
            switch(r0) {
                case 1: goto L3b;
                case 2: goto L42;
                case 3: goto L48;
                case 4: goto L50;
                case 5: goto L5f;
                case 6: goto L6e;
                case 7: goto L6e;
                case 8: goto L6e;
                default: goto L35;
            }
        L35:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L3b:
            boolean r0 = isPowerOfTwo(r8)
            defpackage.lm.a(r0)
        L42:
            r1 = r2
        L43:
            if (r1 == 0) goto L7b
            int r0 = r3 + 1
            goto L27
        L48:
            boolean r0 = isPowerOfTwo(r8)
            if (r0 == 0) goto L43
            r1 = r2
            goto L43
        L50:
            if (r3 >= 0) goto L5b
            r0 = r1
        L53:
            boolean r4 = isPowerOfTwo(r8)
            if (r4 != 0) goto L5d
        L59:
            r1 = r1 & r0
            goto L43
        L5b:
            r0 = r2
            goto L53
        L5d:
            r1 = r2
            goto L59
        L5f:
            if (r3 < 0) goto L6a
            r0 = r1
        L62:
            boolean r4 = isPowerOfTwo(r8)
            if (r4 != 0) goto L6c
        L68:
            r1 = r1 & r0
            goto L43
        L6a:
            r0 = r2
            goto L62
        L6c:
            r1 = r2
            goto L68
        L6e:
            double r4 = defpackage.ll.d(r8)
            double r4 = r4 * r4
            r6 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 > 0) goto L43
            r1 = r2
            goto L43
        L7b:
            r0 = r3
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.DoubleMath.log2(double, java.math.RoundingMode):int");
    }

    @GwtIncompatible("java.lang.Math.getExponent, com.google.common.math.DoubleUtils")
    public static boolean isMathematicalInteger(double d) {
        return ll.b(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(ll.a(d)) <= Math.getExponent(d));
    }

    public static double factorial(int i) {
        lm.b("n", i);
        if (i > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d = 1.0d;
        for (int i2 = (i & (-16)) + 1; i2 <= i; i2++) {
            d *= (double) i2;
        }
        return a[i >> 4] * d;
    }

    public static boolean fuzzyEquals(double d, double d2, double d3) {
        lm.a("tolerance", d3);
        return Math.copySign(d - d2, 1.0d) <= d3 || d == d2 || (Double.isNaN(d) && Double.isNaN(d2));
    }

    public static int fuzzyCompare(double d, double d2, double d3) {
        if (fuzzyEquals(d, d2, d3)) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d), Double.isNaN(d2));
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    public static double mean(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0, "Cannot take mean of 0 values");
        double dA = a(dArr[0]);
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            a(dArr[i]);
            j++;
            dA += (dArr[i] - dA) / j;
        }
        return dA;
    }

    public static double mean(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0, "Cannot take mean of 0 values");
        long j = 0;
        for (int i : iArr) {
            j += (long) i;
        }
        return j / ((double) iArr.length);
    }

    public static double mean(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0, "Cannot take mean of 0 values");
        double d = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            d += (jArr[i] - d) / j;
        }
        return d;
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    public static double mean(Iterable<? extends Number> iterable) {
        return mean(iterable.iterator());
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    public static double mean(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext(), "Cannot take mean of 0 values");
        double dA = a(it.next().doubleValue());
        long j = 1;
        while (it.hasNext()) {
            j++;
            dA = ((a(it.next().doubleValue()) - dA) / j) + dA;
        }
        return dA;
    }

    @GwtIncompatible("com.google.common.math.DoubleUtils")
    private static double a(double d) {
        Preconditions.checkArgument(ll.b(d));
        return d;
    }

    private DoubleMath() {
    }
}
