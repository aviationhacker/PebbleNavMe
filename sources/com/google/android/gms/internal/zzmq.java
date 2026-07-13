package com.google.android.gms.internal;

import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public final class zzmq {
    private static boolean a(Resources resources) {
        Configuration configuration = resources.getConfiguration();
        return zzmx.zzqw() && (configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600;
    }

    public static boolean zzb(Resources resources) {
        if (resources == null) {
            return false;
        }
        return (zzmx.zzqu() && ((resources.getConfiguration().screenLayout & 15) > 3)) || a(resources);
    }
}
