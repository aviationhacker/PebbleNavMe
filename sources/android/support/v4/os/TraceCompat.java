package android.support.v4.os;

import android.os.Build;
import defpackage.cc;

/* JADX INFO: loaded from: classes.dex */
public class TraceCompat {
    public static void beginSection(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            cc.a(str);
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            cc.a();
        }
    }
}
