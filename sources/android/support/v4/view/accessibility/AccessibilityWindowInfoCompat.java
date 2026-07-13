package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import defpackage.en;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SYSTEM = 3;
    private static final b a;
    private Object b;

    interface b {
        Object a();

        Object a(Object obj);

        Object a(Object obj, int i);

        void a(Object obj, Rect rect);

        int b(Object obj);

        int c(Object obj);

        Object d(Object obj);

        Object e(Object obj);

        int f(Object obj);

        boolean g(Object obj);

        boolean h(Object obj);

        boolean i(Object obj);

        int j(Object obj);

        void k(Object obj);
    }

    static class c implements b {
        private c() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int b(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int c(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object d(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object e(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int f(Object obj) {
            return -1;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public void a(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean g(Object obj) {
            return true;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean h(Object obj) {
            return true;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean i(Object obj) {
            return true;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int j(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a(Object obj, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public void k(Object obj) {
        }
    }

    static class a extends c {
        private a() {
            super();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a() {
            return en.a();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a(Object obj) {
            return en.a(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int b(Object obj) {
            return en.b(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int c(Object obj) {
            return en.c(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object d(Object obj) {
            return en.d(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object e(Object obj) {
            return en.e(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int f(Object obj) {
            return en.f(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public void a(Object obj, Rect rect) {
            en.a(obj, rect);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean g(Object obj) {
            return en.g(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean h(Object obj) {
            return en.h(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public boolean i(Object obj) {
            return en.i(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public int j(Object obj) {
            return en.j(obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public Object a(Object obj, int i) {
            return en.a(obj, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.c, android.support.v4.view.accessibility.AccessibilityWindowInfoCompat.b
        public void k(Object obj) {
            en.k(obj);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            a = new a();
        } else {
            a = new c();
        }
    }

    static AccessibilityWindowInfoCompat a(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    private AccessibilityWindowInfoCompat(Object obj) {
        this.b = obj;
    }

    public int getType() {
        return a.b(this.b);
    }

    public int getLayer() {
        return a.c(this.b);
    }

    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.a(a.d(this.b));
    }

    public AccessibilityWindowInfoCompat getParent() {
        return a(a.e(this.b));
    }

    public int getId() {
        return a.f(this.b);
    }

    public void getBoundsInScreen(Rect rect) {
        a.a(this.b, rect);
    }

    public boolean isActive() {
        return a.g(this.b);
    }

    public boolean isFocused() {
        return a.h(this.b);
    }

    public boolean isAccessibilityFocused() {
        return a.i(this.b);
    }

    public int getChildCount() {
        return a.j(this.b);
    }

    public AccessibilityWindowInfoCompat getChild(int i) {
        return a(a.a(this.b, i));
    }

    public static AccessibilityWindowInfoCompat obtain() {
        return a(a.a());
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        return a(a.a(accessibilityWindowInfoCompat.b));
    }

    public void recycle() {
        a.k(this.b);
    }

    public int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
            return this.b == null ? accessibilityWindowInfoCompat.b == null : this.b.equals(accessibilityWindowInfoCompat.b);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=").append(getId());
        sb.append(", type=").append(a(getType()));
        sb.append(", layer=").append(getLayer());
        sb.append(", bounds=").append(rect);
        sb.append(", focused=").append(isFocused());
        sb.append(", active=").append(isActive());
        sb.append(", hasParent=").append(getParent() != null);
        sb.append(", hasChildren=").append(getChildCount() > 0);
        sb.append(']');
        return sb.toString();
    }

    private static String a(int i) {
        switch (i) {
            case 1:
                return "TYPE_APPLICATION";
            case 2:
                return "TYPE_INPUT_METHOD";
            case 3:
                return "TYPE_SYSTEM";
            case 4:
                return "TYPE_ACCESSIBILITY_OVERLAY";
            default:
                return "<UNKNOWN>";
        }
    }
}
