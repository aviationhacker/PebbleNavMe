package defpackage;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class k {
    private static final int[] a = {R.attr.homeAsUpIndicator};

    public static Object a(Object obj, Activity activity, Drawable drawable, int i) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(i);
        }
        return obj;
    }

    public static Object a(Object obj, Activity activity, int i) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(i);
        }
        return obj;
    }

    public static Drawable a(Activity activity) {
        ActionBar actionBar = activity.getActionBar();
        Activity themedContext = activity;
        if (actionBar != null) {
            themedContext = actionBar.getThemedContext();
        }
        TypedArray typedArrayObtainStyledAttributes = themedContext.obtainStyledAttributes(null, a, R.attr.actionBarStyle, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }
}
