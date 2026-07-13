package defpackage;

import android.graphics.Rect;
import android.support.v4.view.WindowInsetsCompat;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
class dx extends WindowInsetsCompat {
    private final WindowInsets a;

    dx(WindowInsets windowInsets) {
        this.a = windowInsets;
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getSystemWindowInsetLeft() {
        return this.a.getSystemWindowInsetLeft();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getSystemWindowInsetTop() {
        return this.a.getSystemWindowInsetTop();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getSystemWindowInsetRight() {
        return this.a.getSystemWindowInsetRight();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getSystemWindowInsetBottom() {
        return this.a.getSystemWindowInsetBottom();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public boolean hasSystemWindowInsets() {
        return this.a.hasSystemWindowInsets();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public boolean hasInsets() {
        return this.a.hasInsets();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public boolean isConsumed() {
        return this.a.isConsumed();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public boolean isRound() {
        return this.a.isRound();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return new dx(this.a.consumeSystemWindowInsets());
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        return new dx(this.a.replaceSystemWindowInsets(i, i2, i3, i4));
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new dx(this.a.replaceSystemWindowInsets(rect));
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getStableInsetTop() {
        return this.a.getStableInsetTop();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getStableInsetLeft() {
        return this.a.getStableInsetLeft();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getStableInsetRight() {
        return this.a.getStableInsetRight();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public int getStableInsetBottom() {
        return this.a.getStableInsetBottom();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public boolean hasStableInsets() {
        return this.a.hasStableInsets();
    }

    @Override // android.support.v4.view.WindowInsetsCompat
    public WindowInsetsCompat consumeStableInsets() {
        return new dx(this.a.consumeStableInsets());
    }

    WindowInsets a() {
        return this.a;
    }
}
