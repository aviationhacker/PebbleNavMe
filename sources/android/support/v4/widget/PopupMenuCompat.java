package android.support.v4.widget;

import android.os.Build;
import android.view.View;
import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
public class PopupMenuCompat {
    static final c a;

    interface c {
        View.OnTouchListener a(Object obj);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.widget.PopupMenuCompat.c
        public View.OnTouchListener a(Object obj) {
            return null;
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.PopupMenuCompat.a, android.support.v4.widget.PopupMenuCompat.c
        public View.OnTouchListener a(Object obj) {
            return fc.a(obj);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else {
            a = new a();
        }
    }

    private PopupMenuCompat() {
    }

    public static View.OnTouchListener getDragToOpenListener(Object obj) {
        return a.a(obj);
    }
}
