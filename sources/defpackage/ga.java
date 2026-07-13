package defpackage;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.graphics.drawable.DrawableUtils;
import android.support.v7.internal.widget.TintInfo;
import android.support.v7.internal.widget.TintManager;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ga {
    private final View a;
    private final TintManager b;
    private TintInfo c;
    private TintInfo d;

    public ga(View view, TintManager tintManager) {
        this.a = view;
        this.b = tintManager;
    }

    public void a(AttributeSet attributeSet, int i) {
        ColorStateList tintList;
        TypedArray typedArrayObtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, R.styleable.ViewBackgroundHelper, i, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_android_background) && (tintList = this.b.getTintList(typedArrayObtainStyledAttributes.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1))) != null) {
                b(tintList);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.a, typedArrayObtainStyledAttributes.getColorStateList(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.a, DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void a(int i) {
        b(this.b != null ? this.b.getTintList(i) : null);
    }

    public void a(Drawable drawable) {
        b(null);
    }

    public void a(ColorStateList colorStateList) {
        if (this.d == null) {
            this.d = new TintInfo();
        }
        this.d.mTintList = colorStateList;
        this.d.mHasTintList = true;
        c();
    }

    public ColorStateList a() {
        if (this.d != null) {
            return this.d.mTintList;
        }
        return null;
    }

    public void a(PorterDuff.Mode mode) {
        if (this.d == null) {
            this.d = new TintInfo();
        }
        this.d.mTintMode = mode;
        this.d.mHasTintMode = true;
        c();
    }

    public PorterDuff.Mode b() {
        if (this.d != null) {
            return this.d.mTintMode;
        }
        return null;
    }

    public void c() {
        if (this.a.getBackground() != null) {
            if (this.d != null) {
                TintManager.tintViewBackground(this.a, this.d);
            } else if (this.c != null) {
                TintManager.tintViewBackground(this.a, this.c);
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.c == null) {
                this.c = new TintInfo();
            }
            this.c.mTintList = colorStateList;
            this.c.mHasTintList = true;
        } else {
            this.c = null;
        }
        c();
    }
}
