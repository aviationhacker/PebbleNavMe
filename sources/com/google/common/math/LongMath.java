package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import defpackage.lm;
import java.math.RoundingMode;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class LongMath {

    @VisibleForTesting
    static final byte[] a = {19, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 17, 17, 17, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SO, Ascii.SO, Ascii.SO, 13, 13, 13, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.VT, Ascii.VT, Ascii.VT, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};

    @VisibleForTesting
    @GwtIncompatible("TODO")
    static final long[] b = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    @VisibleForTesting
    @GwtIncompatible("TODO")
    static final long[] c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};
    static final long[] d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};
    static final int[] e = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, HttpStatus.PARTIAL_CONTENT_206, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    @VisibleForTesting
    static final int[] f = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};
    private static final long[][] g = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    public static boolean isPowerOfTwo(long j) {
        return (((j - 1) & j) == 0) & (j > 0);
    }

    @VisibleForTesting
    static int a(long j, long j2) {
        return (int) ((((j - j2) ^ (-1)) ^ (-1)) >>> 63);
    }

    /* JADX INFO: renamed from: com.google.common.math.LongMath$1, reason: invalid class name */
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

    public static int log2(long j, RoundingMode roundingMode) {
        lm.a("x", j);
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(isPowerOfTwo(j));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j);
                return (63 - iNumberOfLeadingZeros) + a((-5402926248376769404) >>> iNumberOfLeadingZeros, j);
            default:
                throw new AssertionError("impossible");
        }
        return 63 - Long.numberOfLeadingZeros(j);
    }

    @GwtIncompatible("TODO")
    public static int log10(long j, RoundingMode roundingMode) {
        lm.a("x", j);
        int iA = a(j);
        long j2 = b[iA];
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(j == j2);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return a(j2, j) + iA;
            case 6:
            case 7:
            case 8:
                return a(c[iA], j) + iA;
            default:
                throw new AssertionError();
        }
        return iA;
    }

    @GwtIncompatible("TODO")
    static int a(long j) {
        byte b2 = a[Long.numberOfLeadingZeros(j)];
        return b2 - a(j, b[b2]);
    }

    @GwtIncompatible("TODO")
    public static long pow(long j, int i) {
        lm.b("exponent", i);
        if (-2 <= j && j <= 2) {
            switch ((int) j) {
                case -2:
                    if (i < 64) {
                        return (i & 1) == 0 ? 1 << i : -(1 << i);
                    }
                    return 0L;
                case -1:
                    return (i & 1) != 0 ? -1L : 1L;
                case 0:
                    return i == 0 ? 1L : 0L;
                case 1:
                    return 1L;
                case 2:
                    return i < 64 ? 1 << i : 0L;
                default:
                    throw new AssertionError();
            }
        }
        long j2 = 1;
        long j3 = j;
        while (true) {
            switch (i) {
                case 0:
                    return j2;
                case 1:
                    return j2 * j3;
                default:
                    j2 *= (i & 1) == 0 ? 1L : j3;
                    j3 *= j3;
                    i >>= 1;
                    break;
            }
        }
    }

    @GwtIncompatible("TODO")
    public static long sqrt(long j, RoundingMode roundingMode) {
        lm.b("x", j);
        if (b(j)) {
            return IntMath.sqrt((int) j, roundingMode);
        }
        long jSqrt = (long) Math.sqrt(j);
        long j2 = jSqrt * jSqrt;
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(j2 == j);
                return jSqrt;
            case 2:
            case 3:
                return j < j2 ? jSqrt - 1 : jSqrt;
            case 4:
            case 5:
                return j > j2 ? jSqrt + 1 : jSqrt;
            case 6:
            case 7:
            case 8:
                long j3 = jSqrt - ((long) (j >= j2 ? 0 : 1));
                return j3 + ((long) a((j3 * j3) + j3, j));
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0083  */
    @com.google.common.annotations.GwtIncompatible("TODO")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long divide(long r10, long r12, java.math.RoundingMode r14) {
        /*
            com.google.common.base.Preconditions.checkNotNull(r14)
            long r2 = r10 / r12
            long r0 = r12 * r2
            long r0 = r10 - r0
            r4 = 0
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 != 0) goto L10
        Lf:
            return r2
        L10:
            long r4 = r10 ^ r12
            r6 = 63
            long r4 = r4 >> r6
            int r4 = (int) r4
            r5 = r4 | 1
            int[] r4 = com.google.common.math.LongMath.AnonymousClass1.a
            int r6 = r14.ordinal()
            r4 = r4[r6]
            switch(r4) {
                case 1: goto L29;
                case 2: goto L33;
                case 3: goto L44;
                case 4: goto L3c;
                case 5: goto L3e;
                case 6: goto L4a;
                case 7: goto L4a;
                case 8: goto L4a;
                default: goto L23;
            }
        L23:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L29:
            r6 = 0
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 != 0) goto L3a
            r0 = 1
        L30:
            defpackage.lm.a(r0)
        L33:
            r0 = 0
        L34:
            if (r0 == 0) goto L83
            long r0 = (long) r5
            long r0 = r0 + r2
        L38:
            r2 = r0
            goto Lf
        L3a:
            r0 = 0
            goto L30
        L3c:
            r0 = 1
            goto L34
        L3e:
            if (r5 <= 0) goto L42
            r0 = 1
            goto L34
        L42:
            r0 = 0
            goto L34
        L44:
            if (r5 >= 0) goto L48
            r0 = 1
            goto L34
        L48:
            r0 = 0
            goto L34
        L4a:
            long r0 = java.lang.Math.abs(r0)
            long r6 = java.lang.Math.abs(r12)
            long r6 = r6 - r0
            long r0 = r0 - r6
            r6 = 0
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 != 0) goto L79
            java.math.RoundingMode r0 = java.math.RoundingMode.HALF_UP
            if (r14 != r0) goto L72
            r0 = 1
        L5f:
            java.math.RoundingMode r1 = java.math.RoundingMode.HALF_EVEN
            if (r14 != r1) goto L74
            r1 = 1
            r4 = r1
        L65:
            r6 = 1
            long r6 = r6 & r2
            r8 = 0
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 == 0) goto L77
            r1 = 1
        L6f:
            r1 = r1 & r4
            r0 = r0 | r1
            goto L34
        L72:
            r0 = 0
            goto L5f
        L74:
            r1 = 0
            r4 = r1
            goto L65
        L77:
            r1 = 0
            goto L6f
        L79:
            r6 = 0
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 <= 0) goto L81
            r0 = 1
            goto L34
        L81:
            r0 = 0
            goto L34
        L83:
            r0 = r2
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.divide(long, long, java.math.RoundingMode):long");
    }

    @GwtIncompatible("TODO")
    public static int mod(long j, int i) {
        return (int) mod(j, i);
    }

    @GwtIncompatible("TODO")
    public static long mod(long j, long j2) {
        if (j2 <= 0) {
            throw new ArithmeticException("Modulus must be positive");
        }
        long j3 = j % j2;
        return j3 >= 0 ? j3 : j3 + j2;
    }

    public static long gcd(long j, long j2) {
        lm.b("a", j);
        lm.b("b", j2);
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long jNumberOfTrailingZeros = j >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        long j3 = j2 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j3) {
            long j4 = jNumberOfTrailingZeros - j3;
            long j5 = (j4 >> 63) & j4;
            long j6 = (j4 - j5) - j5;
            j3 += j5;
            jNumberOfTrailingZeros = j6 >> Long.numberOfTrailingZeros(j6);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    @GwtIncompatible("TODO")
    public static long checkedAdd(long j, long j2) {
        long j3 = j + j2;
        lm.c(((j ^ j3) >= 0) | ((j ^ j2) < 0));
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedSubtract(long j, long j2) {
        long j3 = j - j2;
        lm.c(((j ^ j3) >= 0) | ((j ^ j2) >= 0));
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedMultiply(long j, long j2) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(j ^ (-1)) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(j2 ^ (-1));
        if (iNumberOfLeadingZeros > 65) {
            return j * j2;
        }
        lm.c(iNumberOfLeadingZeros >= 64);
        lm.c((j2 != Long.MIN_VALUE) | (j >= 0));
        long j3 = j * j2;
        lm.c(j == 0 || j3 / j == j2);
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedPow(long j, int i) {
        long j2 = 1;
        lm.b("exponent", i);
        if (!(j <= 2) || !(j >= -2)) {
            while (true) {
                switch (i) {
                    case 0:
                        return j2;
                    case 1:
                        return checkedMultiply(j2, j);
                    default:
                        long jCheckedMultiply = (i & 1) != 0 ? checkedMultiply(j2, j) : j2;
                        i >>= 1;
                        if (i > 0) {
                            lm.c(-3037000499L <= j && j <= 3037000499L);
                            j *= j;
                            j2 = jCheckedMultiply;
                        } else {
                            j2 = jCheckedMultiply;
                        }
                        break;
                }
            }
        } else {
            switch ((int) j) {
                case -2:
                    lm.c(i < 64);
                    return (i & 1) == 0 ? 1 << i : (-1) << i;
                case -1:
                    return (i & 1) != 0 ? -1L : 1L;
                case 0:
                    return i == 0 ? 1L : 0L;
                case 1:
                    return 1L;
                case 2:
                    lm.c(i < 63);
                    return 1 << i;
                default:
                    throw new AssertionError();
            }
        }
    }

    @GwtIncompatible("TODO")
    public static long factorial(int i) {
        lm.b("n", i);
        if (i < d.length) {
            return d[i];
        }
        return Long.MAX_VALUE;
    }

    public static long binomial(int i, int i2) {
        long jA;
        long j;
        long j2;
        int i3;
        long j3 = 1;
        lm.b("n", i);
        lm.b("k", i2);
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", Integer.valueOf(i2), Integer.valueOf(i));
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        switch (i2) {
            case 0:
                return 1L;
            case 1:
                return i;
            default:
                if (i < d.length) {
                    return d[i] / (d[i2] * d[i - i2]);
                }
                if (i2 >= e.length || i > e[i2]) {
                    return Long.MAX_VALUE;
                }
                if (i2 < f.length && i <= f[i2]) {
                    int i4 = i - 1;
                    long j4 = i;
                    for (int i5 = 2; i5 <= i2; i5++) {
                        j4 = (j4 * ((long) i4)) / ((long) i5);
                        i4--;
                    }
                    return j4;
                }
                int iLog2 = log2(i, RoundingMode.CEILING);
                int i6 = 2;
                int i7 = iLog2;
                int i8 = i - 1;
                long j5 = i;
                long j6 = 1;
                while (i6 <= i2) {
                    if (i7 + iLog2 < 63) {
                        long j7 = ((long) i8) * j5;
                        j2 = j3 * ((long) i6);
                        j = j7;
                        jA = j6;
                        i3 = i7 + iLog2;
                    } else {
                        jA = a(j6, j5, j3);
                        j = i8;
                        j2 = i6;
                        i3 = iLog2;
                    }
                    i7 = i3;
                    i8--;
                    i6++;
                    j6 = jA;
                    long j8 = j;
                    j3 = j2;
                    j5 = j8;
                }
                return a(j6, j5, j3);
        }
    }

    static long a(long j, long j2, long j3) {
        if (j == 1) {
            return j2 / j3;
        }
        long jGcd = gcd(j, j3);
        return (j2 / (j3 / jGcd)) * (j / jGcd);
    }

    static boolean b(long j) {
        return ((long) ((int) j)) == j;
    }

    public static long mean(long j, long j2) {
        return (j & j2) + ((j ^ j2) >> 1);
    }

    private LongMath() {
    }
}
