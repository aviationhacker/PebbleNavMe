package org.apache.commons.lang3;

/* JADX INFO: loaded from: classes.dex */
public class CharSetUtils {
    public static String squeeze(String str, String... strArr) {
        if (!StringUtils.isEmpty(str) && !a(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            StringBuilder sb = new StringBuilder(str.length());
            char[] charArray = str.toCharArray();
            int length = charArray.length;
            char c = ' ';
            for (int i = 0; i < length; i++) {
                char c2 = charArray[i];
                if (c2 != c || i == 0 || !charSet.contains(c2)) {
                    sb.append(c2);
                    c = c2;
                }
            }
            return sb.toString();
        }
        return str;
    }

    public static int count(String str, String... strArr) {
        int i = 0;
        if (!StringUtils.isEmpty(str) && !a(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            for (char c : str.toCharArray()) {
                if (charSet.contains(c)) {
                    i++;
                }
            }
        }
        return i;
    }

    public static String keep(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0 || a(strArr)) {
            return "";
        }
        return a(str, strArr, true);
    }

    public static String delete(String str, String... strArr) {
        return (StringUtils.isEmpty(str) || a(strArr)) ? str : a(str, strArr, false);
    }

    private static String a(String str, String[] strArr, boolean z) {
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charSet.contains(charArray[i]) == z) {
                sb.append(charArray[i]);
            }
        }
        return sb.toString();
    }

    private static boolean a(String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                if (StringUtils.isNotEmpty(str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
