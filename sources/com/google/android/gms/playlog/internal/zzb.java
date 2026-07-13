package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzsi;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzb {
    private final ArrayList<zza> a;
    private int b;

    public static class zza {
        public final PlayLoggerContext zzaRM;
        public final LogEvent zzaRN;
        public final zzsi.zzd zzaRO;

        private zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
            this.zzaRM = (PlayLoggerContext) zzx.zzw(playLoggerContext);
            this.zzaRN = (LogEvent) zzx.zzw(logEvent);
            this.zzaRO = null;
        }
    }

    public zzb() {
        this(100);
    }

    public zzb(int i) {
        this.a = new ArrayList<>();
        this.b = i;
    }

    private void a() {
        while (getSize() > getCapacity()) {
            this.a.remove(0);
        }
    }

    public void clear() {
        this.a.clear();
    }

    public int getCapacity() {
        return this.b;
    }

    public int getSize() {
        return this.a.size();
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public ArrayList<zza> zzBt() {
        return this.a;
    }

    public void zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.a.add(new zza(playLoggerContext, logEvent));
        a();
    }
}
