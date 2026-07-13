package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class dj {
    public static void a(View view, String str) {
        view.setTransitionName(str);
    }

    public static String a(View view) {
        return view.getTransitionName();
    }

    public static void b(View view) {
        view.requestApplyInsets();
    }

    public static void a(View view, float f) {
        view.setElevation(f);
    }

    public static float c(View view) {
        return view.getElevation();
    }

    public static void b(View view, float f) {
        view.setTranslationZ(f);
    }

    public static float d(View view) {
        return view.getTranslationZ();
    }

    public static void a(View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: dj.1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                return ((dx) onApplyWindowInsetsListener.onApplyWindowInsets(view2, new dx(windowInsets))).a();
            }
        });
    }

    public static ColorStateList e(View view) {
        return view.getBackgroundTintList();
    }

    public static void a(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static PorterDuff.Mode f(View view) {
        return view.getBackgroundTintMode();
    }

    public static void a(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsetsA;
        WindowInsets windowInsetsOnApplyWindowInsets;
        if ((windowInsetsCompat instanceof dx) && (windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets((windowInsetsA = ((dx) windowInsetsCompat).a()))) != windowInsetsA) {
            return new dx(windowInsetsOnApplyWindowInsets);
        }
        return windowInsetsCompat;
    }

    public static WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsetsA;
        WindowInsets windowInsetsDispatchApplyWindowInsets;
        if ((windowInsetsCompat instanceof dx) && (windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets((windowInsetsA = ((dx) windowInsetsCompat).a()))) != windowInsetsA) {
            return new dx(windowInsetsDispatchApplyWindowInsets);
        }
        return windowInsetsCompat;
    }

    public static void a(View view, boolean z) {
        view.setNestedScrollingEnabled(z);
    }

    public static boolean g(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static boolean a(View view, int i) {
        return view.startNestedScroll(i);
    }

    public static void h(View view) {
        view.stopNestedScroll();
    }

    public static boolean i(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        return view.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    public static boolean a(View view, int i, int i2, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    public static boolean a(View view, float f, float f2, boolean z) {
        return view.dispatchNestedFling(f, f2, z);
    }

    public static boolean a(View view, float f, float f2) {
        return view.dispatchNestedPreFling(f, f2);
    }

    public static float j(View view) {
        return view.getZ();
    }
}
