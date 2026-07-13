package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import defpackage.t;
import defpackage.u;

/* JADX INFO: loaded from: classes.dex */
public class BundleCompat {
    public static IBinder getBinder(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? u.a(bundle, str) : t.a(bundle, str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            u.a(bundle, str, iBinder);
        } else {
            t.a(bundle, str, iBinder);
        }
    }
}
