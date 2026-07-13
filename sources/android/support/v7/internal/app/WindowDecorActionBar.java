package android.support.v7.internal.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.app.ActionBar;
import android.support.v7.internal.view.ActionBarPolicy;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.internal.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuPopupHelper;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.DecorToolbar;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import defpackage.fr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    static final /* synthetic */ boolean h;
    private static final Interpolator i;
    private static final Interpolator j;
    private static final boolean k;
    private boolean B;
    private boolean E;
    private boolean F;
    private boolean G;
    private ViewPropertyAnimatorCompatSet I;
    private boolean J;
    private TintManager K;
    ActionModeImpl a;
    ActionMode b;
    ActionMode.Callback c;
    boolean d;
    private Context l;
    private Context m;
    private Activity n;
    private Dialog o;
    private ActionBarOverlayLayout p;
    private ActionBarContainer q;
    private DecorToolbar r;
    private ActionBarContextView s;
    private View t;
    private ScrollingTabContainerView u;
    private TabImpl w;
    private boolean y;
    private boolean z;
    private ArrayList<TabImpl> v = new ArrayList<>();
    private int x = -1;
    private ArrayList<ActionBar.OnMenuVisibilityListener> A = new ArrayList<>();
    private int C = 0;
    private boolean D = true;
    private boolean H = true;
    final ViewPropertyAnimatorListener e = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.app.WindowDecorActionBar.1
        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (WindowDecorActionBar.this.D && WindowDecorActionBar.this.t != null) {
                ViewCompat.setTranslationY(WindowDecorActionBar.this.t, 0.0f);
                ViewCompat.setTranslationY(WindowDecorActionBar.this.q, 0.0f);
            }
            WindowDecorActionBar.this.q.setVisibility(8);
            WindowDecorActionBar.this.q.setTransitioning(false);
            WindowDecorActionBar.this.I = null;
            WindowDecorActionBar.this.a();
            if (WindowDecorActionBar.this.p != null) {
                ViewCompat.requestApplyInsets(WindowDecorActionBar.this.p);
            }
        }
    };
    final ViewPropertyAnimatorListener f = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.app.WindowDecorActionBar.2
        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            WindowDecorActionBar.this.I = null;
            WindowDecorActionBar.this.q.requestLayout();
        }
    };
    final ViewPropertyAnimatorUpdateListener g = new ViewPropertyAnimatorUpdateListener() { // from class: android.support.v7.internal.app.WindowDecorActionBar.3
        @Override // android.support.v4.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) WindowDecorActionBar.this.q.getParent()).invalidate();
        }
    };

    static {
        h = !WindowDecorActionBar.class.desiredAssertionStatus();
        i = new AccelerateInterpolator();
        j = new DecelerateInterpolator();
        k = Build.VERSION.SDK_INT >= 14;
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        this.n = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z) {
            this.t = decorView.findViewById(R.id.content);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        this.o = dialog;
        a(dialog.getWindow().getDecorView());
    }

    public WindowDecorActionBar(View view) {
        if (!h && !view.isInEditMode()) {
            throw new AssertionError();
        }
        a(view);
    }

    private void a(View view) {
        this.p = (ActionBarOverlayLayout) view.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
        if (this.p != null) {
            this.p.setActionBarVisibilityCallback(this);
        }
        this.r = b(view.findViewById(android.support.v7.appcompat.R.id.action_bar));
        this.s = (ActionBarContextView) view.findViewById(android.support.v7.appcompat.R.id.action_context_bar);
        this.q = (ActionBarContainer) view.findViewById(android.support.v7.appcompat.R.id.action_bar_container);
        if (this.r == null || this.s == null || this.q == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.l = this.r.getContext();
        boolean z = (this.r.getDisplayOptions() & 4) != 0;
        if (z) {
            this.y = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.l);
        setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || z);
        a(actionBarPolicy.hasEmbeddedTabs());
        TypedArray typedArrayObtainStyledAttributes = this.l.obtainStyledAttributes(null, android.support.v7.appcompat.R.styleable.ActionBar, android.support.v7.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar b(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException(new StringBuilder().append("Can't make a decor toolbar out of ").append(view).toString() != null ? view.getClass().getSimpleName() : "null");
    }

    @Override // android.support.v7.app.ActionBar
    public void setElevation(float f) {
        ViewCompat.setElevation(this.q, f);
    }

    @Override // android.support.v7.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.q);
    }

    @Override // android.support.v7.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        a(ActionBarPolicy.get(this.l).hasEmbeddedTabs());
    }

    private void a(boolean z) {
        this.B = z;
        if (!this.B) {
            this.r.setEmbeddedTabView(null);
            this.q.setTabContainer(this.u);
        } else {
            this.q.setTabContainer(null);
            this.r.setEmbeddedTabView(this.u);
        }
        boolean z2 = getNavigationMode() == 2;
        if (this.u != null) {
            if (z2) {
                this.u.setVisibility(0);
                if (this.p != null) {
                    ViewCompat.requestApplyInsets(this.p);
                }
            } else {
                this.u.setVisibility(8);
            }
        }
        this.r.setCollapsible(!this.B && z2);
        this.p.setHasNonEmbeddedTabs(!this.B && z2);
    }

    private void c() {
        if (this.u == null) {
            ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.l);
            if (this.B) {
                scrollingTabContainerView.setVisibility(0);
                this.r.setEmbeddedTabView(scrollingTabContainerView);
            } else {
                if (getNavigationMode() == 2) {
                    scrollingTabContainerView.setVisibility(0);
                    if (this.p != null) {
                        ViewCompat.requestApplyInsets(this.p);
                    }
                } else {
                    scrollingTabContainerView.setVisibility(8);
                }
                this.q.setTabContainer(scrollingTabContainerView);
            }
            this.u = scrollingTabContainerView;
        }
    }

    void a() {
        if (this.c != null) {
            this.c.onDestroyActionMode(this.b);
            this.b = null;
            this.c = null;
        }
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i2) {
        this.C = i2;
    }

    @Override // android.support.v7.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z) {
        this.J = z;
        if (!z && this.I != null) {
            this.I.cancel();
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.A.add(onMenuVisibilityListener);
    }

    @Override // android.support.v7.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.A.remove(onMenuVisibilityListener);
    }

    @Override // android.support.v7.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z) {
        if (z != this.z) {
            this.z = z;
            int size = this.A.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A.get(i2).onMenuVisibilityChanged(z);
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i2, this.r.getViewGroup(), false));
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
        this.r.setHomeButtonEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public void setTitle(int i2) {
        setTitle(this.l.getString(i2));
    }

    @Override // android.support.v7.app.ActionBar
    public void setSubtitle(int i2) {
        setSubtitle(this.l.getString(i2));
    }

    @Override // android.support.v7.app.ActionBar
    public void setSelectedNavigationItem(int i2) {
        switch (this.r.getNavigationMode()) {
            case 1:
                this.r.setDropdownSelectedPosition(i2);
                return;
            case 2:
                selectTab(this.v.get(i2));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void removeAllTabs() {
        d();
    }

    private void d() {
        if (this.w != null) {
            selectTab(null);
        }
        this.v.clear();
        if (this.u != null) {
            this.u.removeAllTabs();
        }
        this.x = -1;
    }

    @Override // android.support.v7.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.r.setTitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.r.setWindowTitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.r.setSubtitle(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayOptions(int i2) {
        if ((i2 & 4) != 0) {
            this.y = true;
        }
        this.r.setDisplayOptions(i2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setDisplayOptions(int i2, int i3) {
        int displayOptions = this.r.getDisplayOptions();
        if ((i3 & 4) != 0) {
            this.y = true;
        }
        this.r.setDisplayOptions((displayOptions & (i3 ^ (-1))) | (i2 & i3));
    }

    @Override // android.support.v7.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.q.setPrimaryBackground(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.q.setStackedBackground(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.support.v7.app.ActionBar
    public View getCustomView() {
        return this.r.getCustomView();
    }

    @Override // android.support.v7.app.ActionBar
    public CharSequence getTitle() {
        return this.r.getTitle();
    }

    @Override // android.support.v7.app.ActionBar
    public CharSequence getSubtitle() {
        return this.r.getSubtitle();
    }

    @Override // android.support.v7.app.ActionBar
    public int getNavigationMode() {
        return this.r.getNavigationMode();
    }

    @Override // android.support.v7.app.ActionBar
    public int getDisplayOptions() {
        return this.r.getDisplayOptions();
    }

    @Override // android.support.v7.app.ActionBar
    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.a != null) {
            this.a.finish();
        }
        this.p.setHideOnContentScrollEnabled(false);
        this.s.killMode();
        ActionModeImpl actionModeImpl = new ActionModeImpl(this.s.getContext(), callback);
        if (!actionModeImpl.dispatchOnCreate()) {
            return null;
        }
        actionModeImpl.invalidate();
        this.s.initForMode(actionModeImpl);
        animateToMode(true);
        this.s.sendAccessibilityEvent(32);
        this.a = actionModeImpl;
        return actionModeImpl;
    }

    private void a(ActionBar.Tab tab, int i2) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tabImpl.setPosition(i2);
        this.v.add(i2, tabImpl);
        int size = this.v.size();
        for (int i3 = i2 + 1; i3 < size; i3++) {
            this.v.get(i3).setPosition(i3);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.v.isEmpty());
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2) {
        addTab(tab, i2, this.v.isEmpty());
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        c();
        this.u.addTab(tab, z);
        a(tab, this.v.size());
        if (z) {
            selectTab(tab);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2, boolean z) {
        c();
        this.u.addTab(tab, i2, z);
        a(tab, i2);
        if (z) {
            selectTab(tab);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // android.support.v7.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // android.support.v7.app.ActionBar
    public void removeTabAt(int i2) {
        if (this.u != null) {
            int position = this.w != null ? this.w.getPosition() : this.x;
            this.u.removeTabAt(i2);
            TabImpl tabImplRemove = this.v.remove(i2);
            if (tabImplRemove != null) {
                tabImplRemove.setPosition(-1);
            }
            int size = this.v.size();
            for (int i3 = i2; i3 < size; i3++) {
                this.v.get(i3).setPosition(i3);
            }
            if (position == i2) {
                selectTab(this.v.isEmpty() ? null : this.v.get(Math.max(0, i2 - 1)));
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        FragmentTransaction fragmentTransactionDisallowAddToBackStack;
        if (getNavigationMode() != 2) {
            this.x = tab != null ? tab.getPosition() : -1;
            return;
        }
        if ((this.n instanceof FragmentActivity) && !this.r.getViewGroup().isInEditMode()) {
            fragmentTransactionDisallowAddToBackStack = ((FragmentActivity) this.n).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        } else {
            fragmentTransactionDisallowAddToBackStack = null;
        }
        if (this.w == tab) {
            if (this.w != null) {
                this.w.getCallback().onTabReselected(this.w, fragmentTransactionDisallowAddToBackStack);
                this.u.animateToTab(tab.getPosition());
            }
        } else {
            this.u.setTabSelected(tab != null ? tab.getPosition() : -1);
            if (this.w != null) {
                this.w.getCallback().onTabUnselected(this.w, fragmentTransactionDisallowAddToBackStack);
            }
            this.w = (TabImpl) tab;
            if (this.w != null) {
                this.w.getCallback().onTabSelected(this.w, fragmentTransactionDisallowAddToBackStack);
            }
        }
        if (fragmentTransactionDisallowAddToBackStack != null && !fragmentTransactionDisallowAddToBackStack.isEmpty()) {
            fragmentTransactionDisallowAddToBackStack.commit();
        }
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.w;
    }

    @Override // android.support.v7.app.ActionBar
    public int getHeight() {
        return this.q.getHeight();
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.D = z;
    }

    @Override // android.support.v7.app.ActionBar
    public void show() {
        if (this.E) {
            this.E = false;
            b(false);
        }
    }

    private void e() {
        if (!this.G) {
            this.G = true;
            if (this.p != null) {
                this.p.setShowingForActionMode(true);
            }
            b(false);
        }
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.F) {
            this.F = false;
            b(true);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void hide() {
        if (!this.E) {
            this.E = true;
            b(false);
        }
    }

    private void f() {
        if (this.G) {
            this.G = false;
            if (this.p != null) {
                this.p.setShowingForActionMode(false);
            }
            b(false);
        }
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (!this.F) {
            this.F = true;
            b(true);
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z) {
        if (z && !this.p.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.d = z;
        this.p.setHideOnContentScrollEnabled(z);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.p.isHideOnContentScrollEnabled();
    }

    @Override // android.support.v7.app.ActionBar
    public int getHideOffset() {
        return this.p.getActionBarHideOffset();
    }

    @Override // android.support.v7.app.ActionBar
    public void setHideOffset(int i2) {
        if (i2 != 0 && !this.p.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.p.setActionBarHideOffset(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    private void b(boolean z) {
        if (b(this.E, this.F, this.G)) {
            if (!this.H) {
                this.H = true;
                doShow(z);
                return;
            }
            return;
        }
        if (this.H) {
            this.H = false;
            doHide(z);
        }
    }

    public void doShow(boolean z) {
        if (this.I != null) {
            this.I.cancel();
        }
        this.q.setVisibility(0);
        if (this.C == 0 && k && (this.J || z)) {
            ViewCompat.setTranslationY(this.q, 0.0f);
            float f = -this.q.getHeight();
            if (z) {
                this.q.getLocationInWindow(new int[]{0, 0});
                f -= r1[1];
            }
            ViewCompat.setTranslationY(this.q, f);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.q).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.g);
            viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompatTranslationY);
            if (this.D && this.t != null) {
                ViewCompat.setTranslationY(this.t, f);
                viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.t).translationY(0.0f));
            }
            viewPropertyAnimatorCompatSet.setInterpolator(j);
            viewPropertyAnimatorCompatSet.setDuration(250L);
            viewPropertyAnimatorCompatSet.setListener(this.f);
            this.I = viewPropertyAnimatorCompatSet;
            viewPropertyAnimatorCompatSet.start();
        } else {
            ViewCompat.setAlpha(this.q, 1.0f);
            ViewCompat.setTranslationY(this.q, 0.0f);
            if (this.D && this.t != null) {
                ViewCompat.setTranslationY(this.t, 0.0f);
            }
            this.f.onAnimationEnd(null);
        }
        if (this.p != null) {
            ViewCompat.requestApplyInsets(this.p);
        }
    }

    public void doHide(boolean z) {
        if (this.I != null) {
            this.I.cancel();
        }
        if (this.C == 0 && k && (this.J || z)) {
            ViewCompat.setAlpha(this.q, 1.0f);
            this.q.setTransitioning(true);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            float f = -this.q.getHeight();
            if (z) {
                this.q.getLocationInWindow(new int[]{0, 0});
                f -= r2[1];
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.q).translationY(f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.g);
            viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompatTranslationY);
            if (this.D && this.t != null) {
                viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.t).translationY(f));
            }
            viewPropertyAnimatorCompatSet.setInterpolator(i);
            viewPropertyAnimatorCompatSet.setDuration(250L);
            viewPropertyAnimatorCompatSet.setListener(this.e);
            this.I = viewPropertyAnimatorCompatSet;
            viewPropertyAnimatorCompatSet.start();
            return;
        }
        this.e.onAnimationEnd(null);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        return this.H && (height == 0 || getHideOffset() < height);
    }

    public void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z) {
            e();
        } else {
            f();
        }
        if (z) {
            viewPropertyAnimatorCompat2 = this.r.setupAnimatorToVisibility(8, 100L);
            viewPropertyAnimatorCompat = this.s.setupAnimatorToVisibility(0, 200L);
        } else {
            viewPropertyAnimatorCompat = this.r.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat2 = this.s.setupAnimatorToVisibility(8, 100L);
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat2, viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompatSet.start();
    }

    @Override // android.support.v7.app.ActionBar
    public Context getThemedContext() {
        if (this.m == null) {
            TypedValue typedValue = new TypedValue();
            this.l.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.m = new ContextThemeWrapper(this.l, i2);
            } else {
                this.m = this.l;
            }
        }
        return this.m;
    }

    @Override // android.support.v7.app.ActionBar
    public boolean isTitleTruncated() {
        return this.r != null && this.r.isTitleTruncated();
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.r.setNavigationIcon(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeAsUpIndicator(int i2) {
        this.r.setNavigationIcon(i2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.r.setNavigationContentDescription(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void setHomeActionContentDescription(int i2) {
        this.r.setNavigationContentDescription(i2);
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        if (this.I != null) {
            this.I.cancel();
            this.I = null;
        }
    }

    @Override // android.support.v7.internal.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // android.support.v7.app.ActionBar
    public boolean collapseActionView() {
        if (this.r == null || !this.r.hasExpandedActionView()) {
            return false;
        }
        this.r.collapseActionView();
        return true;
    }

    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        private final Context b;
        private final MenuBuilder c;
        private ActionMode.Callback d;
        private WeakReference<View> e;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.d = callback;
            this.c = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.c.setCallback(this);
        }

        @Override // android.support.v7.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.b);
        }

        @Override // android.support.v7.view.ActionMode
        public Menu getMenu() {
            return this.c;
        }

        @Override // android.support.v7.view.ActionMode
        public void finish() {
            if (WindowDecorActionBar.this.a == this) {
                if (!WindowDecorActionBar.b(WindowDecorActionBar.this.E, WindowDecorActionBar.this.F, false)) {
                    WindowDecorActionBar.this.b = this;
                    WindowDecorActionBar.this.c = this.d;
                } else {
                    this.d.onDestroyActionMode(this);
                }
                this.d = null;
                WindowDecorActionBar.this.animateToMode(false);
                WindowDecorActionBar.this.s.closeMode();
                WindowDecorActionBar.this.r.getViewGroup().sendAccessibilityEvent(32);
                WindowDecorActionBar.this.p.setHideOnContentScrollEnabled(WindowDecorActionBar.this.d);
                WindowDecorActionBar.this.a = null;
            }
        }

        @Override // android.support.v7.view.ActionMode
        public void invalidate() {
            if (WindowDecorActionBar.this.a == this) {
                this.c.stopDispatchingItemsChanged();
                try {
                    this.d.onPrepareActionMode(this, this.c);
                } finally {
                    this.c.startDispatchingItemsChanged();
                }
            }
        }

        public boolean dispatchOnCreate() {
            this.c.stopDispatchingItemsChanged();
            try {
                return this.d.onCreateActionMode(this, this.c);
            } finally {
                this.c.startDispatchingItemsChanged();
            }
        }

        @Override // android.support.v7.view.ActionMode
        public void setCustomView(View view) {
            WindowDecorActionBar.this.s.setCustomView(view);
            this.e = new WeakReference<>(view);
        }

        @Override // android.support.v7.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.s.setSubtitle(charSequence);
        }

        @Override // android.support.v7.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.s.setTitle(charSequence);
        }

        @Override // android.support.v7.view.ActionMode
        public void setTitle(int i) {
            setTitle(WindowDecorActionBar.this.l.getResources().getString(i));
        }

        @Override // android.support.v7.view.ActionMode
        public void setSubtitle(int i) {
            setSubtitle(WindowDecorActionBar.this.l.getResources().getString(i));
        }

        @Override // android.support.v7.view.ActionMode
        public CharSequence getTitle() {
            return WindowDecorActionBar.this.s.getTitle();
        }

        @Override // android.support.v7.view.ActionMode
        public CharSequence getSubtitle() {
            return WindowDecorActionBar.this.s.getSubtitle();
        }

        @Override // android.support.v7.view.ActionMode
        public void setTitleOptionalHint(boolean z) {
            super.setTitleOptionalHint(z);
            WindowDecorActionBar.this.s.setTitleOptional(z);
        }

        @Override // android.support.v7.view.ActionMode
        public boolean isTitleOptional() {
            return WindowDecorActionBar.this.s.isTitleOptional();
        }

        @Override // android.support.v7.view.ActionMode
        public View getCustomView() {
            if (this.e != null) {
                return this.e.get();
            }
            return null;
        }

        @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (this.d != null) {
                return this.d.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.d == null) {
                return false;
            }
            if (!subMenuBuilder.hasVisibleItems()) {
                return true;
            }
            new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), subMenuBuilder).show();
            return true;
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.d != null) {
                invalidate();
                WindowDecorActionBar.this.s.showOverflowMenu();
            }
        }
    }

    public class TabImpl extends ActionBar.Tab {
        private ActionBar.TabListener b;
        private Object c;
        private Drawable d;
        private CharSequence e;
        private CharSequence f;
        private int g = -1;
        private View h;

        public TabImpl() {
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public Object getTag() {
            return this.c;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.c = obj;
            return this;
        }

        public ActionBar.TabListener getCallback() {
            return this.b;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.b = tabListener;
            return this;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public View getCustomView() {
            return this.h;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.h = view;
            if (this.g >= 0) {
                WindowDecorActionBar.this.u.updateTab(this.g);
            }
            return this;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(i, (ViewGroup) null));
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.d;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public int getPosition() {
            return this.g;
        }

        public void setPosition(int i) {
            this.g = i;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public CharSequence getText() {
            return this.e;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.d = drawable;
            if (this.g >= 0) {
                WindowDecorActionBar.this.u.updateTab(this.g);
            }
            return this;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i) {
            return setIcon(WindowDecorActionBar.this.b().getDrawable(i));
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.e = charSequence;
            if (this.g >= 0) {
                WindowDecorActionBar.this.u.updateTab(this.g);
            }
            return this;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setText(int i) {
            return setText(WindowDecorActionBar.this.l.getResources().getText(i));
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public void select() {
            WindowDecorActionBar.this.selectTab(this);
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i) {
            return setContentDescription(WindowDecorActionBar.this.l.getResources().getText(i));
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.f = charSequence;
            if (this.g >= 0) {
                WindowDecorActionBar.this.u.updateTab(this.g);
            }
            return this;
        }

        @Override // android.support.v7.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.f;
        }
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(View view) {
        this.r.setCustomView(view);
    }

    @Override // android.support.v7.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.r.setCustomView(view);
    }

    @Override // android.support.v7.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.r.setDropdownParams(spinnerAdapter, new fr(onNavigationListener));
    }

    @Override // android.support.v7.app.ActionBar
    public int getSelectedNavigationIndex() {
        switch (this.r.getNavigationMode()) {
            case 2:
                if (this.w != null) {
                }
                break;
        }
        return -1;
    }

    @Override // android.support.v7.app.ActionBar
    public int getNavigationItemCount() {
        switch (this.r.getNavigationMode()) {
            case 1:
                return this.r.getDropdownItemCount();
            case 2:
                return this.v.size();
            default:
                return 0;
        }
    }

    @Override // android.support.v7.app.ActionBar
    public int getTabCount() {
        return this.v.size();
    }

    @Override // android.support.v7.app.ActionBar
    public void setNavigationMode(int i2) {
        int navigationMode = this.r.getNavigationMode();
        switch (navigationMode) {
            case 2:
                this.x = getSelectedNavigationIndex();
                selectTab(null);
                this.u.setVisibility(8);
                break;
        }
        if (navigationMode != i2 && !this.B && this.p != null) {
            ViewCompat.requestApplyInsets(this.p);
        }
        this.r.setNavigationMode(i2);
        switch (i2) {
            case 2:
                c();
                this.u.setVisibility(0);
                if (this.x != -1) {
                    setSelectedNavigationItem(this.x);
                    this.x = -1;
                }
                break;
        }
        this.r.setCollapsible(i2 == 2 && !this.B);
        this.p.setHasNonEmbeddedTabs(i2 == 2 && !this.B);
    }

    @Override // android.support.v7.app.ActionBar
    public ActionBar.Tab getTabAt(int i2) {
        return this.v.get(i2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setIcon(int i2) {
        this.r.setIcon(i2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.r.setIcon(drawable);
    }

    public boolean hasIcon() {
        return this.r.hasIcon();
    }

    @Override // android.support.v7.app.ActionBar
    public void setLogo(int i2) {
        this.r.setLogo(i2);
    }

    @Override // android.support.v7.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.r.setLogo(drawable);
    }

    public boolean hasLogo() {
        return this.r.hasLogo();
    }

    @Override // android.support.v7.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (!this.y) {
            setDisplayHomeAsUpEnabled(z);
        }
    }

    TintManager b() {
        if (this.K == null) {
            this.K = TintManager.get(this.l);
        }
        return this.K;
    }
}
