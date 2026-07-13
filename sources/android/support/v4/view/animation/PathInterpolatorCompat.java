package android.support.v4.view.animation;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;
import defpackage.ep;
import defpackage.eq;

/* JADX INFO: loaded from: classes.dex */
public class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    public static Interpolator create(Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ep.a(path) : eq.a(path);
    }

    public static Interpolator create(float f, float f2) {
        return Build.VERSION.SDK_INT >= 21 ? ep.a(f, f2) : eq.a(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return Build.VERSION.SDK_INT >= 21 ? ep.a(f, f2, f3, f4) : eq.a(f, f2, f3, f4);
    }
}
