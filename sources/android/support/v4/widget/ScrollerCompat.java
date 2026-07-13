package android.support.v4.widget;

import android.content.Context;
import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import defpackage.fh;
import defpackage.fi;

/* JADX INFO: loaded from: classes.dex */
public class ScrollerCompat {
    Object a;
    a b;

    interface a {
        Object a(Context context, Interpolator interpolator);

        void a(Object obj, int i, int i2, int i3);

        void a(Object obj, int i, int i2, int i3, int i4);

        void a(Object obj, int i, int i2, int i3, int i4, int i5);

        void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

        void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

        boolean a(Object obj);

        int b(Object obj);

        void b(Object obj, int i, int i2, int i3);

        int c(Object obj);

        float d(Object obj);

        boolean e(Object obj);

        void f(Object obj);

        boolean g(Object obj);

        int h(Object obj);

        int i(Object obj);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public Object a(Context context, Interpolator interpolator) {
            return interpolator != null ? new Scroller(context, interpolator) : new Scroller(context);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean a(Object obj) {
            return ((Scroller) obj).isFinished();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int b(Object obj) {
            return ((Scroller) obj).getCurrX();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int c(Object obj) {
            return ((Scroller) obj).getCurrY();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public float d(Object obj) {
            return 0.0f;
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean e(Object obj) {
            return ((Scroller) obj).computeScrollOffset();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4) {
            ((Scroller) obj).startScroll(i, i2, i3, i4);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((Scroller) obj).startScroll(i, i2, i3, i4, i5);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            ((Scroller) obj).fling(i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            ((Scroller) obj).fling(i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void f(Object obj) {
            ((Scroller) obj).abortAnimation();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3) {
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void b(Object obj, int i, int i2, int i3) {
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean g(Object obj) {
            return false;
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int h(Object obj) {
            return ((Scroller) obj).getFinalX();
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int i(Object obj) {
            return ((Scroller) obj).getFinalY();
        }
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public Object a(Context context, Interpolator interpolator) {
            return fh.a(context, interpolator);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean a(Object obj) {
            return fh.a(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int b(Object obj) {
            return fh.b(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int c(Object obj) {
            return fh.c(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public float d(Object obj) {
            return 0.0f;
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean e(Object obj) {
            return fh.d(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4) {
            fh.a(obj, i, i2, i3, i4);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            fh.a(obj, i, i2, i3, i4, i5);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            fh.a(obj, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            fh.a(obj, i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void f(Object obj) {
            fh.e(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void a(Object obj, int i, int i2, int i3) {
            fh.a(obj, i, i2, i3);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public void b(Object obj, int i, int i2, int i3) {
            fh.b(obj, i, i2, i3);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public boolean g(Object obj) {
            return fh.f(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int h(Object obj) {
            return fh.g(obj);
        }

        @Override // android.support.v4.widget.ScrollerCompat.a
        public int i(Object obj) {
            return fh.h(obj);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.ScrollerCompat.c, android.support.v4.widget.ScrollerCompat.a
        public float d(Object obj) {
            return fi.a(obj);
        }
    }

    public static ScrollerCompat create(Context context) {
        return create(context, null);
    }

    public static ScrollerCompat create(Context context, Interpolator interpolator) {
        return new ScrollerCompat(context, interpolator);
    }

    ScrollerCompat(Context context, Interpolator interpolator) {
        this(Build.VERSION.SDK_INT, context, interpolator);
    }

    private ScrollerCompat(int i, Context context, Interpolator interpolator) {
        if (i >= 14) {
            this.b = new d();
        } else if (i >= 9) {
            this.b = new c();
        } else {
            this.b = new b();
        }
        this.a = this.b.a(context, interpolator);
    }

    public boolean isFinished() {
        return this.b.a(this.a);
    }

    public int getCurrX() {
        return this.b.b(this.a);
    }

    public int getCurrY() {
        return this.b.c(this.a);
    }

    public int getFinalX() {
        return this.b.h(this.a);
    }

    public int getFinalY() {
        return this.b.i(this.a);
    }

    public float getCurrVelocity() {
        return this.b.d(this.a);
    }

    public boolean computeScrollOffset() {
        return this.b.e(this.a);
    }

    public void startScroll(int i, int i2, int i3, int i4) {
        this.b.a(this.a, i, i2, i3, i4);
    }

    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        this.b.a(this.a, i, i2, i3, i4, i5);
    }

    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.b.a(this.a, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.b.a(this.a, i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    public void abortAnimation() {
        this.b.f(this.a);
    }

    public void notifyHorizontalEdgeReached(int i, int i2, int i3) {
        this.b.a(this.a, i, i2, i3);
    }

    public void notifyVerticalEdgeReached(int i, int i2, int i3) {
        this.b.b(this.a, i, i2, i3);
    }

    public boolean isOverScrolled() {
        return this.b.g(this.a);
    }
}
