package org.apache.commons.lang3;

/* JADX INFO: loaded from: classes.dex */
public class CharSequenceUtils {
    public static CharSequence subSequence(CharSequence charSequence, int i) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.subSequence(i, charSequence.length());
    }

    static int a(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(i, i2);
        }
        int length = charSequence.length();
        if (i2 < 0) {
            i2 = 0;
        }
        for (int i3 = i2; i3 < length; i3++) {
            if (charSequence.charAt(i3) == i) {
                return i3;
            }
        }
        return -1;
    }

    static int a(CharSequence charSequence, CharSequence charSequence2, int i) {
        return charSequence.toString().indexOf(charSequence2.toString(), i);
    }

    static int b(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(i, i2);
        }
        int length = charSequence.length();
        if (i2 < 0) {
            return -1;
        }
        if (i2 >= length) {
            i2 = length - 1;
        }
        for (int i3 = i2; i3 >= 0; i3--) {
            if (charSequence.charAt(i3) == i) {
                return i3;
            }
        }
        return -1;
    }

    static int b(CharSequence charSequence, CharSequence charSequence2, int i) {
        return charSequence.toString().lastIndexOf(charSequence2.toString(), i);
    }

    static char[] a(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).toCharArray();
        }
        int length = charSequence.length();
        char[] cArr = new char[charSequence.length()];
        for (int i = 0; i < length; i++) {
            cArr[i] = charSequence.charAt(i);
        }
        return cArr;
    }

    static boolean a(CharSequence charSequence, boolean z, int i, CharSequence charSequence2, int i2, int i3) {
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? ((String) charSequence).regionMatches(z, i, (String) charSequence2, i2, i3) : charSequence.toString().regionMatches(z, i, charSequence2.toString(), i2, i3);
    }
}
