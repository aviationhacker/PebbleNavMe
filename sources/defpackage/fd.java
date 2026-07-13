package defpackage;

import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class fd {
    private static Field a;

    static {
        try {
            a = PopupWindow.class.getDeclaredField("mOverlapAnchor");
            a.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
        }
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        if (a != null) {
            try {
                a.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e);
            }
        }
    }

    public static boolean a(PopupWindow popupWindow) {
        if (a != null) {
            try {
                return ((Boolean) a.get(popupWindow)).booleanValue();
            } catch (IllegalAccessException e) {
                Log.i("PopupWindowCompatApi21", "Could not get overlap anchor field in PopupWindow", e);
            }
        }
        return false;
    }
}
