package android.support.v4.widget;

import android.os.Build;
import android.view.View;
import defpackage.fb;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindowCompat {
    static final c a;

    interface c {
        View.OnTouchListener a(Object obj, View view);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.widget.ListPopupWindowCompat.c
        public View.OnTouchListener a(Object obj, View view) {
            return null;
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.ListPopupWindowCompat.a, android.support.v4.widget.ListPopupWindowCompat.c
        public View.OnTouchListener a(Object obj, View view) {
            return fb.a(obj, view);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else {
            a = new a();
        }
    }

    private ListPopupWindowCompat() {
    }

    public static View.OnTouchListener createDragToOpenListener(Object obj, View view) {
        return a.a(obj, view);
    }
}
