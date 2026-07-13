package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzqc;

/* JADX INFO: loaded from: classes.dex */
public final class zzo {
    private final String b;
    private final String c;
    public static final int zzagk = 23 - " PII_LOG".length();
    private static final String a = null;

    public zzo(String str) {
        this(str, a);
    }

    public zzo(String str, String str2) {
        zzx.zzb(str, "log tag cannot be null");
        zzx.zzb(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.b = str;
        if (str2 == null || str2.length() <= 0) {
            this.c = a;
        } else {
            this.c = str2;
        }
    }

    private String a(String str) {
        return this.c == null ? str : this.c.concat(str);
    }

    public void zza(Context context, String str, String str2, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < stackTrace.length && i < 2; i++) {
            sb.append(stackTrace[i].toString());
            sb.append("\n");
        }
        zzqc zzqcVar = new zzqc(context, 10);
        zzqcVar.zza("GMS_WTF", null, "GMS_WTF", sb.toString());
        zzqcVar.send();
        if (zzbH(7)) {
            Log.e(str, a(str2), th);
            Log.wtf(str, a(str2), th);
        }
    }

    public void zza(String str, String str2, Throwable th) {
        if (zzbH(4)) {
            Log.i(str, a(str2), th);
        }
    }

    public void zzb(String str, String str2, Throwable th) {
        if (zzbH(5)) {
            Log.w(str, a(str2), th);
        }
    }

    public boolean zzbH(int i) {
        return Log.isLoggable(this.b, i);
    }

    public void zzc(String str, String str2, Throwable th) {
        if (zzbH(6)) {
            Log.e(str, a(str2), th);
        }
    }

    public void zzx(String str, String str2) {
        if (zzbH(3)) {
            Log.d(str, a(str2));
        }
    }

    public void zzy(String str, String str2) {
        if (zzbH(5)) {
            Log.w(str, a(str2));
        }
    }

    public void zzz(String str, String str2) {
        if (zzbH(6)) {
            Log.e(str, a(str2));
        }
    }
}
