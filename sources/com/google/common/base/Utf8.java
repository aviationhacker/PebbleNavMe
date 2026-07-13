package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class Utf8 {
    @CheckReturnValue
    public static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int iA = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt < 2048) {
                    i2++;
                    iA = ((127 - cCharAt) >>> 31) + iA;
                } else {
                    iA += a(charSequence, i2);
                    break;
                }
            } else {
                break;
            }
        }
        if (iA < length) {
            throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(((long) iA) + 4294967296L).toString());
        }
        return iA;
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) == cCharAt) {
                        throw new IllegalArgumentException(a(i3));
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    @CheckReturnValue
    public static boolean isWellFormed(byte[] bArr) {
        return isWellFormed(bArr, 0, bArr.length);
    }

    @CheckReturnValue
    public static boolean isWellFormed(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        Preconditions.checkPositionIndexes(i, i3, bArr.length);
        while (i < i3) {
            if (bArr[i] >= 0) {
                i++;
            } else {
                return a(bArr, i, i3);
            }
        }
        return true;
    }

    private static boolean a(byte[] bArr, int i, int i2) {
        int i3;
        while (i < i2) {
            int i4 = i + 1;
            byte b = bArr[i];
            if (b < 0) {
                if (b < -32) {
                    if (i4 == i2) {
                        return false;
                    }
                    if (b >= -62) {
                        i3 = i4 + 1;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return false;
                }
                if (b < -16) {
                    if (i4 + 1 >= i2) {
                        return false;
                    }
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || -96 > b2))) {
                        i3 = i5 + 1;
                        if (bArr[i5] > -65) {
                        }
                    }
                    return false;
                }
                if (i4 + 2 >= i2) {
                    return false;
                }
                int i6 = i4 + 1;
                byte b3 = bArr[i4];
                if (b3 <= -65 && (((b << Ascii.FS) + (b3 + 112)) >> 30) == 0) {
                    int i7 = i6 + 1;
                    if (bArr[i6] <= -65) {
                        i3 = i7 + 1;
                        if (bArr[i7] > -65) {
                        }
                    }
                }
                return false;
                i = i3;
            } else {
                i = i4;
            }
        }
        return true;
    }

    private static String a(int i) {
        return new StringBuilder(39).append("Unpaired surrogate at index ").append(i).toString();
    }

    private Utf8() {
    }
}
