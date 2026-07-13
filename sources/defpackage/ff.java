package defpackage;

import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ff {
    private static Method a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public static void a(PopupWindow popupWindow, int i) {
        if (!b) {
            try {
                a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                a.setAccessible(true);
            } catch (Exception e) {
            }
            b = true;
        }
        if (a != null) {
            try {
                a.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    public static int a(PopupWindow popupWindow) {
        if (!d) {
            try {
                c = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
                c.setAccessible(true);
            } catch (Exception e) {
            }
            d = true;
        }
        if (c != null) {
            try {
                return ((Integer) c.invoke(popupWindow, new Object[0])).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }
}
