package defpackage;

import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public class fe {
    public static void a(PopupWindow popupWindow, boolean z) {
        popupWindow.setOverlapAnchor(z);
    }

    public static boolean a(PopupWindow popupWindow) {
        return popupWindow.getOverlapAnchor();
    }

    public static void a(PopupWindow popupWindow, int i) {
        popupWindow.setWindowLayoutType(i);
    }

    public static int b(PopupWindow popupWindow) {
        return popupWindow.getWindowLayoutType();
    }
}
