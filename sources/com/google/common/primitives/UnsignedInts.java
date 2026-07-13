package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import defpackage.ln;
import java.util.Comparator;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class UnsignedInts {
    private UnsignedInts() {
    }

    static int a(int i) {
        return Integer.MIN_VALUE ^ i;
    }

    @CheckReturnValue
    public static int compare(int i, int i2) {
        return Ints.compare(a(i), a(i2));
    }

    @CheckReturnValue
    public static long toLong(int i) {
        return ((long) i) & 4294967295L;
    }

    @CheckReturnValue
    public static int min(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int iA = a(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int iA2 = a(iArr[i]);
            if (iA2 < iA) {
                iA = iA2;
            }
        }
        return a(iA);
    }

    @CheckReturnValue
    public static int max(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int iA = a(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int iA2 = a(iArr[i]);
            if (iA2 > iA) {
                iA = iA2;
            }
        }
        return a(iA);
    }

    @CheckReturnValue
    public static String join(String str, int... iArr) {
        Preconditions.checkNotNull(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(toString(iArr[0]));
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str).append(toString(iArr[i]));
        }
        return sb.toString();
    }

    @CheckReturnValue
    public static Comparator<int[]> lexicographicalComparator() {
        return a.INSTANCE;
    }

    enum a implements Comparator<int[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < iMin; i++) {
                if (iArr[i] != iArr2[i]) {
                    return UnsignedInts.compare(iArr[i], iArr2[i]);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    @CheckReturnValue
    public static int divide(int i, int i2) {
        return (int) (toLong(i) / toLong(i2));
    }

    @CheckReturnValue
    public static int remainder(int i, int i2) {
        return (int) (toLong(i) % toLong(i2));
    }

    public static int decode(String str) {
        ln lnVarA = ln.a(str);
        try {
            return parseUnsignedInt(lnVarA.a, lnVarA.b);
        } catch (NumberFormatException e) {
            String strValueOf = String.valueOf(str);
            NumberFormatException numberFormatException = new NumberFormatException(strValueOf.length() != 0 ? "Error parsing value: ".concat(strValueOf) : new String("Error parsing value: "));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    public static int parseUnsignedInt(String str) {
        return parseUnsignedInt(str, 10);
    }

    public static int parseUnsignedInt(String str, int i) {
        Preconditions.checkNotNull(str);
        long j = Long.parseLong(str, i);
        if ((4294967295L & j) != j) {
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69).append("Input ").append(str).append(" in base ").append(i).append(" is not in the range of an unsigned integer").toString());
        }
        return (int) j;
    }

    @CheckReturnValue
    public static String toString(int i) {
        return toString(i, 10);
    }

    @CheckReturnValue
    public static String toString(int i, int i2) {
        return Long.toString(((long) i) & 4294967295L, i2);
    }
}
