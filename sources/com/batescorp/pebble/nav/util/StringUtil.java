package com.batescorp.pebble.nav.util;

import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class StringUtil {
    private static final Pattern a = Pattern.compile("^([^!-~]*)(.*?)([^!-~]*)$");

    public static boolean isEmpty(String str) {
        return str == null || str.length() <= 0;
    }

    public static String trim(String str) {
        if (str == null) {
            return "";
        }
        Matcher matcher = a.matcher(str);
        if (!matcher.find()) {
            Log.e("StringUtil", "Matcher Failed !!!! [" + str + "]");
            return str.replaceAll(" ", " ").trim();
        }
        return matcher.group(2);
    }

    public static int compareVersions(String str, String str2) {
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = Integer.valueOf(strArrSplit[i]).compareTo(Integer.valueOf(Integer.parseInt(strArrSplit2[i])));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.compare(strArrSplit.length, strArrSplit2.length);
    }
}
