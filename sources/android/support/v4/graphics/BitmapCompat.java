package android.support.v4.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import defpackage.aw;
import defpackage.ax;
import defpackage.ay;

/* JADX INFO: loaded from: classes.dex */
public class BitmapCompat {
    static final b a;

    interface b {
        void a(Bitmap bitmap, boolean z);

        boolean a(Bitmap bitmap);

        int b(Bitmap bitmap);
    }

    static class a implements b {
        a() {
        }

        @Override // android.support.v4.graphics.BitmapCompat.b
        public boolean a(Bitmap bitmap) {
            return false;
        }

        @Override // android.support.v4.graphics.BitmapCompat.b
        public void a(Bitmap bitmap, boolean z) {
        }

        @Override // android.support.v4.graphics.BitmapCompat.b
        public int b(Bitmap bitmap) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    static class c extends a {
        c() {
        }

        @Override // android.support.v4.graphics.BitmapCompat.a, android.support.v4.graphics.BitmapCompat.b
        public int b(Bitmap bitmap) {
            return aw.a(bitmap);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.graphics.BitmapCompat.a, android.support.v4.graphics.BitmapCompat.b
        public boolean a(Bitmap bitmap) {
            return ax.a(bitmap);
        }

        @Override // android.support.v4.graphics.BitmapCompat.a, android.support.v4.graphics.BitmapCompat.b
        public void a(Bitmap bitmap, boolean z) {
            ax.a(bitmap, z);
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.graphics.BitmapCompat.c, android.support.v4.graphics.BitmapCompat.a, android.support.v4.graphics.BitmapCompat.b
        public int b(Bitmap bitmap) {
            return ay.a(bitmap);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            a = new e();
            return;
        }
        if (i >= 18) {
            a = new d();
        } else if (i >= 12) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static boolean hasMipMap(Bitmap bitmap) {
        return a.a(bitmap);
    }

    public static void setHasMipMap(Bitmap bitmap, boolean z) {
        a.a(bitmap, z);
    }

    public static int getAllocationByteCount(Bitmap bitmap) {
        return a.b(bitmap);
    }
}
