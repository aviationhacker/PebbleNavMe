package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzl {
    private static final Object a = new Object();
    private static zzl b;

    public static zzl zzal(Context context) {
        synchronized (a) {
            if (b == null) {
                b = new zzm(context.getApplicationContext());
            }
        }
        return b;
    }

    public abstract boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str);

    public abstract boolean zza(String str, ServiceConnection serviceConnection, String str2);

    public abstract void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str);

    public abstract void zzb(String str, ServiceConnection serviceConnection, String str2);
}
