package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.stats.zzc;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzmr;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zzi {
    private static String a = "WakeLockTracker";
    private static zzi b = new zzi();
    private static Integer c;

    private static int a() {
        try {
            return zzmm.zzjA() ? zzc.zzb.zzahH.get().intValue() : zzd.LOG_LEVEL_OFF;
        } catch (SecurityException e) {
            return zzd.LOG_LEVEL_OFF;
        }
    }

    private static boolean a(Context context) {
        if (c == null) {
            c = Integer.valueOf(a());
        }
        return c.intValue() != zzd.LOG_LEVEL_OFF;
    }

    public static zzi zzqr() {
        return b;
    }

    public void zza(Context context, String str, int i, String str2, String str3, int i2, List<String> list) {
        zza(context, str, i, str2, str3, i2, list, 0L);
    }

    public void zza(Context context, String str, int i, String str2, String str3, int i2, List<String> list, long j) {
        if (a(context)) {
            if (TextUtils.isEmpty(str)) {
                Log.e(a, "missing wakeLock key. " + str);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (7 == i || 8 == i || 10 == i || 11 == i) {
                try {
                    context.startService(new Intent().setComponent(zzd.zzahN).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(jCurrentTimeMillis, i, str2, i2, list, str, SystemClock.elapsedRealtime(), zzmr.zzao(context), str3, context.getPackageName(), zzmr.zzap(context), j)));
                } catch (Exception e) {
                    Log.wtf(a, e);
                }
            }
        }
    }
}
