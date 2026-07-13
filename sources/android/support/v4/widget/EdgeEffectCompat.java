package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import defpackage.ez;
import defpackage.fa;

/* JADX INFO: loaded from: classes.dex */
public class EdgeEffectCompat {
    private static final c b;
    private Object a;

    interface c {
        Object a(Context context);

        void a(Object obj, int i, int i2);

        boolean a(Object obj);

        boolean a(Object obj, float f);

        boolean a(Object obj, float f, float f2);

        boolean a(Object obj, int i);

        boolean a(Object obj, Canvas canvas);

        void b(Object obj);

        boolean c(Object obj);
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            b = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            b = new b();
        } else {
            b = new a();
        }
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public Object a(Context context) {
            return null;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public void a(Object obj, int i, int i2) {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj) {
            return true;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public void b(Object obj) {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, float f) {
            return false;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean c(Object obj) {
            return false;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, int i) {
            return false;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, Canvas canvas) {
            return false;
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, float f, float f2) {
            return false;
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public Object a(Context context) {
            return ez.a(context);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public void a(Object obj, int i, int i2) {
            ez.a(obj, i, i2);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj) {
            return ez.a(obj);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public void b(Object obj) {
            ez.b(obj);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, float f) {
            return ez.a(obj, f);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean c(Object obj) {
            return ez.c(obj);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, int i) {
            return ez.a(obj, i);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, Canvas canvas) {
            return ez.a(obj, canvas);
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, float f, float f2) {
            return ez.a(obj, f);
        }
    }

    static class d extends b {
        d() {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.b, android.support.v4.widget.EdgeEffectCompat.c
        public boolean a(Object obj, float f, float f2) {
            return fa.a(obj, f, f2);
        }
    }

    public EdgeEffectCompat(Context context) {
        this.a = b.a(context);
    }

    public void setSize(int i, int i2) {
        b.a(this.a, i, i2);
    }

    public boolean isFinished() {
        return b.a(this.a);
    }

    public void finish() {
        b.b(this.a);
    }

    public boolean onPull(float f) {
        return b.a(this.a, f);
    }

    public boolean onPull(float f, float f2) {
        return b.a(this.a, f, f2);
    }

    public boolean onRelease() {
        return b.c(this.a);
    }

    public boolean onAbsorb(int i) {
        return b.a(this.a, i);
    }

    public boolean draw(Canvas canvas) {
        return b.a(this.a, canvas);
    }
}
