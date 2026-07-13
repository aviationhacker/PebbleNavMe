package com.google.android.gms.common.stats;

import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class zze {
    private final long a;
    private final int b;
    private final SimpleArrayMap<String, Long> c;

    public zze() {
        this.a = DateUtils.MILLIS_PER_MINUTE;
        this.b = 10;
        this.c = new SimpleArrayMap<>(10);
    }

    public zze(int i, long j) {
        this.a = j;
        this.b = i;
        this.c = new SimpleArrayMap<>();
    }

    private void a(long j, long j2) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            if (j2 - this.c.valueAt(size).longValue() > j) {
                this.c.removeAt(size);
            }
        }
    }

    public Long zzcx(String str) {
        Long lPut;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.a;
        synchronized (this) {
            while (this.c.size() >= this.b) {
                a(j, jElapsedRealtime);
                j /= 2;
                Log.w("ConnectionTracker", "The max capacity " + this.b + " is not enough. Current durationThreshold is: " + j);
            }
            lPut = this.c.put(str, Long.valueOf(jElapsedRealtime));
        }
        return lPut;
    }

    public boolean zzcy(String str) {
        boolean z;
        synchronized (this) {
            z = this.c.remove(str) != null;
        }
        return z;
    }
}
