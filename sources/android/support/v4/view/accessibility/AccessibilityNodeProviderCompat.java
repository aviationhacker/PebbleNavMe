package android.support.v4.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import defpackage.ei;
import defpackage.ej;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityNodeProviderCompat {
    private static final a a;
    private final Object b;

    interface a {
        Object a(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat);
    }

    static class d implements a {
        d() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.a
        public Object a(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return null;
        }
    }

    static class b extends d {
        b() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.d, android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.a
        public Object a(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return ei.a(new ei.a() { // from class: android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.b.1
                @Override // ei.a
                public boolean a(int i, int i2, Bundle bundle) {
                    return accessibilityNodeProviderCompat.performAction(i, i2, bundle);
                }

                @Override // ei.a
                public List<Object> a(String str, int i) {
                    List<AccessibilityNodeInfoCompat> listFindAccessibilityNodeInfosByText = accessibilityNodeProviderCompat.findAccessibilityNodeInfosByText(str, i);
                    ArrayList arrayList = new ArrayList();
                    int size = listFindAccessibilityNodeInfosByText.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(listFindAccessibilityNodeInfosByText.get(i2).getInfo());
                    }
                    return arrayList;
                }

                @Override // ei.a
                public Object a(int i) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompatCreateAccessibilityNodeInfo = accessibilityNodeProviderCompat.createAccessibilityNodeInfo(i);
                    if (accessibilityNodeInfoCompatCreateAccessibilityNodeInfo == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompatCreateAccessibilityNodeInfo.getInfo();
                }
            });
        }
    }

    static class c extends d {
        c() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.d, android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.a
        public Object a(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return ej.a(new ej.a() { // from class: android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.c.1
                @Override // ej.a
                public boolean a(int i, int i2, Bundle bundle) {
                    return accessibilityNodeProviderCompat.performAction(i, i2, bundle);
                }

                @Override // ej.a
                public List<Object> a(String str, int i) {
                    List<AccessibilityNodeInfoCompat> listFindAccessibilityNodeInfosByText = accessibilityNodeProviderCompat.findAccessibilityNodeInfosByText(str, i);
                    ArrayList arrayList = new ArrayList();
                    int size = listFindAccessibilityNodeInfosByText.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(listFindAccessibilityNodeInfosByText.get(i2).getInfo());
                    }
                    return arrayList;
                }

                @Override // ej.a
                public Object a(int i) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompatCreateAccessibilityNodeInfo = accessibilityNodeProviderCompat.createAccessibilityNodeInfo(i);
                    if (accessibilityNodeInfoCompatCreateAccessibilityNodeInfo == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompatCreateAccessibilityNodeInfo.getInfo();
                }

                @Override // ej.a
                public Object b(int i) {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompatFindFocus = accessibilityNodeProviderCompat.findFocus(i);
                    if (accessibilityNodeInfoCompatFindFocus == null) {
                        return null;
                    }
                    return accessibilityNodeInfoCompatFindFocus.getInfo();
                }
            });
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new c();
        } else if (Build.VERSION.SDK_INT >= 16) {
            a = new b();
        } else {
            a = new d();
        }
    }

    public AccessibilityNodeProviderCompat() {
        this.b = a.a(this);
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.b = obj;
    }

    public Object getProvider() {
        return this.b;
    }

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return null;
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return false;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str, int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return null;
    }
}
