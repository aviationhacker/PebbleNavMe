package defpackage;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class cm {
    public static Object a(View view) {
        return view.getKeyDispatcherState();
    }

    public static boolean a(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2) {
        return keyEvent.dispatch(callback, (KeyEvent.DispatcherState) obj, obj2);
    }

    public static void a(KeyEvent keyEvent) {
        keyEvent.startTracking();
    }

    public static boolean b(KeyEvent keyEvent) {
        return keyEvent.isTracking();
    }
}
