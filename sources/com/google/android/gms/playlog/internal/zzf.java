package com.google.android.gms.playlog.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.playlog.internal.zza;
import com.google.android.gms.playlog.internal.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzf extends zzj<zza> {
    private final String b;
    private final zzd c;
    private final zzb d;
    private final Object e;
    private boolean f;

    public zzf(Context context, Looper looper, zzd zzdVar, com.google.android.gms.common.internal.zzf zzfVar) {
        super(context, looper, 24, zzfVar, zzdVar, zzdVar);
        this.b = context.getPackageName();
        this.c = (zzd) zzx.zzw(zzdVar);
        this.c.zza(this);
        this.d = new zzb();
        this.e = new Object();
        this.f = true;
    }

    private void a() {
        PlayLoggerContext playLoggerContext;
        com.google.android.gms.common.internal.zzb.zzZ(!this.f);
        if (this.d.isEmpty()) {
            return;
        }
        PlayLoggerContext playLoggerContext2 = null;
        try {
            ArrayList arrayList = new ArrayList();
            for (zzb.zza zzaVar : this.d.zzBt()) {
                if (zzaVar.zzaRO != null) {
                    zzpc().zza(this.b, zzaVar.zzaRM, zzse.zzf(zzaVar.zzaRO));
                } else {
                    if (zzaVar.zzaRM.equals(playLoggerContext2)) {
                        arrayList.add(zzaVar.zzaRN);
                        playLoggerContext = playLoggerContext2;
                    } else {
                        if (!arrayList.isEmpty()) {
                            zzpc().zza(this.b, playLoggerContext2, arrayList);
                            arrayList.clear();
                        }
                        PlayLoggerContext playLoggerContext3 = zzaVar.zzaRM;
                        arrayList.add(zzaVar.zzaRN);
                        playLoggerContext = playLoggerContext3;
                    }
                    playLoggerContext2 = playLoggerContext;
                }
            }
            if (!arrayList.isEmpty()) {
                zzpc().zza(this.b, playLoggerContext2, arrayList);
            }
            this.d.clear();
        } catch (RemoteException e) {
            Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
        }
    }

    private void a(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.d.zza(playLoggerContext, logEvent);
    }

    private void b(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        try {
            a();
            zzpc().zza(this.b, playLoggerContext, logEvent);
        } catch (RemoteException e) {
            Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
            a(playLoggerContext, logEvent);
        } catch (IllegalStateException e2) {
            Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
            a(playLoggerContext, logEvent);
        }
    }

    void a(boolean z) {
        synchronized (this.e) {
            boolean z2 = this.f;
            this.f = z;
            if (z2 && !this.f) {
                a();
            }
        }
    }

    public void start() {
        synchronized (this.e) {
            if (isConnecting() || isConnected()) {
                return;
            }
            this.c.zzao(true);
            zzoZ();
        }
    }

    public void stop() {
        synchronized (this.e) {
            this.c.zzao(false);
            disconnect();
        }
    }

    public void zzb(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        synchronized (this.e) {
            if (this.f) {
                a(playLoggerContext, logEvent);
            } else {
                b(playLoggerContext, logEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    /* JADX INFO: renamed from: zzdA, reason: merged with bridge method [inline-methods] */
    public zza zzW(IBinder iBinder) {
        return zza.AbstractBinderC0010zza.zzdz(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    public String zzfK() {
        return "com.google.android.gms.playlog.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzj
    public String zzfL() {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }
}
