package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzqd;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class zzqc implements zzqd.zza {
    private final zzqd a;
    private boolean b;

    public zzqc(Context context, int i) {
        this(context, i, null);
    }

    public zzqc(Context context, int i, String str) {
        this(context, i, str, null, true);
    }

    public zzqc(Context context, int i, String str, String str2, boolean z) {
        this.a = new zzqd(context, i, str, str2, this, z, context != context.getApplicationContext() ? context.getClass().getName() : "OneTimePlayLogger");
        this.b = true;
    }

    private void a() {
        if (!this.b) {
            throw new IllegalStateException("Cannot reuse one-time logger after sending.");
        }
    }

    public void send() {
        a();
        this.a.start();
        this.b = false;
    }

    @Override // com.google.android.gms.internal.zzqd.zza
    public void zzBr() {
        this.a.stop();
    }

    @Override // com.google.android.gms.internal.zzqd.zza
    public void zzBs() {
        Log.w("OneTimePlayLogger", "logger connection failed");
    }

    public void zza(String str, byte[] bArr, String... strArr) {
        a();
        this.a.zzb(str, bArr, strArr);
    }

    @Override // com.google.android.gms.internal.zzqd.zza
    public void zzf(PendingIntent pendingIntent) {
        Log.w("OneTimePlayLogger", "logger connection failed: " + pendingIntent);
    }
}
