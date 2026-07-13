package defpackage;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class dp {
    public static void a(ViewGroup viewGroup, boolean z) {
        viewGroup.setTransitionGroup(z);
    }

    public static boolean a(ViewGroup viewGroup) {
        return viewGroup.isTransitionGroup();
    }

    public static int b(ViewGroup viewGroup) {
        return viewGroup.getNestedScrollAxes();
    }
}
