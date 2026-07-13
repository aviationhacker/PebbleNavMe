package org.apache.commons.lang3.text;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

/* JADX INFO: loaded from: classes.dex */
public class WordUtils {
    public static String wrap(String str, int i) {
        return wrap(str, i, null, false);
    }

    public static String wrap(String str, int i, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = SystemUtils.LINE_SEPARATOR;
        }
        if (i < 1) {
            i = 1;
        }
        int length = str.length();
        int i2 = 0;
        StringBuilder sb = new StringBuilder(length + 32);
        while (length - i2 > i) {
            if (str.charAt(i2) == ' ') {
                i2++;
            } else {
                int iLastIndexOf = str.lastIndexOf(32, i + i2);
                if (iLastIndexOf >= i2) {
                    sb.append(str.substring(i2, iLastIndexOf));
                    sb.append(str2);
                    i2 = iLastIndexOf + 1;
                } else if (z) {
                    sb.append(str.substring(i2, i + i2));
                    sb.append(str2);
                    i2 += i;
                } else {
                    int iIndexOf = str.indexOf(32, i + i2);
                    if (iIndexOf >= 0) {
                        sb.append(str.substring(i2, iIndexOf));
                        sb.append(str2);
                        i2 = iIndexOf + 1;
                    } else {
                        sb.append(str.substring(i2));
                        i2 = length;
                    }
                }
            }
        }
        sb.append(str.substring(i2));
        return sb.toString();
    }

    public static String capitalize(String str) {
        return capitalize(str, null);
    }

    public static String capitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (!StringUtils.isEmpty(str) && length != 0) {
            char[] charArray = str.toCharArray();
            boolean z = true;
            for (int i = 0; i < charArray.length; i++) {
                char c = charArray[i];
                if (a(c, cArr)) {
                    z = true;
                } else if (z) {
                    charArray[i] = Character.toTitleCase(c);
                    z = false;
                }
            }
            return new String(charArray);
        }
        return str;
    }

    public static String capitalizeFully(String str) {
        return capitalizeFully(str, null);
    }

    public static String capitalizeFully(String str, char... cArr) {
        return (StringUtils.isEmpty(str) || (cArr == null ? -1 : cArr.length) == 0) ? str : capitalize(str.toLowerCase(), cArr);
    }

    public static String uncapitalize(String str) {
        return uncapitalize(str, null);
    }

    public static String uncapitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (!StringUtils.isEmpty(str) && length != 0) {
            char[] charArray = str.toCharArray();
            boolean z = true;
            for (int i = 0; i < charArray.length; i++) {
                char c = charArray[i];
                if (a(c, cArr)) {
                    z = true;
                } else if (z) {
                    charArray[i] = Character.toLowerCase(c);
                    z = false;
                }
            }
            return new String(charArray);
        }
        return str;
    }

    public static String swapCase(String str) {
        if (!StringUtils.isEmpty(str)) {
            char[] charArray = str.toCharArray();
            boolean zIsWhitespace = true;
            for (int i = 0; i < charArray.length; i++) {
                char c = charArray[i];
                if (Character.isUpperCase(c)) {
                    charArray[i] = Character.toLowerCase(c);
                    zIsWhitespace = false;
                } else if (Character.isTitleCase(c)) {
                    charArray[i] = Character.toLowerCase(c);
                    zIsWhitespace = false;
                } else if (Character.isLowerCase(c)) {
                    if (zIsWhitespace) {
                        charArray[i] = Character.toTitleCase(c);
                        zIsWhitespace = false;
                    } else {
                        charArray[i] = Character.toUpperCase(c);
                    }
                } else {
                    zIsWhitespace = Character.isWhitespace(c);
                }
            }
            return new String(charArray);
        }
        return str;
    }

    public static String initials(String str) {
        return initials(str, null);
    }

    public static String initials(String str, char... cArr) {
        if (!StringUtils.isEmpty(str)) {
            if (cArr != null && cArr.length == 0) {
                return "";
            }
            int length = str.length();
            char[] cArr2 = new char[(length / 2) + 1];
            boolean z = true;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (a(cCharAt, cArr)) {
                    z = true;
                } else if (z) {
                    cArr2[i] = cCharAt;
                    i++;
                    z = false;
                }
            }
            return new String(cArr2, 0, i);
        }
        return str;
    }

    private static boolean a(char c, char[] cArr) {
        if (cArr == null) {
            return Character.isWhitespace(c);
        }
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }
}
