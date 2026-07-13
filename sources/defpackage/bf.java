package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes.dex */
public class bf {
    public static void a(Drawable drawable, float f, float f2) {
        drawable.setHotspot(f, f2);
    }

    public static void a(Drawable drawable, int i, int i2, int i3, int i4) {
        drawable.setHotspotBounds(i, i2, i3, i4);
    }

    public static void a(Drawable drawable, int i) {
        if (drawable instanceof bj) {
            bb.a(drawable, i);
        } else {
            drawable.setTint(i);
        }
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        if (drawable instanceof bj) {
            bb.a(drawable, colorStateList);
        } else {
            drawable.setTintList(colorStateList);
        }
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        if (drawable instanceof bj) {
            bb.a(drawable, mode);
        } else {
            drawable.setTintMode(mode);
        }
    }

    public static Drawable a(Drawable drawable) {
        if ((drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer)) {
            return new bj(drawable);
        }
        return drawable;
    }
}
