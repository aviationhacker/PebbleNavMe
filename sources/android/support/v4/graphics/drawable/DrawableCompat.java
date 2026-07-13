package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import defpackage.az;
import defpackage.ba;
import defpackage.bb;
import defpackage.bc;
import defpackage.bd;
import defpackage.be;
import defpackage.bf;

/* JADX INFO: loaded from: classes.dex */
public class DrawableCompat {
    static final b a;

    interface b {
        void a(Drawable drawable);

        void a(Drawable drawable, float f, float f2);

        void a(Drawable drawable, int i);

        void a(Drawable drawable, int i, int i2, int i3, int i4);

        void a(Drawable drawable, ColorStateList colorStateList);

        void a(Drawable drawable, PorterDuff.Mode mode);

        void a(Drawable drawable, boolean z);

        void b(Drawable drawable, int i);

        boolean b(Drawable drawable);

        Drawable c(Drawable drawable);

        int d(Drawable drawable);
    }

    static class a implements b {
        a() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable) {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, boolean z) {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public boolean b(Drawable drawable) {
            return false;
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, float f, float f2) {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, int i, int i2, int i3, int i4) {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, int i) {
            bb.a(drawable, i);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, ColorStateList colorStateList) {
            bb.a(drawable, colorStateList);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, PorterDuff.Mode mode) {
            bb.a(drawable, mode);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public Drawable c(Drawable drawable) {
            return bb.a(drawable);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public void b(Drawable drawable, int i) {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.b
        public int d(Drawable drawable) {
            return 0;
        }
    }

    static class c extends a {
        c() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable) {
            bc.a(drawable);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public Drawable c(Drawable drawable) {
            return bc.b(drawable);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void b(Drawable drawable, int i) {
            bd.a(drawable, i);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public int d(Drawable drawable) {
            int iA = bd.a(drawable);
            if (iA < 0) {
                return iA;
            }
            return 0;
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, boolean z) {
            be.a(drawable, z);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public boolean b(Drawable drawable) {
            return be.a(drawable);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.c, android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public Drawable c(Drawable drawable) {
            return be.b(drawable);
        }
    }

    static class f extends e {
        f() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, float f, float f2) {
            bf.a(drawable, f, f2);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, int i, int i2, int i3, int i4) {
            bf.a(drawable, i, i2, i3, i4);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, int i) {
            bf.a(drawable, i);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, ColorStateList colorStateList) {
            bf.a(drawable, colorStateList);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void a(Drawable drawable, PorterDuff.Mode mode) {
            bf.a(drawable, mode);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.e, android.support.v4.graphics.drawable.DrawableCompat.c, android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public Drawable c(Drawable drawable) {
            return bf.a(drawable);
        }
    }

    static class g extends f {
        g() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.f, android.support.v4.graphics.drawable.DrawableCompat.e, android.support.v4.graphics.drawable.DrawableCompat.c, android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public Drawable c(Drawable drawable) {
            return az.a(drawable);
        }
    }

    static class h extends g {
        h() {
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.d, android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public void b(Drawable drawable, int i) {
            ba.a(drawable, i);
        }

        @Override // android.support.v4.graphics.drawable.DrawableCompat.d, android.support.v4.graphics.drawable.DrawableCompat.a, android.support.v4.graphics.drawable.DrawableCompat.b
        public int d(Drawable drawable) {
            return ba.a(drawable);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            a = new h();
            return;
        }
        if (i >= 22) {
            a = new g();
            return;
        }
        if (i >= 21) {
            a = new f();
            return;
        }
        if (i >= 19) {
            a = new e();
            return;
        }
        if (i >= 17) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static void jumpToCurrentState(Drawable drawable) {
        a.a(drawable);
    }

    public static void setAutoMirrored(Drawable drawable, boolean z) {
        a.a(drawable, z);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return a.b(drawable);
    }

    public static void setHotspot(Drawable drawable, float f2, float f3) {
        a.a(drawable, f2, f3);
    }

    public static void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        a.a(drawable, i, i2, i3, i4);
    }

    public static void setTint(Drawable drawable, int i) {
        a.a(drawable, i);
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        a.a(drawable, colorStateList);
    }

    public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
        a.a(drawable, mode);
    }

    public static Drawable wrap(Drawable drawable) {
        return a.c(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(Drawable drawable) {
        if (drawable instanceof DrawableWrapper) {
            return (T) ((DrawableWrapper) drawable).getWrappedDrawable();
        }
        return drawable;
    }

    public static void setLayoutDirection(Drawable drawable, int i) {
        a.b(drawable, i);
    }

    public static int getLayoutDirection(Drawable drawable) {
        return a.d(drawable);
    }
}
