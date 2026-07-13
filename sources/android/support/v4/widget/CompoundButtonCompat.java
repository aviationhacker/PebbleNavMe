package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.CompoundButton;
import defpackage.et;
import defpackage.eu;
import defpackage.ev;

/* JADX INFO: loaded from: classes.dex */
public final class CompoundButtonCompat {
    private static final c a;

    interface c {
        Drawable a(CompoundButton compoundButton);

        void a(CompoundButton compoundButton, ColorStateList colorStateList);

        void a(CompoundButton compoundButton, PorterDuff.Mode mode);

        ColorStateList b(CompoundButton compoundButton);

        PorterDuff.Mode c(CompoundButton compoundButton);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            a = new a();
        } else if (i >= 21) {
            a = new d();
        } else {
            a = new b();
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.c
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            eu.a(compoundButton, colorStateList);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.c
        public ColorStateList b(CompoundButton compoundButton) {
            return eu.a(compoundButton);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.c
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            eu.a(compoundButton, mode);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.c
        public PorterDuff.Mode c(CompoundButton compoundButton) {
            return eu.b(compoundButton);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.c
        public Drawable a(CompoundButton compoundButton) {
            return eu.c(compoundButton);
        }
    }

    static class d extends b {
        d() {
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.b, android.support.v4.widget.CompoundButtonCompat.c
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            ev.a(compoundButton, colorStateList);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.b, android.support.v4.widget.CompoundButtonCompat.c
        public ColorStateList b(CompoundButton compoundButton) {
            return ev.a(compoundButton);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.b, android.support.v4.widget.CompoundButtonCompat.c
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            ev.a(compoundButton, mode);
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.b, android.support.v4.widget.CompoundButtonCompat.c
        public PorterDuff.Mode c(CompoundButton compoundButton) {
            return ev.b(compoundButton);
        }
    }

    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.CompoundButtonCompat.b, android.support.v4.widget.CompoundButtonCompat.c
        public Drawable a(CompoundButton compoundButton) {
            return et.a(compoundButton);
        }
    }

    private CompoundButtonCompat() {
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        a.a(compoundButton, colorStateList);
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        return a.b(compoundButton);
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        a.a(compoundButton, mode);
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        return a.c(compoundButton);
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        return a.a(compoundButton);
    }
}
