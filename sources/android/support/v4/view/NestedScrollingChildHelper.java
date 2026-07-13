package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollingChildHelper {
    private final View a;
    private ViewParent b;
    private boolean c;
    private int[] d;

    public NestedScrollingChildHelper(View view) {
        this.a = view;
    }

    public void setNestedScrollingEnabled(boolean z) {
        if (this.c) {
            ViewCompat.stopNestedScroll(this.a);
        }
        this.c = z;
    }

    public boolean isNestedScrollingEnabled() {
        return this.c;
    }

    public boolean hasNestedScrollingParent() {
        return this.b != null;
    }

    public boolean startNestedScroll(int i) {
        if (hasNestedScrollingParent()) {
            return true;
        }
        if (isNestedScrollingEnabled()) {
            View view = this.a;
            for (ViewParent parent = this.a.getParent(); parent != null; parent = parent.getParent()) {
                if (ViewParentCompat.onStartNestedScroll(parent, view, this.a, i)) {
                    this.b = parent;
                    ViewParentCompat.onNestedScrollAccepted(parent, view, this.a, i);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public void stopNestedScroll() {
        if (this.b != null) {
            ViewParentCompat.onStopNestedScroll(this.b, this.a);
            this.b = null;
        }
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        if (!isNestedScrollingEnabled() || this.b == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.a.getLocationInWindow(iArr);
                int i7 = iArr[0];
                i5 = iArr[1];
                i6 = i7;
            } else {
                i5 = 0;
                i6 = 0;
            }
            ViewParentCompat.onNestedScroll(this.b, this.a, i, i2, i3, i4);
            if (iArr != null) {
                this.a.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i6;
                iArr[1] = iArr[1] - i5;
            }
            return true;
        }
        if (iArr == null) {
            return false;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        return false;
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        int i3;
        int i4;
        if (!isNestedScrollingEnabled() || this.b == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.a.getLocationInWindow(iArr2);
                i4 = iArr2[0];
                i3 = iArr2[1];
            } else {
                i3 = 0;
                i4 = 0;
            }
            if (iArr == null) {
                if (this.d == null) {
                    this.d = new int[2];
                }
                iArr = this.d;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            ViewParentCompat.onNestedPreScroll(this.b, this.a, i, i2, iArr);
            if (iArr2 != null) {
                this.a.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i4;
                iArr2[1] = iArr2[1] - i3;
            }
            return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
        }
        if (iArr2 == null) {
            return false;
        }
        iArr2[0] = 0;
        iArr2[1] = 0;
        return false;
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        if (!isNestedScrollingEnabled() || this.b == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(this.b, this.a, f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        if (!isNestedScrollingEnabled() || this.b == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(this.b, this.a, f, f2);
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.a);
    }

    public void onStopNestedScroll(View view) {
        ViewCompat.stopNestedScroll(this.a);
    }
}
