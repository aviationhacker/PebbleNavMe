package defpackage;

import android.view.accessibility.AccessibilityRecord;

/* JADX INFO: loaded from: classes.dex */
public class el {
    public static int a(Object obj) {
        return ((AccessibilityRecord) obj).getMaxScrollX();
    }

    public static int b(Object obj) {
        return ((AccessibilityRecord) obj).getMaxScrollY();
    }

    public static void a(Object obj, int i) {
        ((AccessibilityRecord) obj).setMaxScrollX(i);
    }

    public static void b(Object obj, int i) {
        ((AccessibilityRecord) obj).setMaxScrollY(i);
    }
}
