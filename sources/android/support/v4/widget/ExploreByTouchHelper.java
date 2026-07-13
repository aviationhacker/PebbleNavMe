package android.support.v4.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final String b = View.class.getName();
    private final AccessibilityManager g;
    private final View h;
    private a i;
    private final Rect c = new Rect();
    private final Rect d = new Rect();
    private final Rect e = new Rect();
    private final int[] f = new int[2];
    private int j = Integer.MIN_VALUE;
    private int k = Integer.MIN_VALUE;

    protected abstract int getVirtualViewAt(float f, float f2);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    protected abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    protected abstract void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent);

    protected abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public ExploreByTouchHelper(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.h = view;
        this.g = (AccessibilityManager) view.getContext().getSystemService("accessibility");
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.g.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.g)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 7:
            case 9:
                int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                a(virtualViewAt);
                break;
            case 10:
                if (this.j != Integer.MIN_VALUE) {
                    a(Integer.MIN_VALUE);
                }
                break;
        }
        return false;
    }

    public boolean sendEventForVirtualView(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.g.isEnabled() || (parent = this.h.getParent()) == null) {
            return false;
        }
        return ViewParentCompat.requestSendAccessibilityEvent(parent, this.h, a(i, i2));
    }

    public void invalidateRoot() {
        invalidateVirtualView(-1);
    }

    public void invalidateVirtualView(int i) {
        sendEventForVirtualView(i, 2048);
    }

    public int getFocusedVirtualView() {
        return this.j;
    }

    private void a(int i) {
        if (this.k != i) {
            int i2 = this.k;
            this.k = i;
            sendEventForVirtualView(i, 128);
            sendEventForVirtualView(i2, 256);
        }
    }

    private AccessibilityEvent a(int i, int i2) {
        switch (i) {
            case -1:
                return b(i2);
            default:
                return b(i, i2);
        }
    }

    private AccessibilityEvent b(int i) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i);
        ViewCompat.onInitializeAccessibilityEvent(this.h, accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private AccessibilityEvent b(int i, int i2) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName(b);
        onPopulateEventForVirtualView(i, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setPackageName(this.h.getContext().getPackageName());
        AccessibilityEventCompat.asRecord(accessibilityEventObtain).setSource(this.h, i);
        return accessibilityEventObtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityNodeInfoCompat c(int i) {
        switch (i) {
            case -1:
                return b();
            default:
                return d(i);
        }
    }

    private AccessibilityNodeInfoCompat b() {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(this.h);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.h, accessibilityNodeInfoCompatObtain);
        onPopulateNodeForHost(accessibilityNodeInfoCompatObtain);
        LinkedList linkedList = new LinkedList();
        getVisibleVirtualViews(linkedList);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            accessibilityNodeInfoCompatObtain.addChild(this.h, ((Integer) it.next()).intValue());
        }
        return accessibilityNodeInfoCompatObtain;
    }

    private AccessibilityNodeInfoCompat d(int i) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompatObtain.setEnabled(true);
        accessibilityNodeInfoCompatObtain.setClassName(b);
        onPopulateNodeForVirtualView(i, accessibilityNodeInfoCompatObtain);
        if (accessibilityNodeInfoCompatObtain.getText() == null && accessibilityNodeInfoCompatObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.getBoundsInParent(this.d);
        if (this.d.isEmpty()) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoCompatObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.setPackageName(this.h.getContext().getPackageName());
        accessibilityNodeInfoCompatObtain.setSource(this.h, i);
        accessibilityNodeInfoCompatObtain.setParent(this.h);
        if (this.j == i) {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompatObtain.addAction(128);
        } else {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompatObtain.addAction(64);
        }
        if (a(this.d)) {
            accessibilityNodeInfoCompatObtain.setVisibleToUser(true);
            accessibilityNodeInfoCompatObtain.setBoundsInParent(this.d);
        }
        this.h.getLocationOnScreen(this.f);
        int i2 = this.f[0];
        int i3 = this.f[1];
        this.c.set(this.d);
        this.c.offset(i2, i3);
        accessibilityNodeInfoCompatObtain.setBoundsInScreen(this.c);
        return accessibilityNodeInfoCompatObtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, int i2, Bundle bundle) {
        switch (i) {
            case -1:
                return a(i2, bundle);
            default:
                return b(i, i2, bundle);
        }
    }

    private boolean a(int i, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.h, i, bundle);
    }

    private boolean b(int i, int i2, Bundle bundle) {
        switch (i2) {
            case 64:
            case 128:
                return c(i, i2, bundle);
            default:
                return onPerformActionForVirtualView(i, i2, bundle);
        }
    }

    private boolean c(int i, int i2, Bundle bundle) {
        switch (i2) {
            case 64:
                return f(i);
            case 128:
                return g(i);
            default:
                return false;
        }
    }

    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty()) {
            return false;
        }
        if (this.h.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.h.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (ViewCompat.getAlpha(view) <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        if (parent != null && this.h.getLocalVisibleRect(this.e)) {
            return rect.intersect(this.e);
        }
        return false;
    }

    private boolean e(int i) {
        return this.j == i;
    }

    private boolean f(int i) {
        if (!this.g.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.g) || e(i)) {
            return false;
        }
        if (this.j != Integer.MIN_VALUE) {
            sendEventForVirtualView(this.j, 65536);
        }
        this.j = i;
        this.h.invalidate();
        sendEventForVirtualView(i, 32768);
        return true;
    }

    private boolean g(int i) {
        if (!e(i)) {
            return false;
        }
        this.j = Integer.MIN_VALUE;
        this.h.invalidate();
        sendEventForVirtualView(i, 65536);
        return true;
    }

    public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    class a extends AccessibilityNodeProviderCompat {
        private a() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return ExploreByTouchHelper.this.c(i);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i, int i2, Bundle bundle) {
            return ExploreByTouchHelper.this.a(i, i2, bundle);
        }
    }
}
