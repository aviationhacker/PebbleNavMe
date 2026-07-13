package android.support.v4.view.accessibility;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import defpackage.dy;
import defpackage.dz;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityEventCompat {
    public static final int CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION = 4;
    public static final int CONTENT_CHANGE_TYPE_SUBTREE = 1;
    public static final int CONTENT_CHANGE_TYPE_TEXT = 2;
    public static final int CONTENT_CHANGE_TYPE_UNDEFINED = 0;
    public static final int TYPES_ALL_MASK = -1;
    public static final int TYPE_ANNOUNCEMENT = 16384;
    public static final int TYPE_GESTURE_DETECTION_END = 524288;
    public static final int TYPE_GESTURE_DETECTION_START = 262144;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_END = 1024;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_START = 512;
    public static final int TYPE_TOUCH_INTERACTION_END = 2097152;
    public static final int TYPE_TOUCH_INTERACTION_START = 1048576;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUSED = 32768;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED = 65536;
    public static final int TYPE_VIEW_HOVER_ENTER = 128;
    public static final int TYPE_VIEW_HOVER_EXIT = 256;
    public static final int TYPE_VIEW_SCROLLED = 4096;
    public static final int TYPE_VIEW_TEXT_SELECTION_CHANGED = 8192;
    public static final int TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY = 131072;
    public static final int TYPE_WINDOW_CONTENT_CHANGED = 2048;
    private static final d a;

    interface d {
        int a(AccessibilityEvent accessibilityEvent);

        Object a(AccessibilityEvent accessibilityEvent, int i);

        void a(AccessibilityEvent accessibilityEvent, Object obj);

        int b(AccessibilityEvent accessibilityEvent);

        void b(AccessibilityEvent accessibilityEvent, int i);
    }

    static class c implements d {
        c() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public void a(AccessibilityEvent accessibilityEvent, Object obj) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public Object a(AccessibilityEvent accessibilityEvent, int i) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public void b(AccessibilityEvent accessibilityEvent, int i) {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public int a(AccessibilityEvent accessibilityEvent) {
            return 0;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public int b(AccessibilityEvent accessibilityEvent) {
            return 0;
        }
    }

    static class a extends c {
        a() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.c, android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public void a(AccessibilityEvent accessibilityEvent, Object obj) {
            dy.a(accessibilityEvent, obj);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.c, android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public Object a(AccessibilityEvent accessibilityEvent, int i) {
            return dy.a(accessibilityEvent, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.c, android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public int a(AccessibilityEvent accessibilityEvent) {
            return dy.a(accessibilityEvent);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.c, android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public void b(AccessibilityEvent accessibilityEvent, int i) {
            dz.a(accessibilityEvent, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityEventCompat.c, android.support.v4.view.accessibility.AccessibilityEventCompat.d
        public int b(AccessibilityEvent accessibilityEvent) {
            return dz.a(accessibilityEvent);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new a();
        } else {
            a = new c();
        }
    }

    private AccessibilityEventCompat() {
    }

    public static int getRecordCount(AccessibilityEvent accessibilityEvent) {
        return a.a(accessibilityEvent);
    }

    public static void appendRecord(AccessibilityEvent accessibilityEvent, AccessibilityRecordCompat accessibilityRecordCompat) {
        a.a(accessibilityEvent, accessibilityRecordCompat.getImpl());
    }

    public static AccessibilityRecordCompat getRecord(AccessibilityEvent accessibilityEvent, int i) {
        return new AccessibilityRecordCompat(a.a(accessibilityEvent, i));
    }

    public static AccessibilityRecordCompat asRecord(AccessibilityEvent accessibilityEvent) {
        return new AccessibilityRecordCompat(accessibilityEvent);
    }

    public static void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int i) {
        a.b(accessibilityEvent, i);
    }

    public static int getContentChangeTypes(AccessibilityEvent accessibilityEvent) {
        return a.b(accessibilityEvent);
    }
}
