package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import defpackage.dq;
import defpackage.dr;

/* JADX INFO: loaded from: classes.dex */
public class ViewParentCompat {
    static final b a;

    interface b {
        void a(ViewParent viewParent, View view);

        void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4);

        void a(ViewParent viewParent, View view, int i, int i2, int[] iArr);

        boolean a(ViewParent viewParent, View view, float f, float f2);

        boolean a(ViewParent viewParent, View view, float f, float f2, boolean z);

        boolean a(ViewParent viewParent, View view, View view2, int i);

        boolean a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent);

        void b(ViewParent viewParent, View view, View view2, int i);

        void c(ViewParent viewParent, View view, View view2, int i);
    }

    static class e implements b {
        e() {
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
            if (view == null) {
                return false;
            }
            ((AccessibilityManager) view.getContext().getSystemService("accessibility")).sendAccessibilityEvent(accessibilityEvent);
            return true;
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public void b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onStopNestedScroll(view);
            }
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }

        @Override // android.support.v4.view.ViewParentCompat.b
        public void c(ViewParent viewParent, View view, View view2, int i) {
        }
    }

    static class a extends e {
        a() {
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
            return ViewParentCompatICS.requestSendAccessibilityEvent(viewParent, view, accessibilityEvent);
        }
    }

    static class c extends a {
        c() {
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public void c(ViewParent viewParent, View view, View view2, int i) {
            dq.a(viewParent, view, view2, i);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            return dr.a(viewParent, view, view2, i);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public void b(ViewParent viewParent, View view, View view2, int i) {
            dr.b(viewParent, view, view2, i);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view) {
            dr.a(viewParent, view);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            dr.a(viewParent, view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            dr.a(viewParent, view, i, i2, iArr);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return dr.a(viewParent, view, f, f2, z);
        }

        @Override // android.support.v4.view.ViewParentCompat.e, android.support.v4.view.ViewParentCompat.b
        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            return dr.a(viewParent, view, f, f2);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new d();
            return;
        }
        if (i >= 19) {
            a = new c();
        } else if (i >= 14) {
            a = new a();
        } else {
            a = new e();
        }
    }

    private ViewParentCompat() {
    }

    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return a.a(viewParent, view, accessibilityEvent);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
        return a.a(viewParent, view, view2, i);
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
        a.b(viewParent, view, view2, i);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        a.a(viewParent, view);
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        a.a(viewParent, view, i, i2, i3, i4);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        a.a(viewParent, view, i, i2, iArr);
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return a.a(viewParent, view, f, f2, z);
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
        return a.a(viewParent, view, f, f2);
    }

    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i) {
        a.c(viewParent, view, view2, i);
    }
}
