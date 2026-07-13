package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.ex;
import defpackage.ey;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup implements ey {
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    static final c a;
    private static final int[] b = {R.attr.layout_gravity};
    private static final boolean c;
    private static final boolean d;
    private Drawable A;
    private CharSequence B;
    private CharSequence C;
    private Object D;
    private boolean E;
    private Drawable F;
    private Drawable G;
    private Drawable H;
    private Drawable I;
    private final ArrayList<View> J;
    private final b e;
    private float f;
    private int g;
    private int h;
    private float i;
    private Paint j;
    private final ViewDragHelper k;
    private final ViewDragHelper l;
    private final f m;
    private final f n;
    private int o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private DrawerListener v;
    private float w;
    private float x;
    private Drawable y;
    private Drawable z;

    public interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

    interface c {
        int a(Object obj);

        Drawable a(Context context);

        void a(View view);

        void a(View view, Object obj, int i);

        void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i);
    }

    static {
        c = Build.VERSION.SDK_INT >= 19;
        d = Build.VERSION.SDK_INT >= 21;
        if (Build.VERSION.SDK_INT >= 21) {
            a = new d();
        } else {
            a = new e();
        }
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
        }
    }

    static class e implements c {
        e() {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(View view) {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(View view, Object obj, int i) {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public int a(Object obj) {
            return 0;
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public Drawable a(Context context) {
            return null;
        }
    }

    static class d implements c {
        d() {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(View view) {
            ex.a(view);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(View view, Object obj, int i) {
            ex.a(view, obj, i);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
            ex.a(marginLayoutParams, obj, i);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public int a(Object obj) {
            return ex.a(obj);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public Drawable a(Context context) {
            return ex.a(context);
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new b();
        this.h = -1728053248;
        this.j = new Paint();
        this.q = true;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.g = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        this.m = new f(3);
        this.n = new f(5);
        this.k = ViewDragHelper.create(this, 1.0f, this.m);
        this.k.setEdgeTrackingEnabled(1);
        this.k.setMinVelocity(f3);
        this.m.a(this.k);
        this.l = ViewDragHelper.create(this, 1.0f, this.n);
        this.l.setEdgeTrackingEnabled(2);
        this.l.setMinVelocity(f3);
        this.n.a(this.l);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new a());
        ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            a.a((View) this);
            this.y = a.a(context);
        }
        this.f = f2 * 10.0f;
        this.J = new ArrayList<>();
    }

    public void setDrawerElevation(float f2) {
        this.f = f2;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (f(childAt)) {
                ViewCompat.setElevation(childAt, this.f);
            }
        }
    }

    public float getDrawerElevation() {
        if (d) {
            return this.f;
        }
        return 0.0f;
    }

    @Override // defpackage.ey
    public void setChildInsets(Object obj, boolean z) {
        this.D = obj;
        this.E = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (!d) {
            if ((i & GravityCompat.START) == 8388611) {
                this.F = drawable;
            } else if ((i & GravityCompat.END) == 8388613) {
                this.G = drawable;
            } else if ((i & 3) == 3) {
                this.H = drawable;
            } else if ((i & 5) == 5) {
                this.I = drawable;
            } else {
                return;
            }
            e();
            invalidate();
        }
    }

    public void setDrawerShadow(@DrawableRes int i, int i2) {
        setDrawerShadow(getResources().getDrawable(i), i2);
    }

    public void setScrimColor(@ColorInt int i) {
        this.h = i;
        invalidate();
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.v = drawerListener;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.r = i;
        } else if (absoluteGravity == 5) {
            this.s = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.k : this.l).cancel();
        }
        switch (i) {
            case 1:
                View viewA = a(absoluteGravity);
                if (viewA != null) {
                    closeDrawer(viewA);
                }
                break;
            case 2:
                View viewA2 = a(absoluteGravity);
                if (viewA2 != null) {
                    openDrawer(viewA2);
                }
                break;
        }
    }

    public void setDrawerLockMode(int i, View view) {
        if (!f(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
        }
        setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).gravity);
    }

    public int getDrawerLockMode(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.r;
        }
        if (absoluteGravity == 5) {
            return this.s;
        }
        return 0;
    }

    public int getDrawerLockMode(View view) {
        int iD = d(view);
        if (iD == 3) {
            return this.r;
        }
        if (iD == 5) {
            return this.s;
        }
        return 0;
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.B = charSequence;
        } else if (absoluteGravity == 5) {
            this.C = charSequence;
        }
    }

    @Nullable
    public CharSequence getDrawerTitle(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.B;
        }
        if (absoluteGravity == 5) {
            return this.C;
        }
        return null;
    }

    void a(int i, int i2, View view) {
        int i3 = 1;
        int viewDragState = this.k.getViewDragState();
        int viewDragState2 = this.l.getViewDragState();
        if (viewDragState != 1 && viewDragState2 != 1) {
            i3 = (viewDragState == 2 || viewDragState2 == 2) ? 2 : 0;
        }
        if (view != null && i2 == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.a == 0.0f) {
                a(view);
            } else if (layoutParams.a == 1.0f) {
                b(view);
            }
        }
        if (i3 != this.o) {
            this.o = i3;
            if (this.v != null) {
                this.v.onDrawerStateChanged(i3);
            }
        }
    }

    void a(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.c) {
            layoutParams.c = false;
            if (this.v != null) {
                this.v.onDrawerClosed(view);
            }
            a(view, false);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    void b(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.c) {
            layoutParams.c = true;
            if (this.v != null) {
                this.v.onDrawerOpened(view);
            }
            a(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
            view.requestFocus();
        }
    }

    private void a(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((!z && !f(childAt)) || (z && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            }
        }
    }

    void a(View view, float f2) {
        if (this.v != null) {
            this.v.onDrawerSlide(view, f2);
        }
    }

    void b(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 != layoutParams.a) {
            layoutParams.a = f2;
            a(view, f2);
        }
    }

    float c(View view) {
        return ((LayoutParams) view.getLayoutParams()).a;
    }

    int d(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    boolean a(View view, int i) {
        return (d(view) & i) == i;
    }

    View a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (((LayoutParams) childAt.getLayoutParams()).c) {
                return childAt;
            }
        }
        return null;
    }

    View a(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((d(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    static String b(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        if ((i & 5) == 5) {
            return "RIGHT";
        }
        return Integer.toHexString(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0056 A[PHI: r2
  0x0056: PHI (r2v14 int) = (r2v2 int), (r2v0 int) binds: [B:22:0x0054, B:4:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
    }

    private void e() {
        if (!d) {
            this.z = f();
            this.A = g();
        }
    }

    private Drawable f() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.F != null) {
                a(this.F, layoutDirection);
                return this.F;
            }
        } else if (this.G != null) {
            a(this.G, layoutDirection);
            return this.G;
        }
        return this.H;
    }

    private Drawable g() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.G != null) {
                a(this.G, layoutDirection);
                return this.G;
            }
        } else if (this.F != null) {
            a(this.F, layoutDirection);
            return this.F;
        }
        return this.I;
    }

    private boolean a(Drawable drawable, int i) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return false;
        }
        DrawableCompat.setLayoutDirection(drawable, i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f2;
        this.p = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (e(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        i5 = ((int) (measuredWidth * layoutParams.a)) + (-measuredWidth);
                        f2 = (measuredWidth + i5) / measuredWidth;
                    } else {
                        i5 = i6 - ((int) (measuredWidth * layoutParams.a));
                        f2 = (i6 - i5) / measuredWidth;
                    }
                    boolean z2 = f2 != layoutParams.a;
                    switch (layoutParams.gravity & 112) {
                        case 16:
                            int i8 = i4 - i2;
                            int i9 = (i8 - measuredHeight) / 2;
                            if (i9 < layoutParams.topMargin) {
                                i9 = layoutParams.topMargin;
                            } else if (i9 + measuredHeight > i8 - layoutParams.bottomMargin) {
                                i9 = (i8 - layoutParams.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i5, i9, measuredWidth + i5, measuredHeight + i9);
                            break;
                        case 80:
                            int i10 = i4 - i2;
                            childAt.layout(i5, (i10 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i10 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i5, layoutParams.topMargin, measuredWidth + i5, measuredHeight + layoutParams.topMargin);
                            break;
                    }
                    if (z2) {
                        b(childAt, f2);
                    }
                    int i11 = layoutParams.a > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i11) {
                        childAt.setVisibility(i11);
                    }
                }
            }
        }
        this.p = false;
        this.q = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.p) {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i = 0; i < childCount; i++) {
            fMax = Math.max(fMax, ((LayoutParams) getChildAt(i).getLayoutParams()).a);
        }
        this.i = fMax;
        if (this.k.continueSettling(true) | this.l.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private static boolean h(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.y = drawable;
        invalidate();
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.y;
    }

    public void setStatusBarBackground(int i) {
        this.y = i != 0 ? ContextCompat.getDrawable(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.y = new ColorDrawable(i);
        invalidate();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        e();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int iA;
        super.onDraw(canvas);
        if (this.E && this.y != null && (iA = a.a(this.D)) > 0) {
            this.y.setBounds(0, 0, getWidth(), iA);
            this.y.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r10, android.view.View r11, long r12) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    boolean e(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    boolean f(View view) {
        return (GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view)) & 7) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0016  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            int r0 = android.support.v4.view.MotionEventCompat.getActionMasked(r8)
            android.support.v4.widget.ViewDragHelper r3 = r7.k
            boolean r3 = r3.shouldInterceptTouchEvent(r8)
            android.support.v4.widget.ViewDragHelper r4 = r7.l
            boolean r4 = r4.shouldInterceptTouchEvent(r8)
            r3 = r3 | r4
            switch(r0) {
                case 0: goto L27;
                case 1: goto L65;
                case 2: goto L50;
                case 3: goto L65;
                default: goto L16;
            }
        L16:
            r0 = r2
        L17:
            if (r3 != 0) goto L25
            if (r0 != 0) goto L25
            boolean r0 = r7.h()
            if (r0 != 0) goto L25
            boolean r0 = r7.u
            if (r0 == 0) goto L26
        L25:
            r2 = r1
        L26:
            return r2
        L27:
            float r0 = r8.getX()
            float r4 = r8.getY()
            r7.w = r0
            r7.x = r4
            float r5 = r7.i
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L6d
            android.support.v4.widget.ViewDragHelper r5 = r7.k
            int r0 = (int) r0
            int r4 = (int) r4
            android.view.View r0 = r5.findTopChildUnder(r0, r4)
            if (r0 == 0) goto L6d
            boolean r0 = r7.e(r0)
            if (r0 == 0) goto L6d
            r0 = r1
        L4b:
            r7.t = r2
            r7.u = r2
            goto L17
        L50:
            android.support.v4.widget.ViewDragHelper r0 = r7.k
            r4 = 3
            boolean r0 = r0.checkTouchSlop(r4)
            if (r0 == 0) goto L16
            android.support.v4.widget.DrawerLayout$f r0 = r7.m
            r0.a()
            android.support.v4.widget.DrawerLayout$f r0 = r7.n
            r0.a()
            r0 = r2
            goto L17
        L65:
            r7.a(r1)
            r7.t = r2
            r7.u = r2
            goto L16
        L6d:
            r0 = r2
            goto L4b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View viewA;
        this.k.processTouchEvent(motionEvent);
        this.l.processTouchEvent(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.w = x;
                this.x = y;
                this.t = false;
                this.u = false;
                return true;
            case 1:
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                View viewFindTopChildUnder = this.k.findTopChildUnder((int) x2, (int) y2);
                if (viewFindTopChildUnder != null && e(viewFindTopChildUnder)) {
                    float f2 = x2 - this.w;
                    float f3 = y2 - this.x;
                    int touchSlop = this.k.getTouchSlop();
                    z = (f2 * f2) + (f3 * f3) >= ((float) (touchSlop * touchSlop)) || (viewA = a()) == null || getDrawerLockMode(viewA) == 2;
                    a(z);
                    this.t = false;
                } else {
                    z = true;
                    a(z);
                    this.t = false;
                }
                return true;
            case 2:
            default:
                return true;
            case 3:
                a(true);
                this.t = false;
                this.u = false;
                return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.t = z;
        if (z) {
            a(true);
        }
    }

    public void closeDrawers() {
        a(false);
    }

    void a(boolean z) {
        int childCount = getChildCount();
        boolean zSmoothSlideViewTo = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (f(childAt) && (!z || layoutParams.b)) {
                int width = childAt.getWidth();
                if (a(childAt, 3)) {
                    zSmoothSlideViewTo |= this.k.smoothSlideViewTo(childAt, -width, childAt.getTop());
                } else {
                    zSmoothSlideViewTo |= this.l.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                }
                layoutParams.b = false;
            }
        }
        this.m.a();
        this.n.a();
        if (zSmoothSlideViewTo) {
            invalidate();
        }
    }

    public void openDrawer(View view) {
        if (!f(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.q) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.a = 1.0f;
            layoutParams.c = true;
            a(view, true);
        } else if (a(view, 3)) {
            this.k.smoothSlideViewTo(view, 0, view.getTop());
        } else {
            this.l.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
        }
        invalidate();
    }

    public void openDrawer(int i) {
        View viewA = a(i);
        if (viewA == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + b(i));
        }
        openDrawer(viewA);
    }

    public void closeDrawer(View view) {
        if (!f(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.q) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.a = 0.0f;
            layoutParams.c = false;
        } else if (a(view, 3)) {
            this.k.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
        } else {
            this.l.smoothSlideViewTo(view, getWidth(), view.getTop());
        }
        invalidate();
    }

    public void closeDrawer(int i) {
        View viewA = a(i);
        if (viewA == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + b(i));
        }
        closeDrawer(viewA);
    }

    public boolean isDrawerOpen(View view) {
        if (!f(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        return ((LayoutParams) view.getLayoutParams()).c;
    }

    public boolean isDrawerOpen(int i) {
        View viewA = a(i);
        if (viewA != null) {
            return isDrawerOpen(viewA);
        }
        return false;
    }

    public boolean isDrawerVisible(View view) {
        if (f(view)) {
            return ((LayoutParams) view.getLayoutParams()).a > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(int i) {
        View viewA = a(i);
        if (viewA != null) {
            return isDrawerVisible(viewA);
        }
        return false;
    }

    private boolean h() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).b) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (f(childAt)) {
                    if (isDrawerOpen(childAt)) {
                        z = true;
                        childAt.addFocusables(arrayList, i, i2);
                    }
                } else {
                    this.J.add(childAt);
                }
            }
            if (!z) {
                int size = this.J.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.J.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.J.clear();
        }
    }

    private boolean i() {
        return j() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View j() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (f(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    void b() {
        if (!this.u) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
            this.u = true;
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !i()) {
            return super.onKeyDown(i, keyEvent);
        }
        KeyEventCompat.startTracking(keyEvent);
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View viewJ = j();
            if (viewJ != null && getDrawerLockMode(viewJ) == 0) {
                closeDrawers();
            }
            return viewJ != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewA;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a != 0 && (viewA = a(savedState.a)) != null) {
            openDrawer(viewA);
        }
        setDrawerLockMode(savedState.b, 3);
        setDrawerLockMode(savedState.c, 5);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        View viewA = a();
        if (viewA != null) {
            savedState.a = ((LayoutParams) viewA.getLayoutParams()).gravity;
        }
        savedState.b = this.r;
        savedState.c = this.s;
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (a() != null || f(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (!c) {
            ViewCompat.setAccessibilityDelegate(view, this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean i(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.DrawerLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int a;
        int b;
        int c;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.a = 0;
            this.b = 0;
            this.c = 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }
    }

    class f extends ViewDragHelper.Callback {
        private final int b;
        private ViewDragHelper c;
        private final Runnable d = new Runnable() { // from class: android.support.v4.widget.DrawerLayout.f.1
            @Override // java.lang.Runnable
            public void run() {
                f.this.c();
            }
        };

        public f(int i) {
            this.b = i;
        }

        public void a(ViewDragHelper viewDragHelper) {
            this.c = viewDragHelper;
        }

        public void a() {
            DrawerLayout.this.removeCallbacks(this.d);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return DrawerLayout.this.f(view) && DrawerLayout.this.a(view, this.b) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.a(this.b, i, this.c.getCapturedView());
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width;
            int width2 = view.getWidth();
            if (DrawerLayout.this.a(view, 3)) {
                width = (width2 + i) / width2;
            } else {
                width = (DrawerLayout.this.getWidth() - i) / width2;
            }
            DrawerLayout.this.b(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).b = false;
            b();
        }

        private void b() {
            View viewA = DrawerLayout.this.a(this.b == 3 ? 5 : 3);
            if (viewA != null) {
                DrawerLayout.this.closeDrawer(viewA);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int width;
            float fC = DrawerLayout.this.c(view);
            int width2 = view.getWidth();
            if (DrawerLayout.this.a(view, 3)) {
                width = (f > 0.0f || (f == 0.0f && fC > 0.5f)) ? 0 : -width2;
            } else {
                width = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && fC > 0.5f)) {
                    width -= width2;
                }
            }
            this.c.settleCapturedViewAt(width, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.d, 160L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            View view;
            int i;
            int edgeSize = this.c.getEdgeSize();
            boolean z = this.b == 3;
            if (z) {
                View viewA = DrawerLayout.this.a(3);
                int i2 = (viewA != null ? -viewA.getWidth() : 0) + edgeSize;
                view = viewA;
                i = i2;
            } else {
                View viewA2 = DrawerLayout.this.a(5);
                int width = DrawerLayout.this.getWidth() - edgeSize;
                view = viewA2;
                i = width;
            }
            if (view != null) {
                if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.getDrawerLockMode(view) == 0) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    this.c.smoothSlideViewTo(view, i, view.getTop());
                    layoutParams.b = true;
                    DrawerLayout.this.invalidate();
                    b();
                    DrawerLayout.this.b();
                }
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i) {
            return false;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i, int i2) {
            View viewA;
            if ((i & 1) == 1) {
                viewA = DrawerLayout.this.a(3);
            } else {
                viewA = DrawerLayout.this.a(5);
            }
            if (viewA != null && DrawerLayout.this.getDrawerLockMode(viewA) == 0) {
                this.c.captureChildView(viewA, i2);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.f(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        float a;
        boolean b;
        boolean c;
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.b);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    class a extends AccessibilityDelegateCompat {
        private final Rect c = new Rect();

        a() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.c) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompat.setSource(view);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                a(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompatObtain.recycle();
                a(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewJ = DrawerLayout.this.j();
            if (viewJ != null) {
                CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.d(viewJ));
                if (drawerTitle != null) {
                    text.add(drawerTitle);
                }
            }
            return true;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.c || DrawerLayout.i(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.i(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.c;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }
    }

    final class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!DrawerLayout.i(view)) {
                accessibilityNodeInfoCompat.setParent(null);
            }
        }
    }
}
