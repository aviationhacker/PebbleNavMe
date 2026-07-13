package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.app.AppCompatDelegate;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements NestedScrollingParent, DecorContentParent {
    static final int[] a = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    private final Runnable A;
    private final NestedScrollingParentHelper B;
    private int b;
    private int c;
    private ContentFrameLayout d;
    private ActionBarContainer e;
    private DecorToolbar f;
    private Drawable g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private final Rect o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private ActionBarVisibilityCallback u;
    private final int v;
    private ScrollerCompat w;
    private ViewPropertyAnimatorCompat x;
    private final ViewPropertyAnimatorListener y;
    private final Runnable z;

    public interface ActionBarVisibilityCallback {
        void enableContentAnimations(boolean z);

        void hideForSystem();

        void onContentScrollStarted();

        void onContentScrollStopped();

        void onWindowVisibilityChanged(int i);

        void showForSystem();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.v = 600;
        this.y = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.widget.ActionBarOverlayLayout.1
            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                ActionBarOverlayLayout.this.x = null;
                ActionBarOverlayLayout.this.l = false;
            }

            @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
            public void onAnimationCancel(View view) {
                ActionBarOverlayLayout.this.x = null;
                ActionBarOverlayLayout.this.l = false;
            }
        };
        this.z = new Runnable() { // from class: android.support.v7.internal.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.b();
                ActionBarOverlayLayout.this.x = ViewCompat.animate(ActionBarOverlayLayout.this.e).translationY(0.0f).setListener(ActionBarOverlayLayout.this.y);
            }
        };
        this.A = new Runnable() { // from class: android.support.v7.internal.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.b();
                ActionBarOverlayLayout.this.x = ViewCompat.animate(ActionBarOverlayLayout.this.e).translationY(-ActionBarOverlayLayout.this.e.getHeight()).setListener(ActionBarOverlayLayout.this.y);
            }
        };
        a(context);
        this.B = new NestedScrollingParentHelper(this);
    }

    private void a(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(a);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.g = typedArrayObtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.g == null);
        typedArrayObtainStyledAttributes.recycle();
        this.h = context.getApplicationInfo().targetSdkVersion < 19;
        this.w = ScrollerCompat.create(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.u = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.u.onWindowVisibilityChanged(this.c);
            if (this.n != 0) {
                onWindowSystemUiVisibilityChanged(this.n);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.i = z;
        this.h = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public boolean isInOverlayMode() {
        return this.i;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.j = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        a(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        a();
        int i2 = this.n ^ i;
        this.n = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        if (this.u != null) {
            this.u.enableContentAnimations(z2 ? false : true);
            if (z || !z2) {
                this.u.showForSystem();
            } else {
                this.u.hideForSystem();
            }
        }
        if ((i2 & 256) != 0 && this.u != null) {
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.c = i;
        if (this.u != null) {
            this.u.onWindowVisibilityChanged(i);
        }
    }

    private boolean a(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (z && layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z5;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        a();
        if ((ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0) {
        }
        boolean zA = a(this.e, rect, true, true, false, true);
        this.r.set(rect);
        ViewUtils.computeFitSystemWindows(this, this.r, this.o);
        if (!this.p.equals(this.o)) {
            this.p.set(this.o);
            zA = true;
        }
        if (zA) {
            requestLayout();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        a();
        measureChildWithMargins(this.e, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.e.getLayoutParams();
        int iMax = Math.max(0, this.e.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int iMax2 = Math.max(0, layoutParams.bottomMargin + this.e.getMeasuredHeight() + layoutParams.topMargin);
        int iCombineMeasuredStates = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState(this.e));
        boolean z = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z) {
            measuredHeight = this.b;
            if (this.j && this.e.getTabContainer() != null) {
                measuredHeight += this.b;
            }
        } else {
            measuredHeight = this.e.getVisibility() != 8 ? this.e.getMeasuredHeight() : 0;
        }
        this.q.set(this.o);
        this.s.set(this.r);
        if (!this.i && !z) {
            Rect rect = this.q;
            rect.top = measuredHeight + rect.top;
            this.q.bottom += 0;
        } else {
            Rect rect2 = this.s;
            rect2.top = measuredHeight + rect2.top;
            this.s.bottom += 0;
        }
        a(this.d, this.q, true, true, true, true);
        if (!this.t.equals(this.s)) {
            this.t.set(this.s);
            this.d.dispatchFitSystemWindows(this.s);
        }
        measureChildWithMargins(this.d, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.d.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
        int iMax4 = Math.max(iMax2, layoutParams2.bottomMargin + this.d.getMeasuredHeight() + layoutParams2.topMargin);
        int iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates, ViewCompat.getMeasuredState(this.d));
        setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), ViewCompat.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = layoutParams.leftMargin + paddingLeft;
                int i7 = layoutParams.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.g != null && !this.h) {
            int bottom = this.e.getVisibility() == 0 ? (int) (this.e.getBottom() + ViewCompat.getTranslationY(this.e) + 0.5f) : 0;
            this.g.setBounds(0, bottom, getWidth(), this.g.getIntrinsicHeight() + bottom);
            this.g.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.e.getVisibility() != 0) {
            return false;
        }
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.B.onNestedScrollAccepted(view, view2, i);
        this.m = getActionBarHideOffset();
        b();
        if (this.u != null) {
            this.u.onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.m += i2;
        setActionBarHideOffset(this.m);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.k && !this.l) {
            if (this.m <= this.e.getHeight()) {
                c();
            } else {
                d();
            }
        }
        if (this.u != null) {
            this.u.onContentScrollStopped();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.k || !z) {
            return false;
        }
        if (a(f, f2)) {
            f();
        } else {
            e();
        }
        this.l = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.B.getNestedScrollAxes();
    }

    void a() {
        if (this.d == null) {
            this.d = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.e = (ActionBarContainer) findViewById(R.id.action_bar_container);
            this.f = a(findViewById(R.id.action_bar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar a(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.k) {
            this.k = z;
            if (!z) {
                b();
                setActionBarHideOffset(0);
            }
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.k;
    }

    public int getActionBarHideOffset() {
        if (this.e != null) {
            return -((int) ViewCompat.getTranslationY(this.e));
        }
        return 0;
    }

    public void setActionBarHideOffset(int i) {
        b();
        ViewCompat.setTranslationY(this.e, -Math.max(0, Math.min(i, this.e.getHeight())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        if (this.x != null) {
            this.x.cancel();
        }
    }

    private void c() {
        b();
        postDelayed(this.z, 600L);
    }

    private void d() {
        b();
        postDelayed(this.A, 600L);
    }

    private void e() {
        b();
        this.z.run();
    }

    private void f() {
        b();
        this.A.run();
    }

    private boolean a(float f, float f2) {
        this.w.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.w.getFinalY() > this.e.getHeight();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        a();
        this.f.setWindowCallback(callback);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        a();
        this.f.setWindowTitle(charSequence);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public CharSequence getTitle() {
        a();
        return this.f.getTitle();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void initFeature(int i) {
        a();
        switch (i) {
            case 2:
                this.f.initProgress();
                break;
            case 5:
                this.f.initIndeterminateProgress();
                break;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                setOverlayMode(true);
                break;
        }
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setUiOptions(int i) {
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean hasIcon() {
        a();
        return this.f.hasIcon();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean hasLogo() {
        a();
        return this.f.hasLogo();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setIcon(int i) {
        a();
        this.f.setIcon(i);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setIcon(Drawable drawable) {
        a();
        this.f.setIcon(drawable);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setLogo(int i) {
        a();
        this.f.setLogo(i);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean canShowOverflowMenu() {
        a();
        return this.f.canShowOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean isOverflowMenuShowing() {
        a();
        return this.f.isOverflowMenuShowing();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean isOverflowMenuShowPending() {
        a();
        return this.f.isOverflowMenuShowPending();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean showOverflowMenu() {
        a();
        return this.f.showOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public boolean hideOverflowMenu() {
        a();
        return this.f.hideOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setMenuPrepared() {
        a();
        this.f.setMenuPrepared();
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        a();
        this.f.setMenu(menu, callback);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        a();
        this.f.saveHierarchyState(sparseArray);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        a();
        this.f.restoreHierarchyState(sparseArray);
    }

    @Override // android.support.v7.internal.widget.DecorContentParent
    public void dismissPopups() {
        a();
        this.f.dismissPopupMenus();
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }
}
