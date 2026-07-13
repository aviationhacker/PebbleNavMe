package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;
import defpackage.cr;

/* JADX INFO: loaded from: classes.dex */
public class MarginLayoutParamsCompat {
    static final a a;

    interface a {
        int a(ViewGroup.MarginLayoutParams marginLayoutParams);

        void a(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

        int b(ViewGroup.MarginLayoutParams marginLayoutParams);

        void b(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

        void c(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

        boolean c(ViewGroup.MarginLayoutParams marginLayoutParams);

        int d(ViewGroup.MarginLayoutParams marginLayoutParams);

        void d(ViewGroup.MarginLayoutParams marginLayoutParams, int i);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            marginLayoutParams.leftMargin = i;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void b(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            marginLayoutParams.rightMargin = i;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public boolean c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return false;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return 0;
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void c(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void d(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        }
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return cr.a(marginLayoutParams);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return cr.b(marginLayoutParams);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            cr.a(marginLayoutParams, i);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void b(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            cr.b(marginLayoutParams, i);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public boolean c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return cr.c(marginLayoutParams);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public int d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return cr.d(marginLayoutParams);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void c(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            cr.c(marginLayoutParams, i);
        }

        @Override // android.support.v4.view.MarginLayoutParamsCompat.a
        public void d(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
            cr.d(marginLayoutParams, i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.a(marginLayoutParams);
    }

    public static int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.b(marginLayoutParams);
    }

    public static void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        a.a(marginLayoutParams, i);
    }

    public static void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        a.b(marginLayoutParams, i);
    }

    public static boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.c(marginLayoutParams);
    }

    public static int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.d(marginLayoutParams);
    }

    public static void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        a.c(marginLayoutParams, i);
    }

    public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        a.d(marginLayoutParams, i);
    }
}
