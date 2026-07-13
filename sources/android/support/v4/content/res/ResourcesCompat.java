package android.support.v4.content.res;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import defpackage.au;
import defpackage.av;

/* JADX INFO: loaded from: classes.dex */
public class ResourcesCompat {
    public static Drawable getDrawable(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? au.a(resources, i, theme) : resources.getDrawable(i);
    }

    public static Drawable getDrawableForDensity(Resources resources, int i, int i2, Resources.Theme theme) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return au.a(resources, i, i2, theme);
        }
        if (i3 >= 15) {
            return av.a(resources, i, i2);
        }
        return resources.getDrawable(i);
    }
}
