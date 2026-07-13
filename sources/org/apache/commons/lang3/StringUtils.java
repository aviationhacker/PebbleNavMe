package org.apache.commons.lang3;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class StringUtils {
    public static final String EMPTY = "";
    public static final int INDEX_NOT_FOUND = -1;
    private static boolean b;
    private static Method c;
    private static boolean e;
    private static Method f;
    private static Object g;
    private static final Pattern a = Pattern.compile("\\s+");
    private static final Pattern d = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    private static final Pattern h = d;

    static {
        b = false;
        c = null;
        e = false;
        f = null;
        g = null;
        try {
            Class<?> clsLoadClass = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer$Form");
            g = clsLoadClass.getField("NFD").get(null);
            f = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer").getMethod("normalize", CharSequence.class, clsLoadClass);
            e = true;
        } catch (ClassNotFoundException e2) {
            e = false;
        } catch (IllegalAccessException e3) {
            e = false;
        } catch (NoSuchFieldException e4) {
            e = false;
        } catch (NoSuchMethodException e5) {
            e = false;
        }
        try {
            c = Thread.currentThread().getContextClassLoader().loadClass("sun.text.Normalizer").getMethod("decompose", String.class, Boolean.TYPE, Integer.TYPE);
            b = true;
        } catch (ClassNotFoundException e6) {
            b = false;
        } catch (NoSuchMethodException e7) {
            b = false;
        }
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isNotEmpty(CharSequence charSequence) {
        return !isEmpty(charSequence);
    }

    public static boolean isBlank(CharSequence charSequence) {
        int length;
        if (charSequence == null || (length = charSequence.length()) == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNotBlank(CharSequence charSequence) {
        return !isBlank(charSequence);
    }

    public static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String trimToNull(String str) {
        String strTrim = trim(str);
        if (isEmpty(strTrim)) {
            return null;
        }
        return strTrim;
    }

    public static String trimToEmpty(String str) {
        return str == null ? "" : str.trim();
    }

    public static String strip(String str) {
        return strip(str, null);
    }

    public static String stripToNull(String str) {
        if (str == null) {
            return null;
        }
        String strStrip = strip(str, null);
        if (strStrip.length() != 0) {
            return strStrip;
        }
        return null;
    }

    public static String stripToEmpty(String str) {
        return str == null ? "" : strip(str, null);
    }

    public static String strip(String str, String str2) {
        return isEmpty(str) ? str : stripEnd(stripStart(str, str2), str2);
    }

    public static String stripStart(String str, String str2) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            int i = 0;
            if (str2 == null) {
                while (i != length && Character.isWhitespace(str.charAt(i))) {
                    i++;
                }
            } else if (str2.length() != 0) {
                while (i != length && str2.indexOf(str.charAt(i)) != -1) {
                    i++;
                }
            } else {
                return str;
            }
            return str.substring(i);
        }
        return str;
    }

    public static String stripEnd(String str, String str2) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            if (str2 == null) {
                while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                    length--;
                }
            } else if (str2.length() != 0) {
                while (length != 0 && str2.indexOf(str.charAt(length - 1)) != -1) {
                    length--;
                }
            } else {
                return str;
            }
            return str.substring(0, length);
        }
        return str;
    }

    public static String[] stripAll(String... strArr) {
        return stripAll(strArr, null);
    }

    public static String[] stripAll(String[] strArr, String str) {
        int length;
        if (strArr != null && (length = strArr.length) != 0) {
            String[] strArr2 = new String[length];
            for (int i = 0; i < length; i++) {
                strArr2[i] = strip(strArr[i], str);
            }
            return strArr2;
        }
        return strArr;
    }

    public static String stripAccents(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (e) {
                return a(str);
            }
            if (b) {
                return b(str);
            }
            throw new UnsupportedOperationException("The stripAccents(CharSequence) method requires at least Java 1.6 or a Sun JVM");
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("IllegalAccessException occurred", e2);
        } catch (IllegalArgumentException e3) {
            throw new RuntimeException("IllegalArgumentException occurred", e3);
        } catch (SecurityException e4) {
            throw new RuntimeException("SecurityException occurred", e4);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException("InvocationTargetException occurred", e5);
        }
    }

    private static String a(CharSequence charSequence) {
        if (!e || g == null) {
            throw new IllegalStateException("java.text.Normalizer is not available");
        }
        return h.matcher((String) f.invoke(null, charSequence, g)).replaceAll("");
    }

    private static String b(CharSequence charSequence) {
        if (!b) {
            throw new IllegalStateException("sun.text.Normalizer is not available");
        }
        return d.matcher((String) c.invoke(null, charSequence, Boolean.FALSE, 0)).replaceAll("");
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == null ? charSequence2 == null : charSequence.equals(charSequence2);
    }

    public static boolean equalsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        return CharSequenceUtils.a(charSequence, true, 0, charSequence2, 0, Math.max(charSequence.length(), charSequence2.length()));
    }

    public static int indexOf(CharSequence charSequence, int i) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.a(charSequence, i, 0);
    }

    public static int indexOf(CharSequence charSequence, int i, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.a(charSequence, i, i2);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.a(charSequence, charSequence2, 0);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.a(charSequence, charSequence2, i);
    }

    public static int ordinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        return a(charSequence, charSequence2, i, false);
    }

    private static int a(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        int iA;
        int i2;
        if (charSequence == null || charSequence2 == null || i <= 0) {
            return -1;
        }
        if (charSequence2.length() == 0) {
            if (z) {
                return charSequence.length();
            }
            return 0;
        }
        int length = z ? charSequence.length() : -1;
        int i3 = 0;
        while (true) {
            if (z) {
                iA = CharSequenceUtils.b(charSequence, charSequence2, length - 1);
            } else {
                iA = CharSequenceUtils.a(charSequence, charSequence2, length + 1);
            }
            if (iA < 0 || (i2 = i3 + 1) >= i) {
                return iA;
            }
            i3 = i2;
            length = iA;
        }
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return indexOfIgnoreCase(charSequence, charSequence2, 0);
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        int length = (charSequence.length() - charSequence2.length()) + 1;
        if (i > length) {
            return -1;
        }
        if (charSequence2.length() != 0) {
            for (int i2 = i; i2 < length; i2++) {
                if (CharSequenceUtils.a(charSequence, true, i2, charSequence2, 0, charSequence2.length())) {
                    return i2;
                }
            }
            return -1;
        }
        return i;
    }

    public static int lastIndexOf(CharSequence charSequence, int i) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.b(charSequence, i, charSequence.length());
    }

    public static int lastIndexOf(CharSequence charSequence, int i, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.b(charSequence, i, i2);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.b(charSequence, charSequence2, charSequence.length());
    }

    public static int lastOrdinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        return a(charSequence, charSequence2, i, true);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.b(charSequence, charSequence2, i);
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return lastIndexOfIgnoreCase(charSequence, charSequence2, charSequence.length());
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        int length = i > charSequence.length() - charSequence2.length() ? charSequence.length() - charSequence2.length() : i;
        if (length < 0) {
            return -1;
        }
        if (charSequence2.length() != 0) {
            while (length >= 0) {
                if (!CharSequenceUtils.a(charSequence, true, length, charSequence2, 0, charSequence2.length())) {
                    length--;
                } else {
                    return length;
                }
            }
            return -1;
        }
        return length;
    }

    public static boolean contains(CharSequence charSequence, int i) {
        return !isEmpty(charSequence) && CharSequenceUtils.a(charSequence, i, 0) >= 0;
    }

    public static boolean contains(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 == null || CharSequenceUtils.a(charSequence, charSequence2, 0) < 0) ? false : true;
    }

    public static boolean containsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        int length = charSequence2.length();
        int length2 = charSequence.length() - length;
        for (int i = 0; i <= length2; i++) {
            if (CharSequenceUtils.a(charSequence, true, i, charSequence2, 0, length)) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsWhitespace(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (Character.isWhitespace(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static int indexOfAny(CharSequence charSequence, char... cArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(cArr)) {
            return -1;
        }
        int length = charSequence.length();
        int i = length - 1;
        int length2 = cArr.length;
        int i2 = length2 - 1;
        int i3 = 0;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            for (int i4 = 0; i4 < length2; i4++) {
                if (cArr[i4] == cCharAt && (i3 >= i || i4 >= i2 || !Character.isHighSurrogate(cCharAt) || cArr[i4 + 1] == charSequence.charAt(i3 + 1))) {
                    return i3;
                }
            }
            i3++;
        }
        return -1;
    }

    public static int indexOfAny(CharSequence charSequence, String str) {
        if (isEmpty(charSequence) || isEmpty(str)) {
            return -1;
        }
        return indexOfAny(charSequence, str.toCharArray());
    }

    public static boolean containsAny(CharSequence charSequence, char... cArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(cArr)) {
            return false;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        int i = length - 1;
        int i2 = length2 - 1;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = charSequence.charAt(i3);
            for (int i4 = 0; i4 < length2; i4++) {
                if (cArr[i4] == cCharAt) {
                    if (!Character.isHighSurrogate(cCharAt) || i4 == i2) {
                        return true;
                    }
                    if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2 == null) {
            return false;
        }
        return containsAny(charSequence, CharSequenceUtils.a(charSequence2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOfAnyBut(java.lang.CharSequence r11, char... r12) {
        /*
            r3 = 0
            r1 = -1
            boolean r0 = isEmpty(r11)
            if (r0 != 0) goto Le
            boolean r0 = org.apache.commons.lang3.ArrayUtils.isEmpty(r12)
            if (r0 == 0) goto L10
        Le:
            r0 = r1
        Lf:
            return r0
        L10:
            int r4 = r11.length()
            int r5 = r4 + (-1)
            int r6 = r12.length
            int r7 = r6 + (-1)
            r0 = r3
        L1a:
            if (r0 >= r4) goto L43
            char r8 = r11.charAt(r0)
            r2 = r3
        L21:
            if (r2 >= r6) goto Lf
            char r9 = r12[r2]
            if (r9 != r8) goto L40
            if (r0 >= r5) goto L3d
            if (r2 >= r7) goto L3d
            boolean r9 = java.lang.Character.isHighSurrogate(r8)
            if (r9 == 0) goto L3d
            int r9 = r2 + 1
            char r9 = r12[r9]
            int r10 = r0 + 1
            char r10 = r11.charAt(r10)
            if (r9 != r10) goto L40
        L3d:
            int r0 = r0 + 1
            goto L1a
        L40:
            int r2 = r2 + 1
            goto L21
        L43:
            r0 = r1
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.indexOfAnyBut(java.lang.CharSequence, char[]):int");
    }

    public static int indexOfAnyBut(CharSequence charSequence, CharSequence charSequence2) {
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return -1;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = charSequence.charAt(i);
            boolean z = CharSequenceUtils.a(charSequence2, cCharAt, 0) >= 0;
            if (i + 1 < length && Character.isHighSurrogate(cCharAt)) {
                char cCharAt2 = charSequence.charAt(i + 1);
                if (z && CharSequenceUtils.a(charSequence2, cCharAt2, 0) < 0) {
                    return i;
                }
            } else if (!z) {
                return i;
            }
        }
        return -1;
    }

    public static boolean containsOnly(CharSequence charSequence, char... cArr) {
        if (cArr == null || charSequence == null) {
            return false;
        }
        if (charSequence.length() != 0) {
            return cArr.length != 0 && indexOfAnyBut(charSequence, cArr) == -1;
        }
        return true;
    }

    public static boolean containsOnly(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return false;
        }
        return containsOnly(charSequence, str.toCharArray());
    }

    public static boolean containsNone(CharSequence charSequence, char... cArr) {
        if (charSequence == null || cArr == null) {
            return true;
        }
        int length = charSequence.length();
        int i = length - 1;
        int length2 = cArr.length;
        int i2 = length2 - 1;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = charSequence.charAt(i3);
            for (int i4 = 0; i4 < length2; i4++) {
                if (cArr[i4] == cCharAt) {
                    if (!Character.isHighSurrogate(cCharAt) || i4 == i2) {
                        return false;
                    }
                    if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsNone(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return true;
        }
        return containsNone(charSequence, str.toCharArray());
    }

    public static int indexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iA;
        if (charSequence == null || charSequenceArr == null) {
            return -1;
        }
        int i = Integer.MAX_VALUE;
        for (CharSequence charSequence2 : charSequenceArr) {
            if (charSequence2 != null && (iA = CharSequenceUtils.a(charSequence, charSequence2, 0)) != -1 && iA < i) {
                i = iA;
            }
        }
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i;
    }

    public static int lastIndexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iB;
        int i = -1;
        if (charSequence != null && charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (charSequence2 != null && (iB = CharSequenceUtils.b(charSequence, charSequence2, charSequence.length())) > i) {
                    i = iB;
                }
            }
        }
        return i;
    }

    public static String substring(String str, int i) {
        if (str == null) {
            return null;
        }
        int length = i < 0 ? str.length() + i : i;
        if (length < 0) {
            length = 0;
        }
        if (length > str.length()) {
            return "";
        }
        return str.substring(length);
    }

    public static String substring(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        int length = i2 < 0 ? str.length() + i2 : i2;
        if (i < 0) {
            i += str.length();
        }
        if (length > str.length()) {
            length = str.length();
        }
        if (i > length) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        return str.substring(i, length >= 0 ? length : 0);
    }

    public static String left(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            return "";
        }
        return str.length() > i ? str.substring(0, i) : str;
    }

    public static String right(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            return "";
        }
        return str.length() > i ? str.substring(str.length() - i) : str;
    }

    public static String mid(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0 || i > str.length()) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        if (str.length() <= i + i2) {
            return str.substring(i);
        }
        return str.substring(i, i + i2);
    }

    public static String substringBefore(String str, String str2) {
        if (!isEmpty(str) && str2 != null) {
            if (str2.length() == 0) {
                return "";
            }
            int iIndexOf = str.indexOf(str2);
            return iIndexOf != -1 ? str.substring(0, iIndexOf) : str;
        }
        return str;
    }

    public static String substringAfter(String str, String str2) {
        int iIndexOf;
        if (!isEmpty(str)) {
            if (str2 == null || (iIndexOf = str.indexOf(str2)) == -1) {
                return "";
            }
            return str.substring(iIndexOf + str2.length());
        }
        return str;
    }

    public static String substringBeforeLast(String str, String str2) {
        int iLastIndexOf;
        return (isEmpty(str) || isEmpty(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1) ? str : str.substring(0, iLastIndexOf);
    }

    public static String substringAfterLast(String str, String str2) {
        int iLastIndexOf;
        if (!isEmpty(str)) {
            if (isEmpty(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1 || iLastIndexOf == str.length() - str2.length()) {
                return "";
            }
            return str.substring(iLastIndexOf + str2.length());
        }
        return str;
    }

    public static String substringBetween(String str, String str2) {
        return substringBetween(str, str2, str2);
    }

    public static String substringBetween(String str, String str2, String str3) {
        int iIndexOf;
        int iIndexOf2;
        if (str == null || str2 == null || str3 == null || (iIndexOf = str.indexOf(str2)) == -1 || (iIndexOf2 = str.indexOf(str3, str2.length() + iIndexOf)) == -1) {
            return null;
        }
        return str.substring(str2.length() + iIndexOf, iIndexOf2);
    }

    public static String[] substringsBetween(String str, String str2, String str3) {
        int iIndexOf;
        int i;
        int iIndexOf2;
        if (str == null || isEmpty(str2) || isEmpty(str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        int length2 = str3.length();
        int length3 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < length - length2 && (iIndexOf = str.indexOf(str2, i2)) >= 0 && (iIndexOf2 = str.indexOf(str3, (i = iIndexOf + length3))) >= 0) {
            arrayList.add(str.substring(i, iIndexOf2));
            i2 = iIndexOf2 + length2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] split(String str) {
        return split(str, null, -1);
    }

    public static String[] split(String str, char c2) {
        return a(str, c2, false);
    }

    public static String[] split(String str, String str2) {
        return b(str, str2, -1, false);
    }

    public static String[] split(String str, String str2, int i) {
        return b(str, str2, i, false);
    }

    public static String[] splitByWholeSeparator(String str, String str2) {
        return a(str, str2, -1, false);
    }

    public static String[] splitByWholeSeparator(String str, String str2, int i) {
        return a(str, str2, i, false);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2) {
        return a(str, str2, -1, true);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2, int i) {
        return a(str, str2, i, true);
    }

    private static String[] a(String str, String str2, int i, boolean z) {
        int i2 = 0;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        if (str2 == null || "".equals(str2)) {
            return b(str, null, i, z);
        }
        int length2 = str2.length();
        ArrayList arrayList = new ArrayList();
        int iIndexOf = 0;
        int i3 = 0;
        while (iIndexOf < length) {
            iIndexOf = str.indexOf(str2, i3);
            if (iIndexOf > -1) {
                if (iIndexOf > i3) {
                    int i4 = i2 + 1;
                    if (i4 == i) {
                        arrayList.add(str.substring(i3));
                        iIndexOf = length;
                        i2 = i4;
                    } else {
                        arrayList.add(str.substring(i3, iIndexOf));
                        i3 = iIndexOf + length2;
                        i2 = i4;
                    }
                } else {
                    if (z) {
                        i2++;
                        if (i2 == i) {
                            arrayList.add(str.substring(i3));
                            iIndexOf = length;
                        } else {
                            arrayList.add("");
                        }
                    }
                    i3 = iIndexOf + length2;
                }
            } else {
                arrayList.add(str.substring(i3));
                iIndexOf = length;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] splitPreserveAllTokens(String str) {
        return b(str, null, -1, true);
    }

    public static String[] splitPreserveAllTokens(String str, char c2) {
        return a(str, c2, true);
    }

    private static String[] a(String str, char c2, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == c2) {
                if (z3 || z) {
                    arrayList.add(str.substring(i, i2));
                    z2 = true;
                    z3 = false;
                }
                i = i2 + 1;
                i2 = i;
            } else {
                z3 = true;
                i2++;
                z2 = false;
            }
        }
        if (z3 || (z && z2)) {
            arrayList.add(str.substring(i, i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] splitPreserveAllTokens(String str, String str2) {
        return b(str, str2, -1, true);
    }

    public static String[] splitPreserveAllTokens(String str, String str2, int i) {
        return b(str, str2, i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String[] b(java.lang.String r12, java.lang.String r13, int r14, boolean r15) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.b(java.lang.String, java.lang.String, int, boolean):java.lang.String[]");
    }

    public static String[] splitByCharacterType(String str) {
        return a(str, false);
    }

    public static String[] splitByCharacterTypeCamelCase(String str) {
        return a(str, true);
    }

    private static String[] a(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int type = Character.getType(charArray[0]);
        for (int i2 = 1; i2 < charArray.length; i2++) {
            int type2 = Character.getType(charArray[i2]);
            if (type2 != type) {
                if (z && type2 == 2 && type == 1) {
                    int i3 = i2 - 1;
                    if (i3 != i) {
                        arrayList.add(new String(charArray, i, i3 - i));
                        i = i3;
                    }
                } else {
                    arrayList.add(new String(charArray, i, i2 - i));
                    i = i2;
                }
                type = type2;
            }
        }
        arrayList.add(new String(charArray, i, charArray.length - i));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static <T> String join(T... tArr) {
        return join(tArr, (String) null);
    }

    public static String join(Object[] objArr, char c2) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, c2, 0, objArr.length);
    }

    public static String join(Object[] objArr, char c2, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c2);
            }
            if (objArr[i4] != null) {
                sb.append(objArr[i4]);
            }
        }
        return sb.toString();
    }

    public static String join(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, str, 0, objArr.length);
    }

    public static String join(Object[] objArr, String str, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(str);
            }
            if (objArr[i4] != null) {
                sb.append(objArr[i4]);
            }
        }
        return sb.toString();
    }

    public static String join(Iterator<?> it, char c2) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return ObjectUtils.toString(next);
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            sb.append(c2);
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return ObjectUtils.toString(next);
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            if (str != null) {
                sb.append(str);
            }
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(Iterable<?> iterable, char c2) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), c2);
    }

    public static String join(Iterable<?> iterable, String str) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), str);
    }

    public static String deleteWhitespace(String str) {
        int i;
        if (!isEmpty(str)) {
            int length = str.length();
            char[] cArr = new char[length];
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                if (Character.isWhitespace(str.charAt(i2))) {
                    i = i3;
                } else {
                    i = i3 + 1;
                    cArr[i3] = str.charAt(i2);
                }
                i2++;
                i3 = i;
            }
            return i3 != length ? new String(cArr, 0, i3) : str;
        }
        return str;
    }

    public static String removeStart(String str, String str2) {
        if (!isEmpty(str) && !isEmpty(str2) && str.startsWith(str2)) {
            return str.substring(str2.length());
        }
        return str;
    }

    public static String removeStartIgnoreCase(String str, String str2) {
        if (!isEmpty(str) && !isEmpty(str2) && startsWithIgnoreCase(str, str2)) {
            return str.substring(str2.length());
        }
        return str;
    }

    public static String removeEnd(String str, String str2) {
        if (!isEmpty(str) && !isEmpty(str2) && str.endsWith(str2)) {
            return str.substring(0, str.length() - str2.length());
        }
        return str;
    }

    public static String removeEndIgnoreCase(String str, String str2) {
        if (!isEmpty(str) && !isEmpty(str2) && endsWithIgnoreCase(str, str2)) {
            return str.substring(0, str.length() - str2.length());
        }
        return str;
    }

    public static String remove(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2)) ? str : replace(str, str2, "", -1);
    }

    public static String remove(String str, char c2) {
        if (!isEmpty(str) && str.indexOf(c2) != -1) {
            char[] charArray = str.toCharArray();
            int i = 0;
            for (int i2 = 0; i2 < charArray.length; i2++) {
                if (charArray[i2] != c2) {
                    charArray[i] = charArray[i2];
                    i++;
                }
            }
            return new String(charArray, 0, i);
        }
        return str;
    }

    public static String replaceOnce(String str, String str2, String str3) {
        return replace(str, str2, str3, 1);
    }

    public static String replace(String str, String str2, String str3) {
        return replace(str, str2, str3, -1);
    }

    public static String replace(String str, String str2, String str3, int i) {
        int iIndexOf;
        int i2 = 64;
        if (!isEmpty(str) && !isEmpty(str2) && str3 != null && i != 0 && (iIndexOf = str.indexOf(str2, 0)) != -1) {
            int length = str2.length();
            int length2 = str3.length() - length;
            if (length2 < 0) {
                length2 = 0;
            }
            if (i < 0) {
                i2 = 16;
            } else if (i <= 64) {
                i2 = i;
            }
            StringBuilder sb = new StringBuilder((i2 * length2) + str.length());
            int i3 = 0;
            while (iIndexOf != -1) {
                sb.append(str.substring(i3, iIndexOf)).append(str3);
                i3 = iIndexOf + length;
                i--;
                if (i == 0) {
                    break;
                }
                iIndexOf = str.indexOf(str2, i3);
            }
            sb.append(str.substring(i3));
            return sb.toString();
        }
        return str;
    }

    public static String replaceEach(String str, String[] strArr, String[] strArr2) {
        return a(str, strArr, strArr2, false, 0);
    }

    public static String replaceEachRepeatedly(String str, String[] strArr, String[] strArr2) {
        return a(str, strArr, strArr2, true, strArr == null ? 0 : strArr.length);
    }

    private static String a(String str, String[] strArr, String[] strArr2, boolean z, int i) {
        int length;
        if (str != null && str.length() != 0 && strArr != null && strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            if (i < 0) {
                throw new IllegalStateException("TimeToLive of " + i + " is less than 0: " + str);
            }
            int length2 = strArr.length;
            int length3 = strArr2.length;
            if (length2 != length3) {
                throw new IllegalArgumentException("Search and Replace array lengths don't match: " + length2 + " vs " + length3);
            }
            boolean[] zArr = new boolean[length2];
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < length2; i4++) {
                if (!zArr[i4] && strArr[i4] != null && strArr[i4].length() != 0 && strArr2[i4] != null) {
                    int iIndexOf = str.indexOf(strArr[i4]);
                    if (iIndexOf == -1) {
                        zArr[i4] = true;
                    } else if (i3 == -1 || iIndexOf < i3) {
                        i2 = i4;
                        i3 = iIndexOf;
                    }
                }
            }
            if (i3 != -1) {
                int i5 = 0;
                for (int i6 = 0; i6 < strArr.length; i6++) {
                    if (strArr[i6] != null && strArr2[i6] != null && (length = strArr2[i6].length() - strArr[i6].length()) > 0) {
                        i5 += length * 3;
                    }
                }
                StringBuilder sb = new StringBuilder(Math.min(i5, str.length() / 5) + str.length());
                int i7 = i2;
                int i8 = 0;
                while (i3 != -1) {
                    while (i8 < i3) {
                        sb.append(str.charAt(i8));
                        i8++;
                    }
                    sb.append(strArr2[i7]);
                    int length4 = i3 + strArr[i7].length();
                    int i9 = -1;
                    i3 = -1;
                    for (int i10 = 0; i10 < length2; i10++) {
                        if (!zArr[i10] && strArr[i10] != null && strArr[i10].length() != 0 && strArr2[i10] != null) {
                            int iIndexOf2 = str.indexOf(strArr[i10], length4);
                            if (iIndexOf2 == -1) {
                                zArr[i10] = true;
                            } else if (i3 == -1 || iIndexOf2 < i3) {
                                i9 = i10;
                                i3 = iIndexOf2;
                            }
                        }
                    }
                    i7 = i9;
                    i8 = length4;
                }
                int length5 = str.length();
                while (i8 < length5) {
                    sb.append(str.charAt(i8));
                    i8++;
                }
                String string = sb.toString();
                return z ? a(string, strArr, strArr2, z, i - 1) : string;
            }
            return str;
        }
        return str;
    }

    public static String replaceChars(String str, char c2, char c3) {
        if (str == null) {
            return null;
        }
        return str.replace(c2, c3);
    }

    public static String replaceChars(String str, String str2, String str3) {
        boolean z = false;
        if (!isEmpty(str) && !isEmpty(str2)) {
            if (str3 == null) {
                str3 = "";
            }
            int length = str3.length();
            int length2 = str.length();
            StringBuilder sb = new StringBuilder(length2);
            for (int i = 0; i < length2; i++) {
                char cCharAt = str.charAt(i);
                int iIndexOf = str2.indexOf(cCharAt);
                if (iIndexOf >= 0) {
                    z = true;
                    if (iIndexOf < length) {
                        sb.append(str3.charAt(iIndexOf));
                    }
                } else {
                    sb.append(cCharAt);
                }
            }
            if (z) {
                return sb.toString();
            }
            return str;
        }
        return str;
    }

    public static String overlay(String str, String str2, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        int length = str.length();
        int i3 = i < 0 ? 0 : i;
        if (i3 > length) {
            i3 = length;
        }
        int i4 = i2 < 0 ? 0 : i2;
        if (i4 > length) {
            i4 = length;
        }
        if (i3 <= i4) {
            int i5 = i4;
            i4 = i3;
            i3 = i5;
        }
        return new StringBuilder(((length + i4) - i3) + str2.length() + 1).append(str.substring(0, i4)).append(str2).append(str.substring(i3)).toString();
    }

    public static String chomp(String str) {
        if (!isEmpty(str)) {
            if (str.length() == 1) {
                char cCharAt = str.charAt(0);
                if (cCharAt == '\r' || cCharAt == '\n') {
                    return "";
                }
                return str;
            }
            int length = str.length() - 1;
            char cCharAt2 = str.charAt(length);
            if (cCharAt2 == '\n') {
                if (str.charAt(length - 1) == '\r') {
                    length--;
                }
            } else if (cCharAt2 != '\r') {
                length++;
            }
            return str.substring(0, length);
        }
        return str;
    }

    public static String chomp(String str, String str2) {
        if (!isEmpty(str) && str2 != null && str.endsWith(str2)) {
            return str.substring(0, str.length() - str2.length());
        }
        return str;
    }

    public static String chop(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i = length - 1;
        String strSubstring = str.substring(0, i);
        if (str.charAt(i) == '\n' && strSubstring.charAt(i - 1) == '\r') {
            return strSubstring.substring(0, i - 1);
        }
        return strSubstring;
    }

    public static String repeat(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i <= 0) {
            return "";
        }
        int length = str.length();
        if (i != 1 && length != 0) {
            if (length == 1 && i <= 8192) {
                return repeat(str.charAt(0), i);
            }
            int i2 = length * i;
            switch (length) {
                case 1:
                    break;
                case 2:
                    char cCharAt = str.charAt(0);
                    char cCharAt2 = str.charAt(1);
                    char[] cArr = new char[i2];
                    for (int i3 = (i * 2) - 2; i3 >= 0; i3 = (i3 - 1) - 1) {
                        cArr[i3] = cCharAt;
                        cArr[i3 + 1] = cCharAt2;
                    }
                    break;
                default:
                    StringBuilder sb = new StringBuilder(i2);
                    for (int i4 = 0; i4 < i; i4++) {
                        sb.append(str);
                    }
                    break;
            }
            return str;
        }
        return str;
    }

    public static String repeat(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return repeat(str, i);
        }
        return removeEnd(repeat(str + str2, i), str2);
    }

    public static String repeat(char c2, int i) {
        char[] cArr = new char[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            cArr[i2] = c2;
        }
        return new String(cArr);
    }

    public static String rightPad(String str, int i) {
        return rightPad(str, i, ' ');
    }

    public static String rightPad(String str, int i, char c2) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        if (length > 0) {
            if (length > 8192) {
                return rightPad(str, i, String.valueOf(c2));
            }
            return str.concat(repeat(c2, length));
        }
        return str;
    }

    public static String rightPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        if (isEmpty(str2)) {
            str2 = " ";
        }
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 > 0) {
            if (length == 1 && length2 <= 8192) {
                return rightPad(str, i, str2.charAt(0));
            }
            if (length2 == length) {
                return str.concat(str2);
            }
            if (length2 < length) {
                return str.concat(str2.substring(0, length2));
            }
            char[] cArr = new char[length2];
            char[] charArray = str2.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return str.concat(new String(cArr));
        }
        return str;
    }

    public static String leftPad(String str, int i) {
        return leftPad(str, i, ' ');
    }

    public static String leftPad(String str, int i, char c2) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        if (length > 0) {
            if (length > 8192) {
                return leftPad(str, i, String.valueOf(c2));
            }
            return repeat(c2, length).concat(str);
        }
        return str;
    }

    public static String leftPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        if (isEmpty(str2)) {
            str2 = " ";
        }
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 > 0) {
            if (length == 1 && length2 <= 8192) {
                return leftPad(str, i, str2.charAt(0));
            }
            if (length2 == length) {
                return str2.concat(str);
            }
            if (length2 < length) {
                return str2.substring(0, length2).concat(str);
            }
            char[] cArr = new char[length2];
            char[] charArray = str2.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return new String(cArr).concat(str);
        }
        return str;
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String center(String str, int i) {
        return center(str, i, ' ');
    }

    public static String center(String str, int i, char c2) {
        int length;
        int length2;
        if (str != null && i > 0 && (length2 = i - (length = str.length())) > 0) {
            return rightPad(leftPad(str, length + (length2 / 2), c2), i, c2);
        }
        return str;
    }

    public static String center(String str, int i, String str2) {
        if (str != null && i > 0) {
            if (isEmpty(str2)) {
                str2 = " ";
            }
            int length = str.length();
            int i2 = i - length;
            if (i2 > 0) {
                return rightPad(leftPad(str, length + (i2 / 2), str2), i, str2);
            }
            return str;
        }
        return str;
    }

    public static String upperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String upperCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static String lowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    public static String lowerCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    public static String capitalize(String str) {
        int length;
        return (str == null || (length = str.length()) == 0) ? str : new StringBuilder(length).append(Character.toTitleCase(str.charAt(0))).append(str.substring(1)).toString();
    }

    public static String uncapitalize(String str) {
        int length;
        return (str == null || (length = str.length()) == 0) ? str : new StringBuilder(length).append(Character.toLowerCase(str.charAt(0))).append(str.substring(1)).toString();
    }

    public static String swapCase(String str) {
        if (!isEmpty(str)) {
            char[] charArray = str.toCharArray();
            for (int i = 0; i < charArray.length; i++) {
                char c2 = charArray[i];
                if (Character.isUpperCase(c2)) {
                    charArray[i] = Character.toLowerCase(c2);
                } else if (Character.isTitleCase(c2)) {
                    charArray[i] = Character.toLowerCase(c2);
                } else if (Character.isLowerCase(c2)) {
                    charArray[i] = Character.toUpperCase(c2);
                }
            }
            return new String(charArray);
        }
        return str;
    }

    public static int countMatches(CharSequence charSequence, CharSequence charSequence2) {
        int length = 0;
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return 0;
        }
        int i = 0;
        while (true) {
            int iA = CharSequenceUtils.a(charSequence, charSequence2, length);
            if (iA != -1) {
                i++;
                length = iA + charSequence2.length();
            } else {
                return i;
            }
        }
    }

    public static boolean isAlpha(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphaSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumeric(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAsciiPrintable(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!CharUtils.isAsciiPrintable(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumeric(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllLowerCase(CharSequence charSequence) {
        if (charSequence == null || isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLowerCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllUpperCase(CharSequence charSequence) {
        if (charSequence == null || isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isUpperCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String defaultString(String str) {
        return str == null ? "" : str;
    }

    public static String defaultString(String str, String str2) {
        return str == null ? str2 : str;
    }

    public static <T extends CharSequence> T defaultIfBlank(T t, T t2) {
        return isBlank(t) ? t2 : t;
    }

    public static <T extends CharSequence> T defaultIfEmpty(T t, T t2) {
        return isEmpty(t) ? t2 : t;
    }

    public static String reverse(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String reverseDelimited(String str, char c2) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = split(str, c2);
        ArrayUtils.reverse(strArrSplit);
        return join(strArrSplit, c2);
    }

    public static String abbreviate(String str, int i) {
        return abbreviate(str, 0, i);
    }

    public static String abbreviate(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 4) {
            throw new IllegalArgumentException("Minimum abbreviation width is 4");
        }
        if (str.length() > i2) {
            if (i > str.length()) {
                i = str.length();
            }
            if (str.length() - i < i2 - 3) {
                i = str.length() - (i2 - 3);
            }
            if (i <= 4) {
                return str.substring(0, i2 - 3) + "...";
            }
            if (i2 < 7) {
                throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
            }
            if ((i2 - 3) + i < str.length()) {
                return "..." + abbreviate(str.substring(i), i2 - 3);
            }
            return "..." + str.substring(str.length() - (i2 - 3));
        }
        return str;
    }

    public static String abbreviateMiddle(String str, String str2, int i) {
        if (!isEmpty(str) && !isEmpty(str2) && i < str.length() && i >= str2.length() + 2) {
            int length = i - str2.length();
            int i2 = (length / 2) + (length % 2);
            int length2 = str.length() - (length / 2);
            StringBuilder sb = new StringBuilder(i);
            sb.append(str.substring(0, i2));
            sb.append(str2);
            sb.append(str.substring(length2));
            return sb.toString();
        }
        return str;
    }

    public static String difference(String str, String str2) {
        if (str != null) {
            if (str2 == null) {
                return str;
            }
            int iIndexOfDifference = indexOfDifference(str, str2);
            if (iIndexOfDifference == -1) {
                return "";
            }
            return str2.substring(iIndexOfDifference);
        }
        return str2;
    }

    public static int indexOfDifference(CharSequence charSequence, CharSequence charSequence2) {
        int i = 0;
        if (charSequence == charSequence2) {
            return -1;
        }
        if (charSequence == null || charSequence2 == null) {
            return 0;
        }
        while (i < charSequence.length() && i < charSequence2.length() && charSequence.charAt(i) == charSequence2.charAt(i)) {
            i++;
        }
        if (i < charSequence2.length() || i < charSequence.length()) {
            return i;
        }
        return -1;
    }

    public static int indexOfDifference(CharSequence... charSequenceArr) {
        int i;
        int iMin;
        boolean z;
        boolean z2;
        if (charSequenceArr == null || charSequenceArr.length <= 1) {
            return -1;
        }
        int length = charSequenceArr.length;
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        int iMax = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (i3 < length) {
            if (charSequenceArr[i3] == null) {
                z2 = z3;
                z = true;
                iMin = 0;
            } else {
                iMin = Math.min(charSequenceArr[i3].length(), i2);
                iMax = Math.max(charSequenceArr[i3].length(), iMax);
                z = z4;
                z2 = false;
            }
            i3++;
            int i4 = iMin;
            z3 = z2;
            z4 = z;
            i2 = i4;
        }
        if (z3 || (iMax == 0 && !z4)) {
            return -1;
        }
        if (i2 == 0) {
            return 0;
        }
        int i5 = 0;
        int i6 = -1;
        while (true) {
            if (i5 >= i2) {
                i = i6;
                break;
            }
            char cCharAt = charSequenceArr[0].charAt(i5);
            int i7 = 1;
            while (true) {
                if (i7 >= length) {
                    break;
                }
                if (charSequenceArr[i7].charAt(i5) != cCharAt) {
                    i6 = i5;
                    break;
                }
                i7++;
            }
            if (i6 != -1) {
                i = i6;
                break;
            }
            i5++;
        }
        return (i != -1 || i2 == iMax) ? i : i2;
    }

    public static String getCommonPrefix(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        int iIndexOfDifference = indexOfDifference(strArr);
        if (iIndexOfDifference == -1) {
            if (strArr[0] == null) {
                return "";
            }
            return strArr[0];
        }
        if (iIndexOfDifference == 0) {
            return "";
        }
        return strArr[0].substring(0, iIndexOfDifference);
    }

    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        if (length2 != 0) {
            if (length3 == 0) {
                return length2;
            }
            if (length2 > length3) {
                length = charSequence.length();
            } else {
                length3 = length2;
                length = length3;
                charSequence2 = charSequence;
                charSequence = charSequence2;
            }
            int[] iArr = new int[length3 + 1];
            int[] iArr2 = new int[length3 + 1];
            for (int i = 0; i <= length3; i++) {
                iArr[i] = i;
            }
            int i2 = 1;
            int[] iArr3 = iArr2;
            while (i2 <= length) {
                char cCharAt = charSequence.charAt(i2 - 1);
                iArr3[0] = i2;
                for (int i3 = 1; i3 <= length3; i3++) {
                    iArr3[i3] = Math.min(Math.min(iArr3[i3 - 1] + 1, iArr[i3] + 1), (charSequence2.charAt(i3 + (-1)) == cCharAt ? 0 : 1) + iArr[i3 - 1]);
                }
                i2++;
                int[] iArr4 = iArr;
                iArr = iArr3;
                iArr3 = iArr4;
            }
            return iArr[length3];
        }
        return length3;
    }

    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            if (length2 > i) {
                return -1;
            }
            return length2;
        }
        if (length2 == 0) {
            if (length <= i) {
                return length;
            }
            return -1;
        }
        if (length > length2) {
            length = length2;
            length2 = charSequence.length();
        } else {
            charSequence2 = charSequence;
            charSequence = charSequence2;
        }
        int[] iArr = new int[length + 1];
        int[] iArr2 = new int[length + 1];
        int iMin = Math.min(length, i) + 1;
        for (int i2 = 0; i2 < iMin; i2++) {
            iArr[i2] = i2;
        }
        Arrays.fill(iArr, iMin, iArr.length, Integer.MAX_VALUE);
        Arrays.fill(iArr2, Integer.MAX_VALUE);
        int[] iArr3 = iArr2;
        int i3 = 1;
        while (i3 <= length2) {
            char cCharAt = charSequence.charAt(i3 - 1);
            iArr3[0] = i3;
            int iMax = Math.max(1, i3 - i);
            int iMin2 = Math.min(length, i3 + i);
            if (iMax > iMin2) {
                return -1;
            }
            if (iMax > 1) {
                iArr3[iMax - 1] = Integer.MAX_VALUE;
            }
            while (iMax <= iMin2) {
                if (charSequence2.charAt(iMax - 1) == cCharAt) {
                    iArr3[iMax] = iArr[iMax - 1];
                } else {
                    iArr3[iMax] = Math.min(Math.min(iArr3[iMax - 1], iArr[iMax]), iArr[iMax - 1]) + 1;
                }
                iMax++;
            }
            i3++;
            int[] iArr4 = iArr;
            iArr = iArr3;
            iArr3 = iArr4;
        }
        if (iArr[length] <= i) {
            return iArr[length];
        }
        return -1;
    }

    public static boolean startsWith(CharSequence charSequence, CharSequence charSequence2) {
        return a(charSequence, charSequence2, false);
    }

    public static boolean startsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return a(charSequence, charSequence2, true);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() <= charSequence.length()) {
            return CharSequenceUtils.a(charSequence, z, 0, charSequence2, 0, charSequence2.length());
        }
        return false;
    }

    public static boolean startsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (startsWith(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean endsWith(CharSequence charSequence, CharSequence charSequence2) {
        return b(charSequence, charSequence2, false);
    }

    public static boolean endsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return b(charSequence, charSequence2, true);
    }

    private static boolean b(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() <= charSequence.length()) {
            return CharSequenceUtils.a(charSequence, z, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length());
        }
        return false;
    }

    public static String normalizeSpace(String str) {
        if (str == null) {
            return null;
        }
        return a.matcher(trim(str)).replaceAll(" ");
    }

    public static boolean endsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (endsWith(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }
}
