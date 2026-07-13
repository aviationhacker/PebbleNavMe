package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zze;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class zznb {
    private static final Pattern a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzcA(String str) {
        return str == null || zze.zzaeL.zzb(str);
    }
}
