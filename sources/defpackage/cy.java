package defpackage;

import android.view.ScaleGestureDetector;

/* JADX INFO: loaded from: classes.dex */
public class cy {
    public static void a(Object obj, boolean z) {
        ((ScaleGestureDetector) obj).setQuickScaleEnabled(z);
    }

    public static boolean a(Object obj) {
        return ((ScaleGestureDetector) obj).isQuickScaleEnabled();
    }
}
