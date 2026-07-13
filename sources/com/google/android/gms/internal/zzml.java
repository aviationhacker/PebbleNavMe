package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzml {
    private static Pattern a = null;

    public static boolean zzan(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static int zzca(int i) {
        return i / CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
    }

    @Deprecated
    public static boolean zzcb(int i) {
        return false;
    }
}
