package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ViewDragHelper {
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final Interpolator v = new Interpolator() { // from class: android.support.v4.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    private int a;
    private int b;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private ScrollerCompat q;
    private final Callback r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private int c = -1;
    private final Runnable w = new Runnable() { // from class: android.support.v4.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.a(0);
        }
    };

    public static abstract class Callback {
        public abstract boolean tryCaptureView(View view, int i);

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper viewDragHelperCreate = create(viewGroup, callback);
        viewDragHelperCreate.b = (int) (viewDragHelperCreate.b * (1.0f / f));
        return viewDragHelperCreate;
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = ScrollerCompat.create(context, v);
    }

    public void setMinVelocity(float f) {
        this.n = f;
    }

    public float getMinVelocity() {
        return this.n;
    }

    public int getViewDragState() {
        return this.a;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.p = i;
    }

    public int getEdgeSize() {
        return this.o;
    }

    public void captureChildView(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.s = view;
        this.c = i;
        this.r.onViewCaptured(view, i);
        a(1);
    }

    public View getCapturedView() {
        return this.s;
    }

    public int getActivePointerId() {
        return this.c;
    }

    public int getTouchSlop() {
        return this.b;
    }

    public void cancel() {
        this.c = -1;
        a();
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    public void abort() {
        cancel();
        if (this.a == 2) {
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            this.q.abortAnimation();
            int currX2 = this.q.getCurrX();
            int currY2 = this.q.getCurrY();
            this.r.onViewPositionChanged(this.s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        a(0);
    }

    public boolean smoothSlideViewTo(View view, int i, int i2) {
        this.s = view;
        this.c = -1;
        boolean zA = a(i, i2, 0, 0);
        if (!zA && this.a == 0 && this.s != null) {
            this.s = null;
        }
        return zA;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (!this.t) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return a(i, i2, (int) VelocityTrackerCompat.getXVelocity(this.l, this.c), (int) VelocityTrackerCompat.getYVelocity(this.l, this.c));
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.abortAnimation();
            a(0);
            return false;
        }
        this.q.startScroll(left, top, i5, i6, a(this.s, i5, i6, i3, i4));
        a(2);
        return true;
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        int iB = b(i3, (int) this.n, (int) this.m);
        int iB2 = b(i4, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        int iAbs3 = Math.abs(iB);
        int iAbs4 = Math.abs(iB2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        return (int) (((iB2 != 0 ? iAbs4 / i5 : iAbs2 / i6) * a(i2, iB2, this.r.getViewVerticalDragRange(view))) + ((iB != 0 ? iAbs3 / i5 : iAbs / i6) * a(i, iB, this.r.getViewHorizontalDragRange(view))));
    }

    private int a(int i, int i2, int i3) {
        int iAbs;
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        int i4 = width / 2;
        float fA = (a(Math.min(1.0f, Math.abs(i) / width)) * i4) + i4;
        int iAbs2 = Math.abs(i2);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fA / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(iAbs, 600);
    }

    private int b(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i <= 0 ? -i3 : i3 : i;
    }

    private float a(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        if (fAbs < f2) {
            return 0.0f;
        }
        return fAbs > f3 ? f <= 0.0f ? -f3 : f3 : f;
    }

    private float a(float f) {
        return (float) Math.sin((float) (((double) (f - 0.5f)) * 0.4712389167638204d));
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (!this.t) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.q.fling(this.s.getLeft(), this.s.getTop(), (int) VelocityTrackerCompat.getXVelocity(this.l, this.c), (int) VelocityTrackerCompat.getYVelocity(this.l, this.c), i, i3, i2, i4);
        a(2);
    }

    public boolean continueSettling(boolean z) {
        boolean z2;
        if (this.a == 2) {
            boolean zComputeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                this.s.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.s.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.r.onViewPositionChanged(this.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                z2 = false;
            } else {
                z2 = zComputeScrollOffset;
            }
            if (!z2) {
                if (z) {
                    this.u.post(this.w);
                } else {
                    a(0);
                }
            }
        }
        return this.a == 2;
    }

    private void a(float f, float f2) {
        this.t = true;
        this.r.onViewReleased(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            a(0);
        }
    }

    private void a() {
        if (this.d != null) {
            Arrays.fill(this.d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private void b(int i) {
        if (this.d != null) {
            this.d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.g[i] = 0.0f;
            this.h[i] = 0;
            this.i[i] = 0;
            this.j[i] = 0;
            this.k &= (1 << i) ^ (-1);
        }
    }

    private void c(int i) {
        if (this.d == null || this.d.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.d != null) {
                System.arraycopy(this.d, 0, fArr, 0, this.d.length);
                System.arraycopy(this.e, 0, fArr2, 0, this.e.length);
                System.arraycopy(this.f, 0, fArr3, 0, this.f.length);
                System.arraycopy(this.g, 0, fArr4, 0, this.g.length);
                System.arraycopy(this.h, 0, iArr, 0, this.h.length);
                System.arraycopy(this.i, 0, iArr2, 0, this.i.length);
                System.arraycopy(this.j, 0, iArr3, 0, this.j.length);
            }
            this.d = fArr;
            this.e = fArr2;
            this.f = fArr3;
            this.g = fArr4;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private void a(float f, float f2, int i) {
        c(i);
        float[] fArr = this.d;
        this.f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.e;
        this.g[i] = f2;
        fArr2[i] = f2;
        this.h[i] = a((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private void a(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
            float x = MotionEventCompat.getX(motionEvent, i);
            float y = MotionEventCompat.getY(motionEvent, i);
            this.f[pointerId] = x;
            this.g[pointerId] = y;
        }
    }

    public boolean isPointerDown(int i) {
        return (this.k & (1 << i)) != 0;
    }

    void a(int i) {
        this.u.removeCallbacks(this.w);
        if (this.a != i) {
            this.a = i;
            this.r.onViewDragStateChanged(i);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    boolean a(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view != null && this.r.tryCaptureView(view, i)) {
            this.c = i;
            captureChildView(view, i);
            return true;
        }
        return false;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3, int i4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i3 + scrollX >= childAt.getLeft() && i3 + scrollX < childAt.getRight() && i4 + scrollY >= childAt.getTop() && i4 + scrollY < childAt.getBottom() && canScroll(childAt, true, i, i2, (i3 + scrollX) - childAt.getLeft(), (i4 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && (ViewCompat.canScrollHorizontally(view, -i) || ViewCompat.canScrollVertically(view, -i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public void processTouchEvent(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                View viewFindTopChildUnder = findTopChildUnder((int) x, (int) y);
                a(x, y, pointerId);
                a(viewFindTopChildUnder, pointerId);
                int i3 = this.h[pointerId];
                if ((this.p & i3) != 0) {
                    this.r.onEdgeTouched(i3 & this.p, pointerId);
                }
                break;
            case 1:
                if (this.a == 1) {
                    b();
                }
                cancel();
                break;
            case 2:
                if (this.a == 1) {
                    int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.c);
                    float x2 = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
                    float y2 = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
                    int i4 = (int) (x2 - this.f[this.c]);
                    int i5 = (int) (y2 - this.g[this.c]);
                    b(this.s.getLeft() + i4, this.s.getTop() + i5, i4, i5);
                    a(motionEvent);
                } else {
                    int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
                    while (i2 < pointerCount) {
                        int pointerId2 = MotionEventCompat.getPointerId(motionEvent, i2);
                        float x3 = MotionEventCompat.getX(motionEvent, i2);
                        float y3 = MotionEventCompat.getY(motionEvent, i2);
                        float f = x3 - this.d[pointerId2];
                        float f2 = y3 - this.e[pointerId2];
                        b(f, f2, pointerId2);
                        if (this.a != 1) {
                            View viewFindTopChildUnder2 = findTopChildUnder((int) x3, (int) y3);
                            if (!a(viewFindTopChildUnder2, f, f2) || !a(viewFindTopChildUnder2, pointerId2)) {
                                i2++;
                            }
                        }
                        a(motionEvent);
                        break;
                    }
                    a(motionEvent);
                }
                break;
            case 3:
                if (this.a == 1) {
                    a(0.0f, 0.0f);
                }
                cancel();
                break;
            case 5:
                int pointerId3 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                float x4 = MotionEventCompat.getX(motionEvent, actionIndex);
                float y4 = MotionEventCompat.getY(motionEvent, actionIndex);
                a(x4, y4, pointerId3);
                if (this.a == 0) {
                    a(findTopChildUnder((int) x4, (int) y4), pointerId3);
                    int i6 = this.h[pointerId3];
                    if ((this.p & i6) != 0) {
                        this.r.onEdgeTouched(i6 & this.p, pointerId3);
                    }
                } else if (isCapturedViewUnder((int) x4, (int) y4)) {
                    a(this.s, pointerId3);
                }
                break;
            case 6:
                int pointerId4 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                if (this.a == 1 && pointerId4 == this.c) {
                    int pointerCount2 = MotionEventCompat.getPointerCount(motionEvent);
                    while (true) {
                        if (i2 >= pointerCount2) {
                            i = -1;
                        } else {
                            int pointerId5 = MotionEventCompat.getPointerId(motionEvent, i2);
                            if (pointerId5 != this.c) {
                                if (findTopChildUnder((int) MotionEventCompat.getX(motionEvent, i2), (int) MotionEventCompat.getY(motionEvent, i2)) == this.s && a(this.s, pointerId5)) {
                                    i = this.c;
                                }
                            }
                            i2++;
                        }
                    }
                    if (i == -1) {
                        b();
                    }
                }
                b(pointerId4);
                break;
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = a(f, f2, i, 1) ? 1 : 0;
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.onEdgeDragStarted(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        if (fAbs <= this.b && fAbs2 <= this.b) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.r.onEdgeLock(i2)) {
            return (this.i[i] & i2) == 0 && fAbs > ((float) this.b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.getViewHorizontalDragRange(view) > 0;
        boolean z2 = this.r.getViewVerticalDragRange(view) > 0;
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.b * this.b)) : z ? Math.abs(f) > ((float) this.b) : z2 && Math.abs(f2) > ((float) this.b);
    }

    public boolean checkTouchSlop(int i) {
        int length = this.d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f = this.f[i2] - this.d[i2];
        float f2 = this.g[i2] - this.e[i2];
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.b * this.b)) : z ? Math.abs(f) > ((float) this.b) : z2 && Math.abs(f2) > ((float) this.b);
    }

    public boolean isEdgeTouched(int i) {
        int length = this.h.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (this.h[i2] & i) != 0;
    }

    private void b() {
        this.l.computeCurrentVelocity(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, this.m);
        a(a(VelocityTrackerCompat.getXVelocity(this.l, this.c), this.n, this.m), a(VelocityTrackerCompat.getYVelocity(this.l, this.c), this.n, this.m));
    }

    private void b(int i, int i2, int i3, int i4) {
        int iClampViewPositionHorizontal;
        int iClampViewPositionVertical;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            iClampViewPositionHorizontal = this.r.clampViewPositionHorizontal(this.s, i, i3);
            this.s.offsetLeftAndRight(iClampViewPositionHorizontal - left);
        } else {
            iClampViewPositionHorizontal = i;
        }
        if (i4 != 0) {
            iClampViewPositionVertical = this.r.clampViewPositionVertical(this.s, i2, i4);
            this.s.offsetTopAndBottom(iClampViewPositionVertical - top);
        } else {
            iClampViewPositionVertical = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.r.onViewPositionChanged(this.s, iClampViewPositionHorizontal, iClampViewPositionVertical, iClampViewPositionHorizontal - left, iClampViewPositionVertical - top);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.s, i, i2);
    }

    public boolean isViewUnder(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int a(int i, int i2) {
        int i3 = i < this.u.getLeft() + this.o ? 1 : 0;
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.u.getBottom() - this.o ? i3 | 8 : i3;
    }
}
