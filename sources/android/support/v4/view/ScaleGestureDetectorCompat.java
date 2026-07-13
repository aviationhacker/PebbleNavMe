package android.support.v4.view;

import android.os.Build;
import defpackage.cy;

/* JADX INFO: loaded from: classes.dex */
public class ScaleGestureDetectorCompat {
    static final c a;

    interface c {
        void a(Object obj, boolean z);

        boolean a(Object obj);
    }

    static class a implements c {
        private a() {
        }

        @Override // android.support.v4.view.ScaleGestureDetectorCompat.c
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.ScaleGestureDetectorCompat.c
        public boolean a(Object obj) {
            return false;
        }
    }

    static class b implements c {
        private b() {
        }

        @Override // android.support.v4.view.ScaleGestureDetectorCompat.c
        public void a(Object obj, boolean z) {
            cy.a(obj, z);
        }

        @Override // android.support.v4.view.ScaleGestureDetectorCompat.c
        public boolean a(Object obj) {
            return cy.a(obj);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else {
            a = new a();
        }
    }

    private ScaleGestureDetectorCompat() {
    }

    public static void setQuickScaleEnabled(Object obj, boolean z) {
        a.a(obj, z);
    }

    public static boolean isQuickScaleEnabled(Object obj) {
        return a.a(obj);
    }
}
