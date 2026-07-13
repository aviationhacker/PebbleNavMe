package com.google.common.math;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.search.SearchAuth;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import defpackage.lm;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class IntMath {

    @VisibleForTesting
    static final byte[] a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    @VisibleForTesting
    static final int[] b = {1, 10, 100, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, SearchAuth.StatusCodes.AUTH_DISABLED, 100000, 1000000, 10000000, 100000000, 1000000000};

    @VisibleForTesting
    static final int[] c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] e = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    @VisibleForTesting
    static int[] d = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static boolean isPowerOfTwo(int i) {
        return (((i + (-1)) & i) == 0) & (i > 0);
    }

    @VisibleForTesting
    static int a(int i, int i2) {
        return (((i - i2) ^ (-1)) ^ (-1)) >>> 31;
    }

    /* JADX INFO: renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
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

    public static int log2(int i, RoundingMode roundingMode) {
        lm.a("x", i);
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(isPowerOfTwo(i));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return (31 - iNumberOfLeadingZeros) + a((-1257966797) >>> iNumberOfLeadingZeros, i);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int log10(int i, RoundingMode roundingMode) {
        lm.a("x", i);
        int iA = a(i);
        int i2 = b[iA];
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(i == i2);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return a(i2, i) + iA;
            case 6:
            case 7:
            case 8:
                return a(c[iA], i) + iA;
            default:
                throw new AssertionError();
        }
        return iA;
    }

    private static int a(int i) {
        byte b2 = a[Integer.numberOfLeadingZeros(i)];
        return b2 - a(i, b[b2]);
    }

    @GwtIncompatible("failing tests")
    public static int pow(int i, int i2) {
        lm.b("exponent", i2);
        switch (i) {
            case -2:
                if (i2 < 32) {
                    if ((i2 & 1) != 0) {
                    }
                }
                break;
            case -1:
                if ((i2 & 1) != 0) {
                }
                break;
            case 0:
                if (i2 != 0) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                break;
            default:
                int i3 = 1;
                int i4 = i;
                while (true) {
                    switch (i2) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            i3 *= (i2 & 1) == 0 ? 1 : i4;
                            i4 *= i4;
                            i2 >>= 1;
                            break;
                    }
                }
                break;
        }
        return 1;
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int sqrt(int i, RoundingMode roundingMode) {
        lm.b("x", i);
        int iB = b(i);
        switch (AnonymousClass1.a[roundingMode.ordinal()]) {
            case 1:
                lm.a(iB * iB == i);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return a(iB * iB, i) + iB;
            case 6:
            case 7:
            case 8:
                return a((iB * iB) + iB, i) + iB;
            default:
                throw new AssertionError();
        }
        return iB;
    }

    private static int b(int i) {
        return (int) Math.sqrt(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int divide(int r7, int r8, java.math.RoundingMode r9) {
        /*
            r0 = 1
            r1 = 0
            com.google.common.base.Preconditions.checkNotNull(r9)
            if (r8 != 0) goto Lf
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.String r1 = "/ by zero"
            r0.<init>(r1)
            throw r0
        Lf:
            int r2 = r7 / r8
            int r3 = r8 * r2
            int r3 = r7 - r3
            if (r3 != 0) goto L18
        L17:
            return r2
        L18:
            r4 = r7 ^ r8
            int r4 = r4 >> 31
            r5 = r4 | 1
            int[] r4 = com.google.common.math.IntMath.AnonymousClass1.a
            int r6 = r9.ordinal()
            r4 = r4[r6]
            switch(r4) {
                case 1: goto L2f;
                case 2: goto L34;
                case 3: goto L41;
                case 4: goto L35;
                case 5: goto L3d;
                case 6: goto L45;
                case 7: goto L45;
                case 8: goto L45;
                default: goto L29;
            }
        L29:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L2f:
            if (r3 != 0) goto L3b
        L31:
            defpackage.lm.a(r0)
        L34:
            r0 = r1
        L35:
            if (r0 == 0) goto L6d
            int r0 = r2 + r5
        L39:
            r2 = r0
            goto L17
        L3b:
            r0 = r1
            goto L31
        L3d:
            if (r5 > 0) goto L35
            r0 = r1
            goto L35
        L41:
            if (r5 < 0) goto L35
            r0 = r1
            goto L35
        L45:
            int r3 = java.lang.Math.abs(r3)
            int r4 = java.lang.Math.abs(r8)
            int r4 = r4 - r3
            int r3 = r3 - r4
            if (r3 != 0) goto L69
            java.math.RoundingMode r3 = java.math.RoundingMode.HALF_UP
            if (r9 == r3) goto L62
            java.math.RoundingMode r3 = java.math.RoundingMode.HALF_EVEN
            if (r9 != r3) goto L65
            r4 = r0
        L5a:
            r3 = r2 & 1
            if (r3 == 0) goto L67
            r3 = r0
        L5f:
            r3 = r3 & r4
            if (r3 == 0) goto L63
        L62:
            r1 = r0
        L63:
            r0 = r1
            goto L35
        L65:
            r4 = r1
            goto L5a
        L67:
            r3 = r1
            goto L5f
        L69:
            if (r3 > 0) goto L35
            r0 = r1
            goto L35
        L6d:
            r0 = r2
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.IntMath.divide(int, int, java.math.RoundingMode):int");
    }

    public static int mod(int i, int i2) {
        if (i2 <= 0) {
            throw new ArithmeticException(new StringBuilder(31).append("Modulus ").append(i2).append(" must be > 0").toString());
        }
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static int gcd(int i, int i2) {
        lm.b("a", i);
        lm.b("b", i2);
        if (i != 0) {
            if (i2 == 0) {
                return i;
            }
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            int iNumberOfTrailingZeros2 = i >> iNumberOfTrailingZeros;
            int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i2);
            int i3 = i2 >> iNumberOfTrailingZeros3;
            while (iNumberOfTrailingZeros2 != i3) {
                int i4 = iNumberOfTrailingZeros2 - i3;
                int i5 = (i4 >> 31) & i4;
                int i6 = (i4 - i5) - i5;
                i3 += i5;
                iNumberOfTrailingZeros2 = i6 >> Integer.numberOfTrailingZeros(i6);
            }
            return iNumberOfTrailingZeros2 << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
        }
        return i2;
    }

    public static int checkedAdd(int i, int i2) {
        long j = ((long) i2) + ((long) i);
        lm.c(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedSubtract(int i, int i2) {
        long j = ((long) i) - ((long) i2);
        lm.c(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedMultiply(int i, int i2) {
        long j = ((long) i2) * ((long) i);
        lm.c(j == ((long) ((int) j)));
        return (int) j;
    }

    public static int checkedPow(int i, int i2) {
        lm.b("exponent", i2);
        switch (i) {
            case -2:
                lm.c(i2 < 32);
                if ((i2 & 1) != 0) {
                }
                break;
            case -1:
                if ((i2 & 1) != 0) {
                }
                break;
            case 0:
                if (i2 != 0) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                lm.c(i2 < 31);
                break;
            default:
                int i3 = 1;
                while (true) {
                    switch (i2) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            int iCheckedMultiply = (i2 & 1) != 0 ? checkedMultiply(i3, i) : i3;
                            i2 >>= 1;
                            if (i2 > 0) {
                                lm.c((i <= 46340) & (-46340 <= i));
                                i *= i;
                                i3 = iCheckedMultiply;
                            } else {
                                i3 = iCheckedMultiply;
                            }
                            break;
                    }
                }
                break;
        }
        return 1;
    }

    public static int factorial(int i) {
        lm.b("n", i);
        if (i < e.length) {
            return e[i];
        }
        return Integer.MAX_VALUE;
    }

    @GwtIncompatible("need BigIntegerMath to adequately test")
    public static int binomial(int i, int i2) {
        lm.b("n", i);
        lm.b("k", i2);
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", Integer.valueOf(i2), Integer.valueOf(i));
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 >= d.length || i > d[i2]) {
            return Integer.MAX_VALUE;
        }
        switch (i2) {
            case 0:
                return 1;
            case 1:
                return i;
            default:
                long j = 1;
                for (int i3 = 0; i3 < i2; i3++) {
                    j = (j * ((long) (i - i3))) / ((long) (i3 + 1));
                }
                return (int) j;
        }
    }

    public static int mean(int i, int i2) {
        return (i & i2) + ((i ^ i2) >> 1);
    }

    private IntMath() {
    }
}
