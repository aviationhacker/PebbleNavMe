package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import defpackage.ea;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityManagerCompat {
    private static final c a;

    public static abstract class AccessibilityStateChangeListenerCompat {
        final Object a = AccessibilityManagerCompat.a.a(this);

        public abstract void onAccessibilityStateChanged(boolean z);
    }

    interface c {
        Object a(AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager);

        List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager, int i);

        boolean a(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        boolean b(AccessibilityManager accessibilityManager);

        boolean b(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public Object a(AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return null;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean a(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean b(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager, int i) {
            return Collections.emptyList();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager) {
            return Collections.emptyList();
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean b(AccessibilityManager accessibilityManager) {
            return false;
        }
    }

    static class a extends b {
        a() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public Object a(final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return ea.a(new ea.a() { // from class: android.support.v4.view.accessibility.AccessibilityManagerCompat.a.1
                @Override // ea.a
                public void a(boolean z) {
                    accessibilityStateChangeListenerCompat.onAccessibilityStateChanged(z);
                }
            });
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean a(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return ea.a(accessibilityManager, accessibilityStateChangeListenerCompat.a);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean b(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return ea.b(accessibilityManager, accessibilityStateChangeListenerCompat.a);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager, int i) {
            return ea.a(accessibilityManager, i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public List<AccessibilityServiceInfo> a(AccessibilityManager accessibilityManager) {
            return ea.a(accessibilityManager);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityManagerCompat.b, android.support.v4.view.accessibility.AccessibilityManagerCompat.c
        public boolean b(AccessibilityManager accessibilityManager) {
            return ea.b(accessibilityManager);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new a();
        } else {
            a = new b();
        }
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return a.a(accessibilityManager, accessibilityStateChangeListenerCompat);
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return a.b(accessibilityManager, accessibilityStateChangeListenerCompat);
    }

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return a.a(accessibilityManager);
    }

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return a.a(accessibilityManager, i);
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return a.b(accessibilityManager);
    }
}
