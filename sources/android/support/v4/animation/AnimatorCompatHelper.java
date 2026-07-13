package android.support.v4.animation;

import android.os.Build;
import android.view.View;
import defpackage.g;
import defpackage.h;
import defpackage.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnimatorCompatHelper {
    static g a;

    static {
        if (Build.VERSION.SDK_INT >= 12) {
            a = new i();
        } else {
            a = new h();
        }
    }

    public static ValueAnimatorCompat emptyValueAnimator() {
        return a.a();
    }

    AnimatorCompatHelper() {
    }

    public static void clearInterpolator(View view) {
        a.a(view);
    }
}
