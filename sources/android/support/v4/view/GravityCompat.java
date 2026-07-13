package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
import defpackage.cl;

/* JADX INFO: loaded from: classes.dex */
public class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;
    static final a a;

    interface a {
        int a(int i, int i2);

        void a(int i, int i2, int i3, Rect rect, int i4, int i5, Rect rect2, int i6);

        void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4);

        void a(int i, Rect rect, Rect rect2, int i2);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.GravityCompat.a
        public int a(int i, int i2) {
            return (-8388609) & i;
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            Gravity.apply(i, i2, i3, rect, rect2);
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, int i2, int i3, Rect rect, int i4, int i5, Rect rect2, int i6) {
            Gravity.apply(i, i2, i3, rect, i4, i5, rect2);
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, Rect rect, Rect rect2, int i2) {
            Gravity.applyDisplay(i, rect, rect2);
        }
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.view.GravityCompat.a
        public int a(int i, int i2) {
            return cl.a(i, i2);
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            cl.a(i, i2, i3, rect, rect2, i4);
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, int i2, int i3, Rect rect, int i4, int i5, Rect rect2, int i6) {
            cl.a(i, i2, i3, rect, i4, i5, rect2, i6);
        }

        @Override // android.support.v4.view.GravityCompat.a
        public void a(int i, Rect rect, Rect rect2, int i2) {
            cl.a(i, rect, rect2, i2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static void apply(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        a.a(i, i2, i3, rect, rect2, i4);
    }

    public static void apply(int i, int i2, int i3, Rect rect, int i4, int i5, Rect rect2, int i6) {
        a.a(i, i2, i3, rect, i4, i5, rect2, i6);
    }

    public static void applyDisplay(int i, Rect rect, Rect rect2, int i2) {
        a.a(i, rect, rect2, i2);
    }

    public static int getAbsoluteGravity(int i, int i2) {
        return a.a(i, i2);
    }
}
