package android.support.v7.internal.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.ContextThemeWrapper;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatViewInflater {
    static final Class<?>[] a = {Context.class, AttributeSet.class};
    private static final Map<String, Constructor<? extends View>> b = new ArrayMap();
    private final Object[] c = new Object[2];

    public final View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z, boolean z2, boolean z3) {
        Context context2;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = a(context2, attributeSet, z2, z3);
        }
        switch (str) {
            case "EditText":
                return new AppCompatEditText(context2, attributeSet);
            case "Spinner":
                return new AppCompatSpinner(context2, attributeSet);
            case "CheckBox":
                return new AppCompatCheckBox(context2, attributeSet);
            case "RadioButton":
                return new AppCompatRadioButton(context2, attributeSet);
            case "CheckedTextView":
                return new AppCompatCheckedTextView(context2, attributeSet);
            case "AutoCompleteTextView":
                return new AppCompatAutoCompleteTextView(context2, attributeSet);
            case "MultiAutoCompleteTextView":
                return new AppCompatMultiAutoCompleteTextView(context2, attributeSet);
            case "RatingBar":
                return new AppCompatRatingBar(context2, attributeSet);
            case "Button":
                return new AppCompatButton(context2, attributeSet);
            case "TextView":
                return new AppCompatTextView(context2, attributeSet);
            default:
                if (context != context2) {
                    return a(context2, str, attributeSet);
                }
                return null;
        }
    }

    private View a(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.c[0] = context;
            this.c[1] = attributeSet;
            return -1 == str.indexOf(46) ? a(context, str, "android.widget.") : a(context, str, (String) null);
        } catch (Exception e) {
            return null;
        } finally {
            this.c[0] = null;
            this.c[1] = null;
        }
    }

    private View a(Context context, String str, String str2) {
        Constructor<? extends View> constructor = b.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(a);
                b.put(str, constructor);
            } catch (Exception e) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.c);
    }

    private static Context a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.View_theme, 0)) != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        int i = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        if (i == 0) {
            return context;
        }
        if (!(context instanceof ContextThemeWrapper) || ((ContextThemeWrapper) context).getThemeResId() != i) {
            return new ContextThemeWrapper(context, i);
        }
        return context;
    }
}
