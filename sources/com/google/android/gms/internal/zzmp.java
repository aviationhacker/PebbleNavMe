package com.google.android.gms.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class zzmp implements zzmn {
    private static zzmp a;

    public static synchronized zzmn zzqt() {
        if (a == null) {
            a = new zzmp();
        }
        return a;
    }

    @Override // com.google.android.gms.internal.zzmn
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.internal.zzmn
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.zzmn
    public long nanoTime() {
        return System.nanoTime();
    }
}
