package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.Cdo;
import defpackage.dm;
import defpackage.dn;
import defpackage.dp;

/* JADX INFO: loaded from: classes.dex */
public class ViewGroupCompat {
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
    static final c a;

    interface c {
        int a(ViewGroup viewGroup);

        void a(ViewGroup viewGroup, int i);

        void a(ViewGroup viewGroup, boolean z);

        boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(ViewGroup viewGroup, boolean z);

        boolean b(ViewGroup viewGroup);

        int c(ViewGroup viewGroup);
    }

    static class f implements c {
        f() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public void a(ViewGroup viewGroup, boolean z) {
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public int a(ViewGroup viewGroup) {
            return 0;
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public void a(ViewGroup viewGroup, int i) {
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public void b(ViewGroup viewGroup, boolean z) {
        }

        @Override // android.support.v4.view.ViewGroupCompat.c
        public boolean b(ViewGroup viewGroup) {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewGroupCompat.c
        public int c(ViewGroup viewGroup) {
            if (viewGroup instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewGroup).getNestedScrollAxes();
            }
            return 0;
        }
    }

    static class a extends f {
        a() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public void a(ViewGroup viewGroup, boolean z) {
            dm.a(viewGroup, z);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return dn.a(viewGroup, view, accessibilityEvent);
        }
    }

    static class d extends b {
        d() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public int a(ViewGroup viewGroup) {
            return Cdo.a(viewGroup);
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public void a(ViewGroup viewGroup, int i) {
            Cdo.a(viewGroup, i);
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public void b(ViewGroup viewGroup, boolean z) {
            dp.a(viewGroup, z);
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public boolean b(ViewGroup viewGroup) {
            return dp.a(viewGroup);
        }

        @Override // android.support.v4.view.ViewGroupCompat.f, android.support.v4.view.ViewGroupCompat.c
        public int c(ViewGroup viewGroup) {
            return dp.b(viewGroup);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new e();
            return;
        }
        if (i >= 18) {
            a = new d();
            return;
        }
        if (i >= 14) {
            a = new b();
        } else if (i >= 11) {
            a = new a();
        } else {
            a = new f();
        }
    }

    private ViewGroupCompat() {
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return a.a(viewGroup, view, accessibilityEvent);
    }

    public static void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        a.a(viewGroup, z);
    }

    public static int getLayoutMode(ViewGroup viewGroup) {
        return a.a(viewGroup);
    }

    public static void setLayoutMode(ViewGroup viewGroup, int i) {
        a.a(viewGroup, i);
    }

    public static void setTransitionGroup(ViewGroup viewGroup, boolean z) {
        a.b(viewGroup, z);
    }

    public static boolean isTransitionGroup(ViewGroup viewGroup) {
        return a.b(viewGroup);
    }

    public static int getNestedScrollAxes(ViewGroup viewGroup) {
        return a.c(viewGroup);
    }
}
