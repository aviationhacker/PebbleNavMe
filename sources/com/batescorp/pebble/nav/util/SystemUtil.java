package com.batescorp.pebble.nav.util;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class SystemUtil {
    public static final boolean notificationEnable(Context context) throws Exception {
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        if (string == null) {
            Log.e("SystemUtil", "Failed to get notifcation access");
            throw new Exception("Failed to get notifcation access");
        }
        String[] strArrSplit = string.split(":");
        for (String str : strArrSplit) {
            String strTrim = str.split(URIUtil.SLASH)[0].trim();
            Log.d("SystemUtil", "loadFromConfig (Process notification) : " + strTrim + " : " + context.getPackageName());
            if (context.getPackageName().equals(strTrim)) {
                return true;
            }
        }
        return false;
    }

    public static long maxInArray(long[] jArr) {
        long j = Long.MIN_VALUE;
        int length = jArr.length;
        int i = 0;
        while (i < length) {
            long j2 = jArr[i];
            if (j2 <= j) {
                j2 = j;
            }
            i++;
            j = j2;
        }
        return j;
    }

    public static long minInArray(long[] jArr) {
        long j = Long.MAX_VALUE;
        int length = jArr.length;
        int i = 0;
        while (i < length) {
            long j2 = jArr[i];
            if (j2 >= j) {
                j2 = j;
            }
            i++;
            j = j2;
        }
        return j;
    }
}
