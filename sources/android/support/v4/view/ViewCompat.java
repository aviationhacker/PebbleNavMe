package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import defpackage.da;
import defpackage.db;
import defpackage.dc;
import defpackage.dd;
import defpackage.de;
import defpackage.df;
import defpackage.dg;
import defpackage.dh;
import defpackage.di;
import defpackage.dj;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    static final k a;

    interface k {
        float A(View view);

        float B(View view);

        float C(View view);

        float D(View view);

        int E(View view);

        int F(View view);

        ViewPropertyAnimatorCompat G(View view);

        float H(View view);

        float I(View view);

        String J(View view);

        int K(View view);

        void L(View view);

        float M(View view);

        float N(View view);

        Rect O(View view);

        boolean P(View view);

        void Q(View view);

        boolean R(View view);

        boolean S(View view);

        ColorStateList T(View view);

        PorterDuff.Mode U(View view);

        void V(View view);

        boolean W(View view);

        boolean X(View view);

        float Y(View view);

        boolean Z(View view);

        int a(int i, int i2);

        int a(int i, int i2, int i3);

        int a(View view);

        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat);

        void a(View view, float f);

        void a(View view, int i, int i2, int i3, int i4);

        void a(View view, int i, Paint paint);

        void a(View view, ColorStateList colorStateList);

        void a(View view, Paint paint);

        void a(View view, PorterDuff.Mode mode);

        void a(View view, Rect rect);

        void a(View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat);

        void a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener);

        void a(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        void a(View view, AccessibilityEvent accessibilityEvent);

        void a(View view, Runnable runnable);

        void a(View view, Runnable runnable, long j);

        void a(View view, String str);

        void a(View view, boolean z);

        void a(ViewGroup viewGroup, boolean z);

        boolean a(View view, float f, float f2);

        boolean a(View view, float f, float f2, boolean z);

        boolean a(View view, int i);

        boolean a(View view, int i, int i2, int i3, int i4, int[] iArr);

        boolean a(View view, int i, int i2, int[] iArr, int[] iArr2);

        boolean a(View view, int i, Bundle bundle);

        WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat);

        void b(View view, float f);

        void b(View view, int i, int i2, int i3, int i4);

        void b(View view, AccessibilityEvent accessibilityEvent);

        void b(View view, boolean z);

        boolean b(View view);

        boolean b(View view, int i);

        void c(View view, float f);

        void c(View view, int i);

        void c(View view, boolean z);

        boolean c(View view);

        void d(View view);

        void d(View view, float f);

        void d(View view, int i);

        void d(View view, boolean z);

        int e(View view);

        void e(View view, float f);

        void e(View view, int i);

        void e(View view, boolean z);

        AccessibilityNodeProviderCompat f(View view);

        void f(View view, float f);

        void f(View view, int i);

        float g(View view);

        void g(View view, float f);

        void g(View view, int i);

        int h(View view);

        void h(View view, float f);

        boolean h(View view, int i);

        int i(View view);

        void i(View view, float f);

        int j(View view);

        void j(View view, float f);

        ViewParent k(View view);

        void k(View view, float f);

        void l(View view, float f);

        boolean l(View view);

        int m(View view);

        void m(View view, float f);

        int n(View view);

        int o(View view);

        int p(View view);

        int q(View view);

        int r(View view);

        void s(View view);

        void t(View view);

        boolean u(View view);

        float v(View view);

        float w(View view);

        float x(View view);

        float y(View view);

        float z(View view);
    }

    static class a implements k {
        WeakHashMap<View, ViewPropertyAnimatorCompat> a = null;
        private Method b;
        private Method c;
        private boolean d;

        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i) {
            return (view instanceof ScrollingView) && a((ScrollingView) view, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean b(View view, int i) {
            return (view instanceof ScrollingView) && b((ScrollingView) view, i);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int a(View view) {
            return 2;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void c(View view, int i) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean b(View view) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void b(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean c(View view) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, boolean z) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void d(View view) {
            view.invalidate();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, Runnable runnable) {
            view.postDelayed(runnable, a());
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, a() + j);
        }

        long a() {
            return 10L;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int e(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void d(View view, int i) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public AccessibilityNodeProviderCompat f(View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float g(View view) {
            return 1.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, int i, Paint paint) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int h(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int i(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void e(View view, int i) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, Paint paint) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int j(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void f(View view, int i) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public ViewParent k(View view) {
            return view.getParent();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean l(View view) {
            Drawable background = view.getBackground();
            return background != null && background.getOpacity() == -1;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int a(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int m(View view) {
            return view.getMeasuredWidth();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int n(View view) {
            return view.getMeasuredHeight();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int o(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int p(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void g(View view, int i) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int q(View view) {
            return view.getPaddingLeft();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int r(View view) {
            return view.getPaddingRight();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void b(View view, int i, int i2, int i3, int i4) {
            view.setPadding(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void s(View view) {
            if (!this.d) {
                b();
            }
            if (this.b != null) {
                try {
                    this.b.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d("ViewCompat", "Error calling dispatchStartTemporaryDetach", e);
                    return;
                }
            }
            view.onStartTemporaryDetach();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void t(View view) {
            if (!this.d) {
                b();
            }
            if (this.c != null) {
                try {
                    this.c.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d("ViewCompat", "Error calling dispatchFinishTemporaryDetach", e);
                    return;
                }
            }
            view.onFinishTemporaryDetach();
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean u(View view) {
            return true;
        }

        private void b() {
            try {
                this.b = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
                this.c = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
            } catch (NoSuchMethodException e) {
                Log.e("ViewCompat", "Couldn't find method", e);
            }
            this.d = true;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float v(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float w(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float x(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float y(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float z(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float A(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float B(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float C(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float D(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int E(View view) {
            return da.d(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int F(View view) {
            return da.e(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public ViewPropertyAnimatorCompat G(View view) {
            return new ViewPropertyAnimatorCompat(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void b(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void c(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void d(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void e(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void f(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void g(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void h(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void i(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void j(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void k(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float H(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float I(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, String str) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public String J(View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int K(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void L(View view) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void l(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float M(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void m(View view, float f) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float N(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, Rect rect) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public Rect O(View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(ViewGroup viewGroup, boolean z) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean P(View view) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void b(View view, boolean z) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void Q(View view) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void c(View view, boolean z) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void d(View view, boolean z) {
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean R(View view) {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public void e(View view, boolean z) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).setNestedScrollingEnabled(z);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean S(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).isNestedScrollingEnabled();
            }
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public ColorStateList T(View view) {
            return da.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, ColorStateList colorStateList) {
            da.a(view, colorStateList);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public void a(View view, PorterDuff.Mode mode) {
            da.a(view, mode);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public PorterDuff.Mode U(View view) {
            return da.b(view);
        }

        private boolean a(ScrollingView scrollingView, int i) {
            int iComputeHorizontalScrollOffset = scrollingView.computeHorizontalScrollOffset();
            int iComputeHorizontalScrollRange = scrollingView.computeHorizontalScrollRange() - scrollingView.computeHorizontalScrollExtent();
            if (iComputeHorizontalScrollRange == 0) {
                return false;
            }
            return i < 0 ? iComputeHorizontalScrollOffset > 0 : iComputeHorizontalScrollOffset < iComputeHorizontalScrollRange + (-1);
        }

        private boolean b(ScrollingView scrollingView, int i) {
            int iComputeVerticalScrollOffset = scrollingView.computeVerticalScrollOffset();
            int iComputeVerticalScrollRange = scrollingView.computeVerticalScrollRange() - scrollingView.computeVerticalScrollExtent();
            if (iComputeVerticalScrollRange == 0) {
                return false;
            }
            return i < 0 ? iComputeVerticalScrollOffset > 0 : iComputeVerticalScrollOffset < iComputeVerticalScrollRange + (-1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean h(View view, int i) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).startNestedScroll(i);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public void V(View view) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).stopNestedScroll();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean W(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).hasNestedScrollingParent();
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, int i2, int i3, int i4, int[] iArr) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedScroll(i, i2, i3, i4, iArr);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, int i2, int[] iArr, int[] iArr2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreScroll(i, i2, iArr, iArr2);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, float f, float f2, boolean z) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedFling(f, f2, z);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewCompat.k
        public boolean a(View view, float f, float f2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreFling(f, f2);
            }
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean X(View view) {
            return da.c(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public int a(int i, int i2) {
            return i | i2;
        }

        @Override // android.support.v4.view.ViewCompat.k
        public float Y(View view) {
            return N(view) + M(view);
        }

        @Override // android.support.v4.view.ViewCompat.k
        public boolean Z(View view) {
            return da.f(view);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean l(View view) {
            return db.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(ViewGroup viewGroup, boolean z) {
            db.a(viewGroup, z);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int a(View view) {
            return dc.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void c(View view, int i) {
            dc.a(view, i);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.ViewCompat.a
        long a() {
            return dd.a();
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float g(View view) {
            return dd.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, int i, Paint paint) {
            dd.a(view, i, paint);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int h(View view) {
            return dd.b(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, Paint paint) {
            a(view, h(view), paint);
            view.invalidate();
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int a(int i, int i2, int i3) {
            return dd.a(i, i2, i3);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int m(View view) {
            return dd.c(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int n(View view) {
            return dd.d(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int o(View view) {
            return dd.e(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float v(View view) {
            return dd.f(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float w(View view) {
            return dd.g(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void b(View view, float f) {
            dd.a(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void c(View view, float f) {
            dd.b(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void d(View view, float f) {
            dd.c(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void i(View view, float f) {
            dd.d(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void j(View view, float f) {
            dd.e(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, float f) {
            dd.f(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void e(View view, float f) {
            dd.g(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void f(View view, float f) {
            dd.h(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void g(View view, float f) {
            dd.i(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void h(View view, float f) {
            dd.j(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void k(View view, float f) {
            dd.k(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float x(View view) {
            return dd.h(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float y(View view) {
            return dd.i(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float z(View view) {
            return dd.j(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float A(View view) {
            return dd.k(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float B(View view) {
            return dd.l(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float C(View view) {
            return dd.m(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float D(View view) {
            return dd.n(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float H(View view) {
            return dd.o(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float I(View view) {
            return dd.p(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void Q(View view) {
            dd.q(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void c(View view, boolean z) {
            dd.a(view, z);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void d(View view, boolean z) {
            dd.b(view, z);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int a(int i, int i2) {
            return dd.a(i, i2);
        }
    }

    static class e extends d {
        static Field b;
        static boolean c = false;

        e() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i) {
            return de.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean b(View view, int i) {
            return de.b(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, AccessibilityEvent accessibilityEvent) {
            de.a(view, accessibilityEvent);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            de.b(view, accessibilityEvent);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            de.b(view, accessibilityNodeInfoCompat.getInfo());
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
            de.a(view, accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.a());
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean b(View view) {
            if (c) {
                return false;
            }
            if (b == null) {
                try {
                    b = View.class.getDeclaredField("mAccessibilityDelegate");
                    b.setAccessible(true);
                } catch (Throwable th) {
                    c = true;
                    return false;
                }
            }
            try {
                return b.get(view) != null;
            } catch (Throwable th2) {
                c = true;
                return false;
            }
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public ViewPropertyAnimatorCompat G(View view) {
            if (this.a == null) {
                this.a = new WeakHashMap<>();
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.a.get(view);
            if (viewPropertyAnimatorCompat == null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
                this.a.put(view, viewPropertyAnimatorCompat2);
                return viewPropertyAnimatorCompat2;
            }
            return viewPropertyAnimatorCompat;
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void b(View view, boolean z) {
            de.a(view, z);
        }
    }

    static class f extends e {
        f() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean c(View view) {
            return df.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, boolean z) {
            df.a(view, z);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void d(View view) {
            df.b(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, int i, int i2, int i3, int i4) {
            df.a(view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, Runnable runnable) {
            df.a(view, runnable);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, Runnable runnable, long j) {
            df.a(view, runnable, j);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int e(View view) {
            return df.c(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void d(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            df.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, Bundle bundle) {
            return df.a(view, i, bundle);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public AccessibilityNodeProviderCompat f(View view) {
            Object objD = df.d(view);
            if (objD != null) {
                return new AccessibilityNodeProviderCompat(objD);
            }
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public ViewParent k(View view) {
            return df.e(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int E(View view) {
            return df.f(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int F(View view) {
            return df.g(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void L(View view) {
            df.h(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean P(View view) {
            return df.i(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean u(View view) {
            return df.j(view);
        }
    }

    static class g extends f {
        g() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int i(View view) {
            return dg.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void e(View view, int i) {
            dg.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.d, android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, Paint paint) {
            dg.a(view, paint);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int j(View view) {
            return dg.b(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void f(View view, int i) {
            dg.b(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int q(View view) {
            return dg.c(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int r(View view) {
            return dg.d(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void b(View view, int i, int i2, int i3, int i4) {
            dg.a(view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int K(View view) {
            return dg.e(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean R(View view) {
            return dg.f(view);
        }
    }

    static class h extends g {
        h() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, Rect rect) {
            dh.a(view, rect);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public Rect O(View view) {
            return dh.a(view);
        }
    }

    static class i extends h {
        i() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public int p(View view) {
            return di.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void g(View view, int i) {
            di.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.f, android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void d(View view, int i) {
            df.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean X(View view) {
            return di.b(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean Z(View view) {
            return di.c(view);
        }
    }

    static class j extends i {
        j() {
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, String str) {
            dj.a(view, str);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public String J(View view) {
            return dj.a(view);
        }

        @Override // android.support.v4.view.ViewCompat.f, android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void L(View view) {
            dj.b(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void l(View view, float f) {
            dj.a(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float M(View view) {
            return dj.c(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void m(View view, float f) {
            dj.b(view, f);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float N(View view) {
            return dj.d(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            dj.a(view, onApplyWindowInsetsListener);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void e(View view, boolean z) {
            dj.a(view, z);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean S(View view) {
            return dj.g(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean h(View view, int i) {
            return dj.a(view, i);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void V(View view) {
            dj.h(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean W(View view) {
            return dj.i(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return dj.a(view, i, i2, i3, i4, iArr);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return dj.a(view, i, i2, iArr, iArr2);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, float f, float f2, boolean z) {
            return dj.a(view, f, f2, z);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public boolean a(View view, float f, float f2) {
            return dj.a(view, f, f2);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public ColorStateList T(View view) {
            return dj.e(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, ColorStateList colorStateList) {
            dj.a(view, colorStateList);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public void a(View view, PorterDuff.Mode mode) {
            dj.a(view, mode);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public PorterDuff.Mode U(View view) {
            return dj.f(view);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            return dj.a(view, windowInsetsCompat);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat) {
            return dj.b(view, windowInsetsCompat);
        }

        @Override // android.support.v4.view.ViewCompat.a, android.support.v4.view.ViewCompat.k
        public float Y(View view) {
            return dj.j(view);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            a = new j();
            return;
        }
        if (i2 >= 19) {
            a = new i();
            return;
        }
        if (i2 >= 17) {
            a = new g();
            return;
        }
        if (i2 >= 16) {
            a = new f();
            return;
        }
        if (i2 >= 14) {
            a = new e();
            return;
        }
        if (i2 >= 11) {
            a = new d();
            return;
        }
        if (i2 >= 9) {
            a = new c();
        } else if (i2 >= 7) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static boolean canScrollHorizontally(View view, int i2) {
        return a.a(view, i2);
    }

    public static boolean canScrollVertically(View view, int i2) {
        return a.b(view, i2);
    }

    public static int getOverScrollMode(View view) {
        return a.a(view);
    }

    public static void setOverScrollMode(View view, int i2) {
        a.c(view, i2);
    }

    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        a.a(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        a.b(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        a.a(view, accessibilityNodeInfoCompat);
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        a.a(view, accessibilityDelegateCompat);
    }

    public static boolean hasAccessibilityDelegate(View view) {
        return a.b(view);
    }

    public static boolean hasTransientState(View view) {
        return a.c(view);
    }

    public static void setHasTransientState(View view, boolean z) {
        a.a(view, z);
    }

    public static void postInvalidateOnAnimation(View view) {
        a.d(view);
    }

    public static void postInvalidateOnAnimation(View view, int i2, int i3, int i4, int i5) {
        a.a(view, i2, i3, i4, i5);
    }

    public static void postOnAnimation(View view, Runnable runnable) {
        a.a(view, runnable);
    }

    public static void postOnAnimationDelayed(View view, Runnable runnable, long j2) {
        a.a(view, runnable, j2);
    }

    public static int getImportantForAccessibility(View view) {
        return a.e(view);
    }

    public static void setImportantForAccessibility(View view, int i2) {
        a.d(view, i2);
    }

    public static boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        return a.a(view, i2, bundle);
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return a.f(view);
    }

    public static float getAlpha(View view) {
        return a.g(view);
    }

    public static void setLayerType(View view, int i2, Paint paint) {
        a.a(view, i2, paint);
    }

    public static int getLayerType(View view) {
        return a.h(view);
    }

    public static int getLabelFor(View view) {
        return a.i(view);
    }

    public static void setLabelFor(View view, @IdRes int i2) {
        a.e(view, i2);
    }

    public static void setLayerPaint(View view, Paint paint) {
        a.a(view, paint);
    }

    public static int getLayoutDirection(View view) {
        return a.j(view);
    }

    public static void setLayoutDirection(View view, int i2) {
        a.f(view, i2);
    }

    public static ViewParent getParentForAccessibility(View view) {
        return a.k(view);
    }

    public static boolean isOpaque(View view) {
        return a.l(view);
    }

    public static int resolveSizeAndState(int i2, int i3, int i4) {
        return a.a(i2, i3, i4);
    }

    public static int getMeasuredWidthAndState(View view) {
        return a.m(view);
    }

    public static int getMeasuredHeightAndState(View view) {
        return a.n(view);
    }

    public static int getMeasuredState(View view) {
        return a.o(view);
    }

    public static int combineMeasuredStates(int i2, int i3) {
        return a.a(i2, i3);
    }

    public static int getAccessibilityLiveRegion(View view) {
        return a.p(view);
    }

    public static void setAccessibilityLiveRegion(View view, int i2) {
        a.g(view, i2);
    }

    public static int getPaddingStart(View view) {
        return a.q(view);
    }

    public static int getPaddingEnd(View view) {
        return a.r(view);
    }

    public static void setPaddingRelative(View view, int i2, int i3, int i4, int i5) {
        a.b(view, i2, i3, i4, i5);
    }

    public static void dispatchStartTemporaryDetach(View view) {
        a.s(view);
    }

    public static void dispatchFinishTemporaryDetach(View view) {
        a.t(view);
    }

    public static float getTranslationX(View view) {
        return a.v(view);
    }

    public static float getTranslationY(View view) {
        return a.w(view);
    }

    public static int getMinimumWidth(View view) {
        return a.E(view);
    }

    public static int getMinimumHeight(View view) {
        return a.F(view);
    }

    public static ViewPropertyAnimatorCompat animate(View view) {
        return a.G(view);
    }

    public static void setTranslationX(View view, float f2) {
        a.b(view, f2);
    }

    public static void setTranslationY(View view, float f2) {
        a.c(view, f2);
    }

    public static void setAlpha(View view, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        a.d(view, f2);
    }

    public static void setX(View view, float f2) {
        a.i(view, f2);
    }

    public static void setY(View view, float f2) {
        a.j(view, f2);
    }

    public static void setRotation(View view, float f2) {
        a.a(view, f2);
    }

    public static void setRotationX(View view, float f2) {
        a.e(view, f2);
    }

    public static void setRotationY(View view, float f2) {
        a.f(view, f2);
    }

    public static void setScaleX(View view, float f2) {
        a.g(view, f2);
    }

    public static void setScaleY(View view, float f2) {
        a.h(view, f2);
    }

    public static float getPivotX(View view) {
        return a.H(view);
    }

    public static void setPivotX(View view, float f2) {
        a.k(view, f2);
    }

    public static float getPivotY(View view) {
        return a.I(view);
    }

    public static void setPivotY(View view, float f2) {
        a.k(view, f2);
    }

    public static float getRotation(View view) {
        return a.z(view);
    }

    public static float getRotationX(View view) {
        return a.A(view);
    }

    public static float getRotationY(View view) {
        return a.B(view);
    }

    public static float getScaleX(View view) {
        return a.C(view);
    }

    public static float getScaleY(View view) {
        return a.D(view);
    }

    public static float getX(View view) {
        return a.x(view);
    }

    public static float getY(View view) {
        return a.y(view);
    }

    public static void setElevation(View view, float f2) {
        a.l(view, f2);
    }

    public static float getElevation(View view) {
        return a.M(view);
    }

    public static void setTranslationZ(View view, float f2) {
        a.m(view, f2);
    }

    public static float getTranslationZ(View view) {
        return a.N(view);
    }

    public static void setTransitionName(View view, String str) {
        a.a(view, str);
    }

    public static String getTransitionName(View view) {
        return a.J(view);
    }

    public static int getWindowSystemUiVisibility(View view) {
        return a.K(view);
    }

    public static void requestApplyInsets(View view) {
        a.L(view);
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
        a.a(viewGroup, z);
    }

    public static boolean getFitsSystemWindows(View view) {
        return a.P(view);
    }

    public static void setFitsSystemWindows(View view, boolean z) {
        a.b(view, z);
    }

    public static void jumpDrawablesToCurrentState(View view) {
        a.Q(view);
    }

    public static void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        a.a(view, onApplyWindowInsetsListener);
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return a.a(view, windowInsetsCompat);
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return a.b(view, windowInsetsCompat);
    }

    public static void setSaveFromParentEnabled(View view, boolean z) {
        a.c(view, z);
    }

    public static void setActivated(View view, boolean z) {
        a.d(view, z);
    }

    public static boolean hasOverlappingRendering(View view) {
        return a.u(view);
    }

    public static boolean isPaddingRelative(View view) {
        return a.R(view);
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return a.T(view);
    }

    public static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        a.a(view, colorStateList);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return a.U(view);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        a.a(view, mode);
    }

    public static void setNestedScrollingEnabled(View view, boolean z) {
        a.e(view, z);
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return a.S(view);
    }

    public static boolean startNestedScroll(View view, int i2) {
        return a.h(view, i2);
    }

    public static void stopNestedScroll(View view) {
        a.V(view);
    }

    public static boolean hasNestedScrollingParent(View view) {
        return a.W(view);
    }

    public static boolean dispatchNestedScroll(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        return a.a(view, i2, i3, i4, i5, iArr);
    }

    public static boolean dispatchNestedPreScroll(View view, int i2, int i3, int[] iArr, int[] iArr2) {
        return a.a(view, i2, i3, iArr, iArr2);
    }

    public static boolean dispatchNestedFling(View view, float f2, float f3, boolean z) {
        return a.a(view, f2, f3, z);
    }

    public static boolean dispatchNestedPreFling(View view, float f2, float f3) {
        return a.a(view, f2, f3);
    }

    public static boolean isLaidOut(View view) {
        return a.X(view);
    }

    public static float getZ(View view) {
        return a.Y(view);
    }

    public static void offsetTopAndBottom(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (i2 != 0 && Build.VERSION.SDK_INT < 11) {
            view.invalidate();
        }
    }

    public static void offsetLeftAndRight(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (i2 != 0 && Build.VERSION.SDK_INT < 11) {
            view.invalidate();
        }
    }

    public static void setClipBounds(View view, Rect rect) {
        a.a(view, rect);
    }

    public static Rect getClipBounds(View view) {
        return a.O(view);
    }

    public static boolean isAttachedToWindow(View view) {
        return a.Z(view);
    }
}
