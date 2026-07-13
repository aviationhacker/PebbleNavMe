package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.TextView;
import defpackage.fk;
import defpackage.fl;

/* JADX INFO: loaded from: classes.dex */
public class TextViewCompat {
    static final d a;

    interface d {
        void a(@NonNull TextView textView, int i, int i2, int i3, int i4);

        void a(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4);

        void b(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4);
    }

    private TextViewCompat() {
    }

    static class a implements d {
        a() {
        }

        @Override // android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.d
        public void b(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, int i, int i2, int i3, int i4) {
            textView.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            fk.a(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void b(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            fk.b(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, int i, int i2, int i3, int i4) {
            fk.a(textView, i, i2, i3, i4);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.widget.TextViewCompat.b, android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            fl.a(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.b, android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void b(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
            fl.b(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.TextViewCompat.b, android.support.v4.widget.TextViewCompat.a, android.support.v4.widget.TextViewCompat.d
        public void a(@NonNull TextView textView, int i, int i2, int i3, int i4) {
            fl.a(textView, i, i2, i3, i4);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            a = new c();
        } else if (i >= 17) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        a.a(textView, drawable, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        a.b(textView, drawable, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int i, int i2, int i3, int i4) {
        a.a(textView, i, i2, i3, i4);
    }
}
