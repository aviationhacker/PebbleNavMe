package defpackage;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: classes.dex */
public class eh {
    public static int a(Object obj) {
        return ((AccessibilityNodeInfo) obj).getLiveRegion();
    }

    public static void a(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setLiveRegion(i);
    }

    public static Object b(Object obj) {
        return ((AccessibilityNodeInfo) obj).getCollectionInfo();
    }

    public static Object c(Object obj) {
        return ((AccessibilityNodeInfo) obj).getCollectionItemInfo();
    }

    public static void a(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) obj2);
    }

    public static void b(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) obj2);
    }

    public static Object d(Object obj) {
        return ((AccessibilityNodeInfo) obj).getRangeInfo();
    }

    public static void c(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setRangeInfo((AccessibilityNodeInfo.RangeInfo) obj2);
    }

    public static Object a(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z);
    }

    public static Object a(int i, int i2, int i3, int i4, boolean z) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z);
    }

    public static void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setContentInvalid(z);
    }

    public static boolean e(Object obj) {
        return ((AccessibilityNodeInfo) obj).isContentInvalid();
    }

    public static boolean f(Object obj) {
        return ((AccessibilityNodeInfo) obj).canOpenPopup();
    }

    public static void b(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setCanOpenPopup(z);
    }

    public static Bundle g(Object obj) {
        return ((AccessibilityNodeInfo) obj).getExtras();
    }

    public static int h(Object obj) {
        return ((AccessibilityNodeInfo) obj).getInputType();
    }

    public static void b(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setInputType(i);
    }

    public static boolean i(Object obj) {
        return ((AccessibilityNodeInfo) obj).isDismissable();
    }

    public static void c(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setDismissable(z);
    }

    public static boolean j(Object obj) {
        return ((AccessibilityNodeInfo) obj).isMultiLine();
    }

    public static void d(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setMultiLine(z);
    }

    public static class a {
        public static int a(Object obj) {
            return ((AccessibilityNodeInfo.CollectionInfo) obj).getColumnCount();
        }

        public static int b(Object obj) {
            return ((AccessibilityNodeInfo.CollectionInfo) obj).getRowCount();
        }

        public static boolean c(Object obj) {
            return ((AccessibilityNodeInfo.CollectionInfo) obj).isHierarchical();
        }
    }

    public static class b {
        public static int a(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnIndex();
        }

        public static int b(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnSpan();
        }

        public static int c(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowIndex();
        }

        public static int d(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowSpan();
        }

        public static boolean e(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).isHeading();
        }
    }

    public static class c {
        public static float a(Object obj) {
            return ((AccessibilityNodeInfo.RangeInfo) obj).getCurrent();
        }

        public static float b(Object obj) {
            return ((AccessibilityNodeInfo.RangeInfo) obj).getMax();
        }

        public static float c(Object obj) {
            return ((AccessibilityNodeInfo.RangeInfo) obj).getMin();
        }

        public static int d(Object obj) {
            return ((AccessibilityNodeInfo.RangeInfo) obj).getType();
        }
    }
}
