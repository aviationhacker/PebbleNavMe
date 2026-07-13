package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class zzlm<L> {
    private final zzlm<L>.a a;
    private volatile L b;

    final class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            zzx.zzaa(message.what == 1);
            zzlm.this.a((zzb) message.obj);
        }
    }

    public interface zzb<L> {
        void zznN();

        void zzq(L l);
    }

    public zzlm(Looper looper, L l) {
        this.a = new a(looper);
        this.b = (L) zzx.zzb(l, "Listener must not be null");
    }

    void a(zzb<? super L> zzbVar) {
        L l = this.b;
        if (l == null) {
            zzbVar.zznN();
            return;
        }
        try {
            zzbVar.zzq(l);
        } catch (RuntimeException e) {
            zzbVar.zznN();
            throw e;
        }
    }

    public void clear() {
        this.b = null;
    }

    public void zza(zzb<? super L> zzbVar) {
        zzx.zzb(zzbVar, "Notifier must not be null");
        this.a.sendMessage(this.a.obtainMessage(1, zzbVar));
    }
}
