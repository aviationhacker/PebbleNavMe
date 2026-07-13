package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
public final class UnsignedBytes {
    public static final byte MAX_POWER_OF_TWO = -128;
    public static final byte MAX_VALUE = -1;

    private UnsignedBytes() {
    }

    @CheckReturnValue
    public static int toInt(byte b) {
        return b & MAX_VALUE;
    }

    public static byte checkedCast(long j) {
        if ((j >> 8) != 0) {
            throw new IllegalArgumentException(new StringBuilder(34).append("Out of range: ").append(j).toString());
        }
        return (byte) j;
    }

    public static byte saturatedCast(long j) {
        if (j > toInt((byte) -1)) {
            return (byte) -1;
        }
        if (j < 0) {
            return (byte) 0;
        }
        return (byte) j;
    }

    @CheckReturnValue
    public static int compare(byte b, byte b2) {
        return toInt(b) - toInt(b2);
    }

    @CheckReturnValue
    public static byte min(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 < i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    @CheckReturnValue
    public static byte max(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 > i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    @Beta
    @CheckReturnValue
    public static String toString(byte b) {
        return toString(b, 10);
    }

    @Beta
    @CheckReturnValue
    public static String toString(byte b, int i) {
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", Integer.valueOf(i));
        return Integer.toString(toInt(b), i);
    }

    @Beta
    public static byte parseUnsignedByte(String str) {
        return parseUnsignedByte(str, 10);
    }

    @Beta
    public static byte parseUnsignedByte(String str, int i) {
        int i2 = Integer.parseInt((String) Preconditions.checkNotNull(str), i);
        if ((i2 >> 8) == 0) {
            return (byte) i2;
        }
        throw new NumberFormatException(new StringBuilder(25).append("out of range: ").append(i2).toString());
    }

    @CheckReturnValue
    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * (str.length() + 3));
        sb.append(toInt(bArr[0]));
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str).append(toString(bArr[i]));
        }
        return sb.toString();
    }

    @CheckReturnValue
    public static Comparator<byte[]> lexicographicalComparator() {
        return a.b;
    }

    @VisibleForTesting
    static Comparator<byte[]> a() {
        return a.EnumC0029a.INSTANCE;
    }

    @VisibleForTesting
    static class a {
        static final String a = String.valueOf(a.class.getName()).concat("$UnsafeComparator");
        static final Comparator<byte[]> b = a();

        a() {
        }

        /* JADX INFO: renamed from: com.google.common.primitives.UnsignedBytes$a$a, reason: collision with other inner class name */
        enum EnumC0029a implements Comparator<byte[]> {
            INSTANCE;

            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(byte[] bArr, byte[] bArr2) {
                int iMin = Math.min(bArr.length, bArr2.length);
                for (int i = 0; i < iMin; i++) {
                    int iCompare = UnsignedBytes.compare(bArr[i], bArr2[i]);
                    if (iCompare != 0) {
                        return iCompare;
                    }
                }
                return bArr.length - bArr2.length;
            }
        }

        static Comparator<byte[]> a() {
            try {
                return (Comparator) Class.forName(a).getEnumConstants()[0];
            } catch (Throwable th) {
                return UnsignedBytes.a();
            }
        }
    }
}
