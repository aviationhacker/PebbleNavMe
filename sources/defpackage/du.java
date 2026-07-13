package defpackage;

import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public class du {
    public static Interpolator a(View view) {
        return (Interpolator) view.animate().getInterpolator();
    }
}
