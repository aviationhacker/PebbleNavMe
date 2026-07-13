package defpackage;

import android.os.CancellationSignal;

/* JADX INFO: loaded from: classes.dex */
public class by {
    public static Object a() {
        return new CancellationSignal();
    }

    public static void a(Object obj) {
        ((CancellationSignal) obj).cancel();
    }
}
