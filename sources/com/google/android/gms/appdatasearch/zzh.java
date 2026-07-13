package com.google.android.gms.appdatasearch;

import com.getpebble.android.kit.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzh {
    private static final String[] a = {"text1", "text2", Constants.CUST_ICON, "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity"};
    private static final Map<String, Integer> b = new HashMap(a.length);

    static {
        for (int i = 0; i < a.length; i++) {
            b.put(a[i], Integer.valueOf(i));
        }
    }

    public static String zzak(int i) {
        if (i < 0 || i >= a.length) {
            return null;
        }
        return a[i];
    }

    public static int zzbz(String str) {
        Integer num = b.get(str);
        if (num == null) {
            throw new IllegalArgumentException("[" + str + "] is not a valid global search section name");
        }
        return num.intValue();
    }

    public static int zzls() {
        return a.length;
    }
}
