package defpackage;

import com.google.common.annotations.GwtCompatible;
import java.math.BigInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class lm {
    public static int a(@Nullable String str, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 26).append(str).append(" (").append(i).append(") must be > 0").toString());
        }
        return i;
    }

    public static long a(@Nullable String str, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 35).append(str).append(" (").append(j).append(") must be > 0").toString());
        }
        return j;
    }

    public static BigInteger a(@Nullable String str, BigInteger bigInteger) {
        if (bigInteger.signum() <= 0) {
            String strValueOf = String.valueOf(bigInteger);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 15 + String.valueOf(strValueOf).length()).append(str).append(" (").append(strValueOf).append(") must be > 0").toString());
        }
        return bigInteger;
    }

    public static int b(@Nullable String str, int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 27).append(str).append(" (").append(i).append(") must be >= 0").toString());
        }
        return i;
    }

    public static long b(@Nullable String str, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 36).append(str).append(" (").append(j).append(") must be >= 0").toString());
        }
        return j;
    }

    public static BigInteger b(@Nullable String str, BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            String strValueOf = String.valueOf(bigInteger);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(strValueOf).length()).append(str).append(" (").append(strValueOf).append(") must be >= 0").toString());
        }
        return bigInteger;
    }

    public static double a(@Nullable String str, double d) {
        if (d < 0.0d) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append(str).append(" (").append(d).append(") must be >= 0").toString());
        }
        return d;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new ArithmeticException("not in range");
        }
    }

    public static void c(boolean z) {
        if (!z) {
            throw new ArithmeticException("overflow");
        }
    }
}
