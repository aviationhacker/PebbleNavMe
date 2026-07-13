package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import defpackage.ks;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public abstract class UnicodeEscaper extends Escaper {
    public abstract char[] escape(int i);

    protected UnicodeEscaper() {
    }

    public int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            int iCodePointAt = codePointAt(charSequence, i, i2);
            if (iCodePointAt < 0 || escape(iCodePointAt) != null) {
                break;
            }
            i += Character.isSupplementaryCodePoint(iCodePointAt) ? 2 : 1;
        }
        return i;
    }

    @Override // com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        int iNextEscapeIndex = nextEscapeIndex(str, 0, length);
        return iNextEscapeIndex == length ? str : escapeSlow(str, iNextEscapeIndex);
    }

    protected final String escapeSlow(String str, int i) {
        int i2;
        int i3;
        int length = str.length();
        char[] cArrA = ks.a();
        int i4 = 0;
        int length2 = 0;
        while (i < length) {
            int iCodePointAt = codePointAt(str, i, length);
            if (iCodePointAt < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] cArrEscape = escape(iCodePointAt);
            int i5 = (Character.isSupplementaryCodePoint(iCodePointAt) ? 2 : 1) + i;
            if (cArrEscape != null) {
                int i6 = i - i4;
                int length3 = length2 + i6 + cArrEscape.length;
                if (cArrA.length < length3) {
                    cArrA = a(cArrA, length2, length3 + (length - i) + 32);
                }
                if (i6 > 0) {
                    str.getChars(i4, i, cArrA, length2);
                    length2 += i6;
                }
                if (cArrEscape.length > 0) {
                    System.arraycopy(cArrEscape, 0, cArrA, length2, cArrEscape.length);
                    length2 += cArrEscape.length;
                }
                i2 = length2;
                i3 = i5;
            } else {
                int i7 = i4;
                i2 = length2;
                i3 = i7;
            }
            i = nextEscapeIndex(str, i5, length);
            int i8 = i3;
            length2 = i2;
            i4 = i8;
        }
        int i9 = length - i4;
        if (i9 > 0) {
            int i10 = i9 + length2;
            if (cArrA.length < i10) {
                cArrA = a(cArrA, length2, i10);
            }
            str.getChars(i4, length, cArrA, length2);
            length2 = i10;
        }
        return new String(cArrA, 0, length2);
    }

    protected static int codePointAt(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        if (i < i2) {
            int i3 = i + 1;
            char cCharAt = charSequence.charAt(i);
            if (cCharAt >= 55296 && cCharAt <= 57343) {
                if (cCharAt <= 56319) {
                    if (i3 == i2) {
                        return -cCharAt;
                    }
                    char cCharAt2 = charSequence.charAt(i3);
                    if (Character.isLowSurrogate(cCharAt2)) {
                        return Character.toCodePoint(cCharAt, cCharAt2);
                    }
                    String strValueOf = String.valueOf(charSequence);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 89).append("Expected low surrogate but got char '").append(cCharAt2).append("' with value ").append((int) cCharAt2).append(" at index ").append(i3).append(" in '").append(strValueOf).append("'").toString());
                }
                String strValueOf2 = String.valueOf(charSequence);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf2).length() + 88).append("Unexpected low surrogate character '").append(cCharAt).append("' with value ").append((int) cCharAt).append(" at index ").append(i3 - 1).append(" in '").append(strValueOf2).append("'").toString());
            }
            return cCharAt;
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
