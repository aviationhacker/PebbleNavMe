package defpackage;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;

/* JADX INFO: loaded from: classes.dex */
public final class bl {
    public static Object a(Context context) {
        return context.getSystemService("display");
    }

    public static Display a(Object obj, int i) {
        return ((DisplayManager) obj).getDisplay(i);
    }

    public static Display[] a(Object obj) {
        return ((DisplayManager) obj).getDisplays();
    }

    public static Display[] a(Object obj, String str) {
        return ((DisplayManager) obj).getDisplays(str);
    }
}
