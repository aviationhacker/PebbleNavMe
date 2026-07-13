package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import defpackage.ds;
import defpackage.dt;
import defpackage.du;
import defpackage.dv;
import defpackage.dw;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ViewPropertyAnimatorCompat {
    static final g a;
    private WeakReference<View> b;
    private Runnable c = null;
    private Runnable d = null;
    private int e = -1;

    interface g {
        long a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Interpolator interpolator);

        void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable);

        Interpolator b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j);

        void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable);

        long c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view);

        void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void g(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void h(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void i(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void j(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void k(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void l(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void m(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void n(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void o(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void p(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void q(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void r(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void s(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void t(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void u(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void v(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void w(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);

        void x(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f);
    }

    ViewPropertyAnimatorCompat(View view) {
        this.b = new WeakReference<>(view);
    }

    static class a implements g {
        WeakHashMap<View, Runnable> a = null;

        a() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            viewPropertyAnimatorCompat.d = runnable;
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public long a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return 0L;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Interpolator interpolator) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public Interpolator b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public long c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return 0L;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void g(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void h(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void i(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void j(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void k(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void l(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void m(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void n(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void o(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void p(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void q(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void r(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void s(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void t(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void u(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void v(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void w(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void x(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            a(view);
            g(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            viewPropertyAnimatorCompat.c = runnable;
            h(viewPropertyAnimatorCompat, view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
            view.setTag(2113929216, viewPropertyAnimatorListener);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            ViewPropertyAnimatorListener viewPropertyAnimatorListener;
            Object tag = view.getTag(2113929216);
            if (!(tag instanceof ViewPropertyAnimatorListener)) {
                viewPropertyAnimatorListener = null;
            } else {
                viewPropertyAnimatorListener = (ViewPropertyAnimatorListener) tag;
            }
            Runnable runnable = viewPropertyAnimatorCompat.c;
            Runnable runnable2 = viewPropertyAnimatorCompat.d;
            if (runnable != null) {
                runnable.run();
            }
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(view);
                viewPropertyAnimatorListener.onAnimationEnd(view);
            }
            if (runnable2 != null) {
                runnable2.run();
            }
            if (this.a != null) {
                this.a.remove(view);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.view.ViewPropertyAnimatorCompat$a$a, reason: collision with other inner class name */
        class RunnableC0003a implements Runnable {
            WeakReference<View> a;
            ViewPropertyAnimatorCompat b;

            private RunnableC0003a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
                this.a = new WeakReference<>(view);
                this.b = viewPropertyAnimatorCompat;
            }

            @Override // java.lang.Runnable
            public void run() {
                View view = this.a.get();
                if (view != null) {
                    a.this.g(this.b, view);
                }
            }
        }

        private void a(View view) {
            Runnable runnable;
            if (this.a != null && (runnable = this.a.get(view)) != null) {
                view.removeCallbacks(runnable);
            }
        }

        private void h(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            Runnable runnableC0003a = this.a != null ? this.a.get(view) : null;
            if (runnableC0003a == null) {
                runnableC0003a = new RunnableC0003a(viewPropertyAnimatorCompat, view);
                if (this.a == null) {
                    this.a = new WeakHashMap<>();
                }
                this.a.put(view, runnableC0003a);
            }
            view.removeCallbacks(runnableC0003a);
            view.post(runnableC0003a);
        }
    }

    static class b extends a {
        WeakHashMap<View, Integer> b = null;

        b() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j) {
            ds.a(view, j);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.a(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.b(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.c(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public long a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return ds.a(view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Interpolator interpolator) {
            ds.a(view, interpolator);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, long j) {
            ds.b(view, j);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public long c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return ds.b(view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.d(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.e(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.f(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void g(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.g(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void h(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.h(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void i(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.i(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void j(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.j(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void k(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.k(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void l(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.l(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void m(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.m(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void n(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.n(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            ds.c(view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void o(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.o(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void p(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.p(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void q(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.q(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void r(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.r(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void u(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.s(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void v(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            ds.t(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void e(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            ds.d(view);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
            view.setTag(2113929216, viewPropertyAnimatorListener);
            ds.a(view, new a(viewPropertyAnimatorCompat));
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            ds.a(view, new a(viewPropertyAnimatorCompat));
            viewPropertyAnimatorCompat.d = runnable;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            ds.a(view, new a(viewPropertyAnimatorCompat));
            viewPropertyAnimatorCompat.c = runnable;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            viewPropertyAnimatorCompat.e = ViewCompat.getLayerType(view);
            ds.a(view, new a(viewPropertyAnimatorCompat));
        }

        static class a implements ViewPropertyAnimatorListener {
            ViewPropertyAnimatorCompat a;

            a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
                this.a = viewPropertyAnimatorCompat;
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                if (this.a.e >= 0) {
                    ViewCompat.setLayerType(view, 2, null);
                }
                if (this.a.c != null) {
                    this.a.c.run();
                }
                Object tag = view.getTag(2113929216);
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationStart(view);
                }
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                if (this.a.e >= 0) {
                    ViewCompat.setLayerType(view, this.a.e, null);
                    this.a.e = -1;
                }
                if (this.a.d != null) {
                    this.a.d.run();
                }
                Object tag = view.getTag(2113929216);
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(view);
                }
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationCancel(View view) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener;
                Object tag = view.getTag(2113929216);
                if (!(tag instanceof ViewPropertyAnimatorListener)) {
                    viewPropertyAnimatorListener = null;
                } else {
                    viewPropertyAnimatorListener = (ViewPropertyAnimatorListener) tag;
                }
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationCancel(view);
                }
            }
        }
    }

    static class d extends b {
        d() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.b, android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
            dt.a(view, viewPropertyAnimatorListener);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.b, android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            dt.a(view, runnable);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.b, android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, Runnable runnable) {
            dt.b(view, runnable);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.b, android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void f(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            dt.a(view);
        }
    }

    static class c extends d {
        c() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public Interpolator b(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
            return du.a(view);
        }
    }

    static class e extends c {
        e() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
            dv.a(view, viewPropertyAnimatorUpdateListener);
        }
    }

    static class f extends e {
        f() {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void w(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            dw.a(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void x(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            dw.b(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void s(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            dw.c(view, f);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorCompat.a, android.support.v4.view.ViewPropertyAnimatorCompat.g
        public void t(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view, float f) {
            dw.d(view, f);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new f();
            return;
        }
        if (i >= 19) {
            a = new e();
            return;
        }
        if (i >= 18) {
            a = new c();
            return;
        }
        if (i >= 16) {
            a = new d();
        } else if (i >= 14) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public ViewPropertyAnimatorCompat setDuration(long j) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, j);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alpha(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alphaBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.d(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationX(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.b(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationY(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.c(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withEndAction(Runnable runnable) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, runnable);
        }
        return this;
    }

    public long getDuration() {
        View view = this.b.get();
        if (view != null) {
            return a.a(this, view);
        }
        return 0L;
    }

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator interpolator) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, interpolator);
        }
        return this;
    }

    public Interpolator getInterpolator() {
        View view = this.b.get();
        if (view != null) {
            return a.b(this, view);
        }
        return null;
    }

    public ViewPropertyAnimatorCompat setStartDelay(long j) {
        View view = this.b.get();
        if (view != null) {
            a.b(this, view, j);
        }
        return this;
    }

    public long getStartDelay() {
        View view = this.b.get();
        if (view != null) {
            return a.c(this, view);
        }
        return 0L;
    }

    public ViewPropertyAnimatorCompat rotation(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.e(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.f(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationX(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.g(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationXBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.h(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationY(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.i(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationYBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.j(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleX(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.k(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleXBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.l(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleY(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.m(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleYBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.n(this, view, f2);
        }
        return this;
    }

    public void cancel() {
        View view = this.b.get();
        if (view != null) {
            a.d(this, view);
        }
    }

    public ViewPropertyAnimatorCompat x(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.o(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat xBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.p(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat y(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.q(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat yBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.r(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationXBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.u(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationYBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.v(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.x(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZ(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.w(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat z(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.s(this, view, f2);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat zBy(float f2) {
        View view = this.b.get();
        if (view != null) {
            a.t(this, view, f2);
        }
        return this;
    }

    public void start() {
        View view = this.b.get();
        if (view != null) {
            a.e(this, view);
        }
    }

    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.b.get();
        if (view != null) {
            a.f(this, view);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withStartAction(Runnable runnable) {
        View view = this.b.get();
        if (view != null) {
            a.b(this, view, runnable);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, viewPropertyAnimatorListener);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setUpdateListener(ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        View view = this.b.get();
        if (view != null) {
            a.a(this, view, viewPropertyAnimatorUpdateListener);
        }
        return this;
    }
}
