package android.support.v4.view;

import android.os.Build;
import android.view.LayoutInflater;
import defpackage.co;
import defpackage.cp;
import defpackage.cq;

/* JADX INFO: loaded from: classes.dex */
public class LayoutInflaterCompat {
    static final a a;

    interface a {
        void a(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.LayoutInflaterCompat.a
        public void a(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            co.a(layoutInflater, layoutInflaterFactory);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.LayoutInflaterCompat.b, android.support.v4.view.LayoutInflaterCompat.a
        public void a(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            cp.a(layoutInflater, layoutInflaterFactory);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.LayoutInflaterCompat.c, android.support.v4.view.LayoutInflaterCompat.b, android.support.v4.view.LayoutInflaterCompat.a
        public void a(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            cq.a(layoutInflater, layoutInflaterFactory);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    private LayoutInflaterCompat() {
    }

    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        a.a(layoutInflater, layoutInflaterFactory);
    }
}
