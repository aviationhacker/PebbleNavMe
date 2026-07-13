package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompatIcs;
import android.support.v4.view.AccessibilityDelegateCompatJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityDelegateCompat {
    private static final b b;
    private static final Object c;
    final Object a = b.a(this);

    interface b {
        AccessibilityNodeProviderCompat a(Object obj, View view);

        Object a();

        Object a(AccessibilityDelegateCompat accessibilityDelegateCompat);

        void a(Object obj, View view, int i);

        void a(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        boolean a(Object obj, View view, int i, Bundle bundle);

        boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent);

        boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void c(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void d(Object obj, View view, AccessibilityEvent accessibilityEvent);
    }

    static class d implements b {
        d() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public Object a(AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return null;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return false;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public void a(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public void a(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public AccessibilityNodeProviderCompat a(Object obj, View view) {
            return null;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, View view, int i, Bundle bundle) {
            return false;
        }
    }

    static class a extends d {
        a() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public Object a() {
            return AccessibilityDelegateCompatIcs.a();
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public Object a(final AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return AccessibilityDelegateCompatIcs.a(new AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge() { // from class: android.support.v4.view.AccessibilityDelegateCompat.a.1
                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public void onInitializeAccessibilityNodeInfo(View view, Object obj) {
                    accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, new AccessibilityNodeInfoCompat(obj));
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public void sendAccessibilityEvent(View view, int i) {
                    accessibilityDelegateCompat.sendAccessibilityEvent(view, i);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge
                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                }
            });
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return AccessibilityDelegateCompatIcs.a(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.b(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public void a(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityDelegateCompatIcs.a(obj, view, accessibilityNodeInfoCompat.getInfo());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.c(obj, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return AccessibilityDelegateCompatIcs.a(obj, viewGroup, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public void a(Object obj, View view, int i) {
            AccessibilityDelegateCompatIcs.a(obj, view, i);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.d(obj, view, accessibilityEvent);
        }
    }

    static class c extends a {
        c() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.a, android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public Object a(final AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return AccessibilityDelegateCompatJellyBean.a(new AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean() { // from class: android.support.v4.view.AccessibilityDelegateCompat.c.1
                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public void onInitializeAccessibilityNodeInfo(View view, Object obj) {
                    accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, new AccessibilityNodeInfoCompat(obj));
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public void sendAccessibilityEvent(View view, int i) {
                    accessibilityDelegateCompat.sendAccessibilityEvent(view, i);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public Object getAccessibilityNodeProvider(View view) {
                    AccessibilityNodeProviderCompat accessibilityNodeProvider = accessibilityDelegateCompat.getAccessibilityNodeProvider(view);
                    if (accessibilityNodeProvider != null) {
                        return accessibilityNodeProvider.getProvider();
                    }
                    return null;
                }

                @Override // android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean
                public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                    return accessibilityDelegateCompat.performAccessibilityAction(view, i, bundle);
                }
            });
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public AccessibilityNodeProviderCompat a(Object obj, View view) {
            Object objA = AccessibilityDelegateCompatJellyBean.a(obj, view);
            if (objA != null) {
                return new AccessibilityNodeProviderCompat(objA);
            }
            return null;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat.d, android.support.v4.view.AccessibilityDelegateCompat.b
        public boolean a(Object obj, View view, int i, Bundle bundle) {
            return AccessibilityDelegateCompatJellyBean.a(obj, view, i, bundle);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            b = new c();
        } else if (Build.VERSION.SDK_INT >= 14) {
            b = new a();
        } else {
            b = new d();
        }
        c = b.a();
    }

    Object a() {
        return this.a;
    }

    public void sendAccessibilityEvent(View view, int i) {
        b.a(c, view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        b.d(c, view, accessibilityEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return b.a(c, view, accessibilityEvent);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        b.c(c, view, accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        b.b(c, view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        b.a(c, view, accessibilityNodeInfoCompat);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return b.a(c, viewGroup, view, accessibilityEvent);
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return b.a(c, view);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return b.a(c, view, i, bundle);
    }
}
