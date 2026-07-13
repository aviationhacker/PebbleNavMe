package android.support.v4.widget;

import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
import defpackage.fd;
import defpackage.fe;
import defpackage.ff;
import defpackage.fg;

/* JADX INFO: loaded from: classes.dex */
public class PopupWindowCompat {
    static final f a;

    interface f {
        void a(PopupWindow popupWindow, int i);

        void a(PopupWindow popupWindow, View view, int i, int i2, int i3);

        void a(PopupWindow popupWindow, boolean z);

        boolean a(PopupWindow popupWindow);

        int b(PopupWindow popupWindow);
    }

    static class c implements f {
        c() {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, boolean z) {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.f
        public boolean a(PopupWindow popupWindow) {
            return false;
        }

        @Override // android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, int i) {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.f
        public int b(PopupWindow popupWindow) {
            return 0;
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, int i) {
            ff.a(popupWindow, i);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public int b(PopupWindow popupWindow) {
            return ff.a(popupWindow);
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            fg.a(popupWindow, view, i, i2, i3);
        }
    }

    static class a extends e {
        a() {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, boolean z) {
            fd.a(popupWindow, z);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public boolean a(PopupWindow popupWindow) {
            return fd.a(popupWindow);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.PopupWindowCompat.a, android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, boolean z) {
            fe.a(popupWindow, z);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.a, android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public boolean a(PopupWindow popupWindow) {
            return fe.a(popupWindow);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.d, android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public void a(PopupWindow popupWindow, int i) {
            fe.a(popupWindow, i);
        }

        @Override // android.support.v4.widget.PopupWindowCompat.d, android.support.v4.widget.PopupWindowCompat.c, android.support.v4.widget.PopupWindowCompat.f
        public int b(PopupWindow popupWindow) {
            return fe.b(popupWindow);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            a = new b();
            return;
        }
        if (i >= 21) {
            a = new a();
            return;
        }
        if (i >= 19) {
            a = new e();
        } else if (i >= 9) {
            a = new d();
        } else {
            a = new c();
        }
    }

    private PopupWindowCompat() {
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        a.a(popupWindow, view, i, i2, i3);
    }

    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        a.a(popupWindow, z);
    }

    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        return a.a(popupWindow);
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int i) {
        a.a(popupWindow, i);
    }

    public static int getWindowLayoutType(PopupWindow popupWindow) {
        return a.b(popupWindow);
    }
}
