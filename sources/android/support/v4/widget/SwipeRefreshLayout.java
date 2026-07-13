package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import com.google.common.primitives.Ints;
import defpackage.es;

/* JADX INFO: loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingChild, NestedScrollingParent {
    public static final int DEFAULT = 1;
    public static final int LARGE = 0;
    private static final String a = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] u = {R.attr.enabled};
    private Animation A;
    private Animation B;
    private Animation C;
    private Animation D;
    private float E;
    private boolean F;
    private int G;
    private int H;
    private boolean I;
    private Animation.AnimationListener J;
    private final Animation K;
    private final Animation L;
    private final Animation M;
    private View b;
    private OnRefreshListener c;
    private boolean d;
    private int e;
    private float f;
    private float g;
    private final NestedScrollingParentHelper h;
    private final NestedScrollingChildHelper i;
    private final int[] j;
    private int k;
    private int l;
    private boolean m;
    protected int mFrom;
    protected int mOriginalOffsetTop;
    private float n;
    private float o;
    private boolean p;
    private int q;
    private boolean r;
    private boolean s;
    private final DecelerateInterpolator t;
    private es v;
    private int w;
    private float x;
    private MaterialProgressDrawable y;
    private Animation z;

    public interface OnRefreshListener {
        void onRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setColorViewAlpha(int i) {
        this.v.getBackground().setAlpha(i);
        this.y.setAlpha(i);
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.r = z;
        this.v.setVisibility(8);
        this.l = i;
        this.mOriginalOffsetTop = i;
        this.E = i2;
        this.I = true;
        this.v.invalidate();
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.E = i;
        this.r = z;
        this.v.invalidate();
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                int i2 = (int) (displayMetrics.density * 56.0f);
                this.G = i2;
                this.H = i2;
            } else {
                int i3 = (int) (displayMetrics.density * 40.0f);
                this.G = i3;
                this.H = i3;
            }
            this.v.setImageDrawable(null);
            this.y.a(i);
            this.v.setImageDrawable(this.y);
        }
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = false;
        this.f = -1.0f;
        this.j = new int[2];
        this.m = false;
        this.q = -1;
        this.w = -1;
        this.J = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.d) {
                    SwipeRefreshLayout.this.y.setAlpha(255);
                    SwipeRefreshLayout.this.y.start();
                    if (SwipeRefreshLayout.this.F && SwipeRefreshLayout.this.c != null) {
                        SwipeRefreshLayout.this.c.onRefresh();
                    }
                } else {
                    SwipeRefreshLayout.this.y.stop();
                    SwipeRefreshLayout.this.v.setVisibility(8);
                    SwipeRefreshLayout.this.setColorViewAlpha(255);
                    if (SwipeRefreshLayout.this.r) {
                        SwipeRefreshLayout.this.setAnimationProgress(0.0f);
                    } else {
                        SwipeRefreshLayout.this.a(SwipeRefreshLayout.this.mOriginalOffsetTop - SwipeRefreshLayout.this.l, true);
                    }
                }
                SwipeRefreshLayout.this.l = SwipeRefreshLayout.this.v.getTop();
            }
        };
        this.K = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a((((int) (((!SwipeRefreshLayout.this.I ? (int) (SwipeRefreshLayout.this.E - Math.abs(SwipeRefreshLayout.this.mOriginalOffsetTop)) : (int) SwipeRefreshLayout.this.E) - SwipeRefreshLayout.this.mFrom) * f)) + SwipeRefreshLayout.this.mFrom) - SwipeRefreshLayout.this.v.getTop(), false);
                SwipeRefreshLayout.this.y.a(1.0f - f);
            }
        };
        this.L = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a((((int) (((!SwipeRefreshLayout.this.I ? (int) (SwipeRefreshLayout.this.E - Math.abs(SwipeRefreshLayout.this.mOriginalOffsetTop)) : (int) SwipeRefreshLayout.this.E) - SwipeRefreshLayout.this.mFrom) * f)) + SwipeRefreshLayout.this.mFrom) - SwipeRefreshLayout.this.v.getTop(), false);
                SwipeRefreshLayout.this.y.a(1.0f - f);
            }
        };
        this.M = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.c(f);
            }
        };
        this.e = ViewConfiguration.get(context).getScaledTouchSlop();
        this.k = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.t = new DecelerateInterpolator(2.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, u);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.G = (int) (displayMetrics.density * 40.0f);
        this.H = (int) (displayMetrics.density * 40.0f);
        a();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
        this.E = displayMetrics.density * 64.0f;
        this.f = this.E;
        this.h = new NestedScrollingParentHelper(this);
        this.i = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.w >= 0) {
            if (i2 == i - 1) {
                return this.w;
            }
            if (i2 >= this.w) {
                return i2 + 1;
            }
            return i2;
        }
        return i2;
    }

    private void a() {
        this.v = new es(getContext(), -328966, 20.0f);
        this.y = new MaterialProgressDrawable(getContext(), this);
        this.y.b(-328966);
        this.v.setImageDrawable(this.y);
        this.v.setVisibility(8);
        addView(this.v);
    }

    public void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.c = onRefreshListener;
    }

    private boolean b() {
        return Build.VERSION.SDK_INT < 11;
    }

    public void setRefreshing(boolean z) {
        int i;
        if (z && this.d != z) {
            this.d = z;
            if (!this.I) {
                i = (int) (this.E + this.mOriginalOffsetTop);
            } else {
                i = (int) this.E;
            }
            a(i - this.l, true);
            this.F = false;
            a(this.J);
            return;
        }
        a(z, false);
    }

    private void a(Animation.AnimationListener animationListener) {
        this.v.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.y.setAlpha(255);
        }
        this.z = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.z.setDuration(this.k);
        if (animationListener != null) {
            this.v.a(animationListener);
        }
        this.v.clearAnimation();
        this.v.startAnimation(this.z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimationProgress(float f) {
        if (b()) {
            setColorViewAlpha((int) (255.0f * f));
        } else {
            ViewCompat.setScaleX(this.v, f);
            ViewCompat.setScaleY(this.v, f);
        }
    }

    private void a(boolean z, boolean z2) {
        if (this.d != z) {
            this.F = z2;
            e();
            this.d = z;
            if (this.d) {
                a(this.l, this.J);
            } else {
                b(this.J);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Animation.AnimationListener animationListener) {
        this.A = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.A.setDuration(150L);
        this.v.a(animationListener);
        this.v.clearAnimation();
        this.v.startAnimation(this.A);
    }

    private void c() {
        this.B = a(this.y.getAlpha(), 76);
    }

    private void d() {
        this.C = a(this.y.getAlpha(), 255);
    }

    private Animation a(final int i, final int i2) {
        if (this.r && b()) {
            return null;
        }
        Animation animation = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.y.setAlpha((int) (i + ((i2 - i) * f)));
            }
        };
        animation.setDuration(300L);
        this.v.a((Animation.AnimationListener) null);
        this.v.clearAnimation();
        this.v.startAnimation(animation);
        return animation;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i));
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i) {
        this.v.setBackgroundColor(i);
        this.y.b(i);
    }

    @Deprecated
    public void setColorScheme(@ColorInt int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = resources.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    @ColorInt
    public void setColorSchemeColors(int... iArr) {
        e();
        this.y.a(iArr);
    }

    public boolean isRefreshing() {
        return this.d;
    }

    private void e() {
        if (this.b == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.v)) {
                    this.b = childAt;
                    return;
                }
            }
        }
    }

    public void setDistanceToTriggerSync(int i) {
        this.f = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.b == null) {
                e();
            }
            if (this.b != null) {
                View view = this.b;
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.v.getMeasuredWidth();
                this.v.layout((measuredWidth / 2) - (measuredWidth2 / 2), this.l, (measuredWidth / 2) + (measuredWidth2 / 2), this.l + this.v.getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b == null) {
            e();
        }
        if (this.b != null) {
            this.b.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), Ints.MAX_POWER_OF_TWO), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), Ints.MAX_POWER_OF_TWO));
            this.v.measure(View.MeasureSpec.makeMeasureSpec(this.G, Ints.MAX_POWER_OF_TWO), View.MeasureSpec.makeMeasureSpec(this.H, Ints.MAX_POWER_OF_TWO));
            if (!this.I && !this.m) {
                this.m = true;
                int i3 = -this.v.getMeasuredHeight();
                this.mOriginalOffsetTop = i3;
                this.l = i3;
            }
            this.w = -1;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                if (getChildAt(i4) == this.v) {
                    this.w = i4;
                    return;
                }
            }
        }
    }

    public int getProgressCircleDiameter() {
        if (this.v != null) {
            return this.v.getMeasuredHeight();
        }
        return 0;
    }

    public boolean canChildScrollUp() {
        if (Build.VERSION.SDK_INT < 14) {
            if (this.b instanceof AbsListView) {
                AbsListView absListView = (AbsListView) this.b;
                return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
            }
            return ViewCompat.canScrollVertically(this.b, -1) || this.b.getScrollY() > 0;
        }
        return ViewCompat.canScrollVertically(this.b, -1);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        e();
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.s && actionMasked == 0) {
            this.s = false;
        }
        if (!isEnabled() || this.s || canChildScrollUp() || this.d) {
            return false;
        }
        switch (actionMasked) {
            case 0:
                a(this.mOriginalOffsetTop - this.v.getTop(), true);
                this.q = MotionEventCompat.getPointerId(motionEvent, 0);
                this.p = false;
                float fA = a(motionEvent, this.q);
                if (fA == -1.0f) {
                    return false;
                }
                this.o = fA;
                break;
                break;
            case 1:
            case 3:
                this.p = false;
                this.q = -1;
                break;
            case 2:
                if (this.q == -1) {
                    Log.e(a, "Got ACTION_MOVE event but don't have an active pointer id.");
                    return false;
                }
                float fA2 = a(motionEvent, this.q);
                if (fA2 == -1.0f) {
                    return false;
                }
                if (fA2 - this.o > this.e && !this.p) {
                    this.n = this.o + this.e;
                    this.p = true;
                    this.y.setAlpha(76);
                }
                break;
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return this.p;
    }

    private float a(MotionEvent motionEvent, int i) {
        int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, i);
        if (iFindPointerIndex < 0) {
            return -1.0f;
        }
        return MotionEventCompat.getY(motionEvent, iFindPointerIndex);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.b instanceof AbsListView)) {
            if (this.b == null || ViewCompat.isNestedScrollingEnabled(this.b)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if (!isEnabled() || (i & 2) == 0) {
            return false;
        }
        startNestedScroll(i & 2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.h.onNestedScrollAccepted(view, view2, i);
        this.g = 0.0f;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0 && this.g > 0.0f) {
            if (i2 > this.g) {
                iArr[1] = i2 - ((int) this.g);
                this.g = 0.0f;
            } else {
                this.g -= i2;
                iArr[1] = i2;
            }
            a(this.g);
        }
        int[] iArr2 = this.j;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr2[1] + iArr[1];
        }
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.h.getNestedScrollAxes();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.h.onStopNestedScroll(view);
        if (this.g > 0.0f) {
            b(this.g);
            this.g = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        if (i4 < 0) {
            this.g = Math.abs(i4) + this.g;
            a(this.g);
        }
        dispatchNestedScroll(i, i2, i3, i, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        this.i.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.i.isNestedScrollingEnabled();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return this.i.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.i.stopNestedScroll();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.i.hasNestedScrollingParent();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.i.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.i.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.i.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.i.dispatchNestedPreFling(f, f2);
    }

    private boolean a(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void a(float f) {
        this.y.a(true);
        float fMin = Math.min(1.0f, Math.abs(f / this.f));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f) - this.f;
        float f2 = this.I ? this.E - this.mOriginalOffsetTop : this.E;
        float fMax2 = ((float) (((double) (Math.max(0.0f, Math.min(fAbs, f2 * 2.0f) / f2) / 4.0f)) - Math.pow(r3 / 4.0f, 2.0d))) * 2.0f;
        int i = ((int) ((f2 * fMin) + (f2 * fMax2 * 2.0f))) + this.mOriginalOffsetTop;
        if (this.v.getVisibility() != 0) {
            this.v.setVisibility(0);
        }
        if (!this.r) {
            ViewCompat.setScaleX(this.v, 1.0f);
            ViewCompat.setScaleY(this.v, 1.0f);
        }
        if (f < this.f) {
            if (this.r) {
                setAnimationProgress(f / this.f);
            }
            if (this.y.getAlpha() > 76 && !a(this.B)) {
                c();
            }
            this.y.a(0.0f, Math.min(0.8f, fMax * 0.8f));
            this.y.a(Math.min(1.0f, fMax));
        } else if (this.y.getAlpha() < 255 && !a(this.C)) {
            d();
        }
        this.y.b(((-0.25f) + (fMax * 0.4f) + (fMax2 * 2.0f)) * 0.5f);
        a(i - this.l, true);
    }

    private void b(float f) {
        if (f > this.f) {
            a(true, true);
            return;
        }
        this.d = false;
        this.y.a(0.0f, 0.0f);
        Animation.AnimationListener animationListener = null;
        if (!this.r) {
            animationListener = new Animation.AnimationListener() { // from class: android.support.v4.widget.SwipeRefreshLayout.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (!SwipeRefreshLayout.this.r) {
                        SwipeRefreshLayout.this.b((Animation.AnimationListener) null);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            };
        }
        b(this.l, animationListener);
        this.y.a(false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.s && actionMasked == 0) {
            this.s = false;
        }
        if (!isEnabled() || this.s || canChildScrollUp()) {
            return false;
        }
        switch (actionMasked) {
            case 0:
                this.q = MotionEventCompat.getPointerId(motionEvent, 0);
                this.p = false;
                break;
            case 1:
            case 3:
                if (this.q == -1) {
                    if (actionMasked != 1) {
                        return false;
                    }
                    Log.e(a, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                float y = (MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.q)) - this.n) * 0.5f;
                this.p = false;
                b(y);
                this.q = -1;
                return false;
            case 2:
                int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.q);
                if (iFindPointerIndex < 0) {
                    Log.e(a, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = (MotionEventCompat.getY(motionEvent, iFindPointerIndex) - this.n) * 0.5f;
                if (this.p) {
                    if (y2 <= 0.0f) {
                        return false;
                    }
                    a(y2);
                }
                break;
                break;
            case 5:
                this.q = MotionEventCompat.getPointerId(motionEvent, MotionEventCompat.getActionIndex(motionEvent));
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return true;
    }

    private void a(int i, Animation.AnimationListener animationListener) {
        this.mFrom = i;
        this.K.reset();
        this.K.setDuration(200L);
        this.K.setInterpolator(this.t);
        if (animationListener != null) {
            this.v.a(animationListener);
        }
        this.v.clearAnimation();
        this.v.startAnimation(this.K);
    }

    private void b(int i, Animation.AnimationListener animationListener) {
        if (this.r) {
            c(i, animationListener);
            return;
        }
        this.mFrom = i;
        this.M.reset();
        this.M.setDuration(200L);
        this.M.setInterpolator(this.t);
        if (animationListener != null) {
            this.v.a(animationListener);
        }
        this.v.clearAnimation();
        this.v.startAnimation(this.M);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(float f) {
        a((this.mFrom + ((int) ((this.mOriginalOffsetTop - this.mFrom) * f))) - this.v.getTop(), false);
    }

    private void c(int i, Animation.AnimationListener animationListener) {
        this.mFrom = i;
        if (b()) {
            this.x = this.y.getAlpha();
        } else {
            this.x = ViewCompat.getScaleX(this.v);
        }
        this.D = new Animation() { // from class: android.support.v4.widget.SwipeRefreshLayout.9
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(SwipeRefreshLayout.this.x + ((-SwipeRefreshLayout.this.x) * f));
                SwipeRefreshLayout.this.c(f);
            }
        };
        this.D.setDuration(150L);
        if (animationListener != null) {
            this.v.a(animationListener);
        }
        this.v.clearAnimation();
        this.v.startAnimation(this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        this.v.bringToFront();
        this.v.offsetTopAndBottom(i);
        this.l = this.v.getTop();
        if (z && Build.VERSION.SDK_INT < 11) {
            invalidate();
        }
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.q) {
            this.q = MotionEventCompat.getPointerId(motionEvent, actionIndex == 0 ? 1 : 0);
        }
    }
}
