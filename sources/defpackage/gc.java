package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v7.internal.text.AllCapsTransformationMethod;
import android.support.v7.internal.widget.ThemeUtils;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class gc {
    private static final int[] a = {R.attr.textAppearance};
    private static final int[] b = {android.support.v7.appcompat.R.attr.textAllCaps};
    private final TextView c;

    public gc(TextView textView) {
        this.c = textView;
    }

    public void a(AttributeSet attributeSet, int i) {
        int themeAttrColor;
        Context context = this.c.getContext();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a, i, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId != -1) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, android.support.v7.appcompat.R.styleable.TextAppearance);
            if (typedArrayObtainStyledAttributes2.hasValue(android.support.v7.appcompat.R.styleable.TextAppearance_textAllCaps)) {
                a(typedArrayObtainStyledAttributes2.getBoolean(android.support.v7.appcompat.R.styleable.TextAppearance_textAllCaps, false));
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, b, i, 0);
        if (typedArrayObtainStyledAttributes3.hasValue(0)) {
            a(typedArrayObtainStyledAttributes3.getBoolean(0, false));
        }
        typedArrayObtainStyledAttributes3.recycle();
        ColorStateList textColors = this.c.getTextColors();
        if (textColors != null && !textColors.isStateful()) {
            if (Build.VERSION.SDK_INT < 21) {
                themeAttrColor = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.textColorSecondary);
            } else {
                themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.textColorSecondary);
            }
            this.c.setTextColor(ThemeUtils.createDisabledStateList(textColors.getDefaultColor(), themeAttrColor));
        }
    }

    public void a(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, b);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            a(typedArrayObtainStyledAttributes.getBoolean(0, false));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void a(boolean z) {
        this.c.setTransformationMethod(z ? new AllCapsTransformationMethod(this.c.getContext()) : null);
    }
}
