package defpackage;

import android.graphics.Path;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public class eq {
    public static Interpolator a(Path path) {
        return new er(path);
    }

    public static Interpolator a(float f, float f2) {
        return new er(f, f2);
    }

    public static Interpolator a(float f, float f2, float f3, float f4) {
        return new er(f, f2, f3, f4);
    }
}
