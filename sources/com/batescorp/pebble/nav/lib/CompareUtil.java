package com.batescorp.pebble.nav.lib;

/* JADX INFO: loaded from: classes.dex */
public class CompareUtil {
    public static boolean compare(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean compareIgnoreCase(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.trim().toLowerCase().equals(str2.trim().toLowerCase());
    }

    public static boolean compare(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean compare(Enum r4, Enum r5) {
        if (r4 == null && r5 == null) {
            return true;
        }
        return (r4 == null || r5 == null || r4.ordinal() != r5.ordinal()) ? false : true;
    }
}
