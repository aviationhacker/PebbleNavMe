package defpackage;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.CompoundButtonCompat;
import android.support.v7.appcompat.R;
import android.support.v7.graphics.drawable.DrawableUtils;
import android.support.v7.internal.widget.TintManager;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
public class gb {
    private final CompoundButton a;
    private final TintManager b;
    private ColorStateList c = null;
    private PorterDuff.Mode d = null;
    private boolean e = false;
    private boolean f = false;
    private boolean g;

    public gb(CompoundButton compoundButton, TintManager tintManager) {
        this.a = compoundButton;
        this.b = tintManager;
    }

    public void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, R.styleable.CompoundButton, i, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.CompoundButton_android_button) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CompoundButton_android_button, 0)) != 0) {
                this.a.setButtonDrawable(this.b.getDrawable(resourceId));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTint)) {
                CompoundButtonCompat.setButtonTintList(this.a, typedArrayObtainStyledAttributes.getColorStateList(R.styleable.CompoundButton_buttonTint));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
                CompoundButtonCompat.setButtonTintMode(this.a, DrawableUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void a(ColorStateList colorStateList) {
        this.c = colorStateList;
        this.e = true;
        d();
    }

    public ColorStateList a() {
        return this.c;
    }

    public void a(@Nullable PorterDuff.Mode mode) {
        this.d = mode;
        this.f = true;
        d();
    }

    public PorterDuff.Mode b() {
        return this.d;
    }

    public void c() {
        if (this.g) {
            this.g = false;
        } else {
            this.g = true;
            d();
        }
    }

    void d() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.a);
        if (buttonDrawable != null) {
            if (this.e || this.f) {
                Drawable drawableMutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.e) {
                    DrawableCompat.setTintList(drawableMutate, this.c);
                }
                if (this.f) {
                    DrawableCompat.setTintMode(drawableMutate, this.d);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(drawableMutate);
            }
        }
    }

    public int a(int i) {
        Drawable buttonDrawable;
        if (Build.VERSION.SDK_INT < 17 && (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.a)) != null) {
            return i + buttonDrawable.getIntrinsicWidth();
        }
        return i;
    }
}
