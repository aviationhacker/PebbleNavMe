package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class di {
    public static int a(View view) {
        return view.getAccessibilityLiveRegion();
    }

    public static void a(View view, int i) {
        view.setAccessibilityLiveRegion(i);
    }

    public static boolean b(View view) {
        return view.isLaidOut();
    }

    public static boolean c(View view) {
        return view.isAttachedToWindow();
    }
}
