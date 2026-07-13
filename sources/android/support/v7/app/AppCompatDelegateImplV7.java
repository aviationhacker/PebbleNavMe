package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.app.NavUtils;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.internal.app.AppCompatViewInflater;
import android.support.v7.internal.app.ToolbarActionBar;
import android.support.v7.internal.app.WindowDecorActionBar;
import android.support.v7.internal.view.ContextThemeWrapper;
import android.support.v7.internal.view.StandaloneActionMode;
import android.support.v7.internal.view.menu.ListMenuPresenter;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.internal.widget.DecorContentParent;
import android.support.v7.internal.widget.FitWindowsViewGroup;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import defpackage.fn;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatDelegateImplV7 extends fn implements LayoutInflaterFactory, MenuBuilder.Callback {
    private boolean A;
    private boolean B;
    private PanelFeatureState[] C;
    private PanelFeatureState D;
    private boolean E;
    private int F;
    private final Runnable G;
    private boolean H;
    private Rect I;
    private Rect J;
    private AppCompatViewInflater K;
    ActionMode m;
    ActionBarContextView n;
    PopupWindow o;
    Runnable p;
    ViewPropertyAnimatorCompat q;
    private DecorContentParent r;
    private a s;
    private d t;
    private boolean u;
    private ViewGroup v;
    private ViewGroup w;
    private TextView x;
    private View y;
    private boolean z;

    protected AppCompatDelegateImplV7(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.q = null;
        this.G = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV7.1
            @Override // java.lang.Runnable
            public void run() {
                if ((AppCompatDelegateImplV7.this.F & 1) != 0) {
                    AppCompatDelegateImplV7.this.c(0);
                }
                if ((AppCompatDelegateImplV7.this.F & 4096) != 0) {
                    AppCompatDelegateImplV7.this.c(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                }
                AppCompatDelegateImplV7.this.E = false;
                AppCompatDelegateImplV7.this.F = 0;
            }
        };
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        this.v = (ViewGroup) this.b.getDecorView();
        if ((this.c instanceof Activity) && NavUtils.getParentActivityName((Activity) this.c) != null) {
            ActionBar actionBarB = b();
            if (actionBarB == null) {
                this.H = true;
            } else {
                actionBarB.setDefaultDisplayHomeAsUpEnabled(true);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        h();
    }

    @Override // defpackage.fn
    public void a() {
        h();
        if (this.h && this.f == null) {
            if (this.c instanceof Activity) {
                this.f = new WindowDecorActionBar((Activity) this.c, this.i);
            } else if (this.c instanceof Dialog) {
                this.f = new WindowDecorActionBar((Dialog) this.c);
            }
            if (this.f != null) {
                this.f.setDefaultDisplayHomeAsUpEnabled(this.H);
            }
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.c instanceof Activity) {
            if (getSupportActionBar() instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.g = null;
            ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, ((Activity) this.a).getTitle(), this.d);
            this.f = toolbarActionBar;
            this.b.setCallback(toolbarActionBar.getWrappedWindowCallback());
            toolbarActionBar.invalidateOptionsMenu();
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.h && this.u && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view) {
        h();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(int i) {
        h();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.a).inflate(i, viewGroup);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        h();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.c.onContentChanged();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        h();
        ((ViewGroup) this.w.findViewById(R.id.content)).addView(view, layoutParams);
        this.c.onContentChanged();
    }

    private void h() {
        if (!this.u) {
            this.w = i();
            CharSequence charSequenceF = f();
            if (!TextUtils.isEmpty(charSequenceF)) {
                a(charSequenceF);
            }
            j();
            a(this.w);
            this.u = true;
            PanelFeatureState panelFeatureStateA = a(0, false);
            if (d()) {
                return;
            }
            if (panelFeatureStateA == null || panelFeatureStateA.j == null) {
                b(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
            }
        }
    }

    private ViewGroup i() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Context contextThemeWrapper;
        TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.Theme);
        if (!typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.Theme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.Theme_windowActionBar, false)) {
            requestWindowFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.Theme_windowActionBarOverlay, false)) {
            requestWindowFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.Theme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.Theme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.a);
        if (!this.l) {
            if (this.k) {
                ViewGroup viewGroup3 = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.i = false;
                this.h = false;
                viewGroup2 = viewGroup3;
            } else if (this.h) {
                TypedValue typedValue = new TypedValue();
                this.a.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    contextThemeWrapper = new ContextThemeWrapper(this.a, typedValue.resourceId);
                } else {
                    contextThemeWrapper = this.a;
                }
                ViewGroup viewGroup4 = (ViewGroup) LayoutInflater.from(contextThemeWrapper).inflate(android.support.v7.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
                this.r = (DecorContentParent) viewGroup4.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
                this.r.setWindowCallback(e());
                if (this.i) {
                    this.r.initFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
                }
                if (this.z) {
                    this.r.initFeature(2);
                }
                if (this.A) {
                    this.r.initFeature(5);
                }
                viewGroup2 = viewGroup4;
            } else {
                viewGroup2 = null;
            }
        } else {
            if (this.j) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
            } else {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(android.support.v7.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: android.support.v7.app.AppCompatDelegateImplV7.2
                    @Override // android.support.v4.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
                        int iD = AppCompatDelegateImplV7.this.d(systemWindowInsetTop);
                        if (systemWindowInsetTop != iD) {
                            windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), iD, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                        }
                        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                    }
                });
                viewGroup2 = viewGroup;
            } else {
                ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: android.support.v7.app.AppCompatDelegateImplV7.3
                    @Override // android.support.v7.internal.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                    public void onFitSystemWindows(Rect rect) {
                        rect.top = AppCompatDelegateImplV7.this.d(rect.top);
                    }
                });
                viewGroup2 = viewGroup;
            }
        }
        if (viewGroup2 == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.h + ", windowActionBarOverlay: " + this.i + ", android:windowIsFloating: " + this.k + ", windowActionModeOverlay: " + this.j + ", windowNoTitle: " + this.l + " }");
        }
        if (this.r == null) {
            this.x = (TextView) viewGroup2.findViewById(android.support.v7.appcompat.R.id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup2);
        ViewGroup viewGroup5 = (ViewGroup) this.b.findViewById(R.id.content);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup2.findViewById(android.support.v7.appcompat.R.id.action_bar_activity_content);
        while (viewGroup5.getChildCount() > 0) {
            View childAt = viewGroup5.getChildAt(0);
            viewGroup5.removeViewAt(0);
            contentFrameLayout.addView(childAt);
        }
        this.b.setContentView(viewGroup2);
        viewGroup5.setId(-1);
        contentFrameLayout.setId(R.id.content);
        if (viewGroup5 instanceof FrameLayout) {
            ((FrameLayout) viewGroup5).setForeground(null);
        }
        return viewGroup2;
    }

    void a(ViewGroup viewGroup) {
    }

    private void j() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.w.findViewById(R.id.content);
        contentFrameLayout.setDecorPadding(this.v.getPaddingLeft(), this.v.getPaddingTop(), this.v.getPaddingRight(), this.v.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.Theme);
        typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean requestWindowFeature(int i) {
        int iE = e(i);
        if (this.l && iE == 108) {
            return false;
        }
        if (this.h && iE == 1) {
            this.h = false;
        }
        switch (iE) {
            case 1:
                l();
                this.l = true;
                return true;
            case 2:
                l();
                this.z = true;
                return true;
            case 5:
                l();
                this.A = true;
                return true;
            case 10:
                l();
                this.j = true;
                return true;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
                l();
                this.h = true;
                return true;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                l();
                this.i = true;
                return true;
            default:
                return this.b.requestFeature(iE);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public boolean hasWindowFeature(int i) {
        int iE = e(i);
        switch (iE) {
            case 1:
                return this.l;
            case 2:
                return this.z;
            case 5:
                return this.A;
            case 10:
                return this.j;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
                return this.h;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                return this.i;
            default:
                return this.b.hasFeature(iE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public void a(CharSequence charSequence) {
        if (this.r != null) {
            this.r.setWindowTitle(charSequence);
        } else if (b() != null) {
            b().setWindowTitle(charSequence);
        } else if (this.x != null) {
            this.x.setText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public void a(int i, Menu menu) {
        if (i == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i == 0) {
            PanelFeatureState panelFeatureStateA = a(i, true);
            if (panelFeatureStateA.o) {
                a(panelFeatureStateA, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public boolean b(int i, Menu menu) {
        if (i != 108) {
            return false;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return true;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
        return true;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateA;
        Window.Callback callbackE = e();
        if (callbackE == null || d() || (panelFeatureStateA = a((Menu) menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return callbackE.onMenuItemSelected(panelFeatureStateA.a, menuItem);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        a(menuBuilder, true);
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public ActionMode startSupportActionMode(ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.m != null) {
            this.m.finish();
        }
        b bVar = new b(callback);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            this.m = supportActionBar.startActionMode(bVar);
            if (this.m != null && this.e != null) {
                this.e.onSupportActionModeStarted(this.m);
            }
        }
        if (this.m == null) {
            this.m = a(bVar);
        }
        return this.m;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            b(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public ActionMode a(ActionMode.Callback callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        Context contextThemeWrapper;
        k();
        if (this.m != null) {
            this.m.finish();
        }
        b bVar = new b(callback);
        if (this.e == null || d()) {
            actionModeOnWindowStartingSupportActionMode = null;
        } else {
            try {
                actionModeOnWindowStartingSupportActionMode = this.e.onWindowStartingSupportActionMode(bVar);
            } catch (AbstractMethodError e) {
                actionModeOnWindowStartingSupportActionMode = null;
            }
        }
        if (actionModeOnWindowStartingSupportActionMode != null) {
            this.m = actionModeOnWindowStartingSupportActionMode;
        } else {
            if (this.n == null) {
                if (this.k) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.a.getTheme();
                    theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.a.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        contextThemeWrapper = new ContextThemeWrapper(this.a, 0);
                        contextThemeWrapper.getTheme().setTo(themeNewTheme);
                    } else {
                        contextThemeWrapper = this.a;
                    }
                    this.n = new ActionBarContextView(contextThemeWrapper);
                    this.o = new PopupWindow(contextThemeWrapper, (AttributeSet) null, android.support.v7.appcompat.R.attr.actionModePopupWindowStyle);
                    PopupWindowCompat.setWindowLayoutType(this.o, 2);
                    this.o.setContentView(this.n);
                    this.o.setWidth(-1);
                    contextThemeWrapper.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarSize, typedValue, true);
                    this.n.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                    this.o.setHeight(-2);
                    this.p = new Runnable() { // from class: android.support.v7.app.AppCompatDelegateImplV7.4
                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImplV7.this.o.showAtLocation(AppCompatDelegateImplV7.this.n, 55, 0, 0);
                            AppCompatDelegateImplV7.this.k();
                            ViewCompat.setAlpha(AppCompatDelegateImplV7.this.n, 0.0f);
                            AppCompatDelegateImplV7.this.q = ViewCompat.animate(AppCompatDelegateImplV7.this.n).alpha(1.0f);
                            AppCompatDelegateImplV7.this.q.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV7.4.1
                                @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                public void onAnimationEnd(View view) {
                                    ViewCompat.setAlpha(AppCompatDelegateImplV7.this.n, 1.0f);
                                    AppCompatDelegateImplV7.this.q.setListener(null);
                                    AppCompatDelegateImplV7.this.q = null;
                                }

                                @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                                public void onAnimationStart(View view) {
                                    AppCompatDelegateImplV7.this.n.setVisibility(0);
                                }
                            });
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.w.findViewById(android.support.v7.appcompat.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(c()));
                        this.n = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.n != null) {
                k();
                this.n.killMode();
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode(this.n.getContext(), this.n, bVar, this.o == null);
                if (callback.onCreateActionMode(standaloneActionMode, standaloneActionMode.getMenu())) {
                    standaloneActionMode.invalidate();
                    this.n.initForMode(standaloneActionMode);
                    this.m = standaloneActionMode;
                    ViewCompat.setAlpha(this.n, 0.0f);
                    this.q = ViewCompat.animate(this.n).alpha(1.0f);
                    this.q.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV7.5
                        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                        public void onAnimationEnd(View view) {
                            ViewCompat.setAlpha(AppCompatDelegateImplV7.this.n, 1.0f);
                            AppCompatDelegateImplV7.this.q.setListener(null);
                            AppCompatDelegateImplV7.this.q = null;
                        }

                        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                        public void onAnimationStart(View view) {
                            AppCompatDelegateImplV7.this.n.setVisibility(0);
                            AppCompatDelegateImplV7.this.n.sendAccessibilityEvent(32);
                            if (AppCompatDelegateImplV7.this.n.getParent() != null) {
                                ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV7.this.n.getParent());
                            }
                        }
                    });
                    if (this.o != null) {
                        this.b.getDecorView().post(this.p);
                    }
                } else {
                    this.m = null;
                }
            }
        }
        if (this.m != null && this.e != null) {
            this.e.onSupportActionModeStarted(this.m);
        }
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.q != null) {
            this.q.cancel();
        }
    }

    boolean g() {
        if (this.m != null) {
            this.m.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public boolean a(int i, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i, keyEvent)) {
            return true;
        }
        if (this.D != null && a(this.D, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.D == null) {
                return true;
            }
            this.D.n = true;
            return true;
        }
        if (this.D == null) {
            PanelFeatureState panelFeatureStateA = a(0, true);
            b(panelFeatureStateA, keyEvent);
            boolean zA = a(panelFeatureStateA, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateA.m = false;
            if (zA) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.fn
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 82 && this.c.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
    }

    boolean b(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                PanelFeatureState panelFeatureStateA = a(0, false);
                if (panelFeatureStateA != null && panelFeatureStateA.o) {
                    a(panelFeatureStateA, true);
                    return true;
                }
                if (g()) {
                    return true;
                }
                break;
            case 82:
                e(0, keyEvent);
                return true;
        }
        return false;
    }

    boolean c(int i, KeyEvent keyEvent) {
        switch (i) {
            case 82:
                d(0, keyEvent);
                break;
        }
        if (Build.VERSION.SDK_INT < 11) {
            a(i, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z = Build.VERSION.SDK_INT < 21;
        if (this.K == null) {
            this.K = new AppCompatViewInflater();
        }
        return this.K.createView(view, str, context, attributeSet, z && this.u && a((ViewParent) view), z, true);
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        for (ViewParent parent = viewParent; parent != null; parent = parent.getParent()) {
            if (parent == this.v || !(parent instanceof View) || ViewCompat.isAttachedToWindow((View) parent)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v7.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.a);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory(layoutInflaterFrom, this);
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.support.v4.view.LayoutInflaterFactory
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewA = a(view, str, context, attributeSet);
        return viewA != null ? viewA : createView(view, str, context, attributeSet);
    }

    protected View a(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView;
        if (!(this.c instanceof LayoutInflater.Factory) || (viewOnCreateView = ((LayoutInflater.Factory) this.c).onCreateView(str, context, attributeSet)) == null) {
            return null;
        }
        return viewOnCreateView;
    }

    private void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!panelFeatureState.o && !d()) {
            if (panelFeatureState.a == 0) {
                Context context = this.a;
                boolean z = (context.getResources().getConfiguration().screenLayout & 15) == 4;
                boolean z2 = context.getApplicationInfo().targetSdkVersion >= 11;
                if (z && z2) {
                    return;
                }
            }
            Window.Callback callbackE = e();
            if (callbackE != null && !callbackE.onMenuOpened(panelFeatureState.a, panelFeatureState.j)) {
                a(panelFeatureState, true);
                return;
            }
            WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
            if (windowManager != null && b(panelFeatureState, keyEvent)) {
                if (panelFeatureState.g == null || panelFeatureState.q) {
                    if (panelFeatureState.g == null) {
                        if (!a(panelFeatureState) || panelFeatureState.g == null) {
                            return;
                        }
                    } else if (panelFeatureState.q && panelFeatureState.g.getChildCount() > 0) {
                        panelFeatureState.g.removeAllViews();
                    }
                    if (c(panelFeatureState) && panelFeatureState.a()) {
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                        panelFeatureState.g.setBackgroundResource(panelFeatureState.b);
                        ViewParent parent = panelFeatureState.h.getParent();
                        if (parent != null && (parent instanceof ViewGroup)) {
                            ((ViewGroup) parent).removeView(panelFeatureState.h);
                        }
                        panelFeatureState.g.addView(panelFeatureState.h, layoutParams3);
                        if (!panelFeatureState.h.hasFocus()) {
                            panelFeatureState.h.requestFocus();
                        }
                        i = -2;
                    } else {
                        return;
                    }
                } else if (panelFeatureState.i == null || (layoutParams = panelFeatureState.i.getLayoutParams()) == null || layoutParams.width != -1) {
                    i = -2;
                }
                panelFeatureState.n = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.d, panelFeatureState.e, 1002, 8519680, -3);
                layoutParams4.gravity = panelFeatureState.c;
                layoutParams4.windowAnimations = panelFeatureState.f;
                windowManager.addView(panelFeatureState.g, layoutParams4);
                panelFeatureState.o = true;
            }
        }
    }

    private boolean a(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(c());
        panelFeatureState.g = new c(panelFeatureState.l);
        panelFeatureState.c = 81;
        return true;
    }

    private void a(MenuBuilder menuBuilder, boolean z) {
        if (this.r != null && this.r.canShowOverflowMenu() && (!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(this.a)) || this.r.isOverflowMenuShowPending())) {
            Window.Callback callbackE = e();
            if (!this.r.isOverflowMenuShowing() || !z) {
                if (callbackE != null && !d()) {
                    if (this.E && (this.F & 1) != 0) {
                        this.v.removeCallbacks(this.G);
                        this.G.run();
                    }
                    PanelFeatureState panelFeatureStateA = a(0, true);
                    if (panelFeatureStateA.j != null && !panelFeatureStateA.r && callbackE.onPreparePanel(0, panelFeatureStateA.i, panelFeatureStateA.j)) {
                        callbackE.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, panelFeatureStateA.j);
                        this.r.showOverflowMenu();
                        return;
                    }
                    return;
                }
                return;
            }
            this.r.hideOverflowMenu();
            if (!d()) {
                callbackE.onPanelClosed(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, a(0, true).j);
                return;
            }
            return;
        }
        PanelFeatureState panelFeatureStateA2 = a(0, true);
        panelFeatureStateA2.q = true;
        a(panelFeatureStateA2, false);
        a(panelFeatureStateA2, (KeyEvent) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(android.support.v7.app.AppCompatDelegateImplV7.PanelFeatureState r7) {
        /*
            r6 = this;
            r5 = 1
            android.content.Context r1 = r6.a
            int r0 = r7.a
            if (r0 == 0) goto Ld
            int r0 = r7.a
            r2 = 108(0x6c, float:1.51E-43)
            if (r0 != r2) goto L71
        Ld:
            android.support.v7.internal.widget.DecorContentParent r0 = r6.r
            if (r0 == 0) goto L71
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r1.getTheme()
            int r0 = android.support.v7.appcompat.R.attr.actionBarTheme
            r3.resolveAttribute(r0, r2, r5)
            r0 = 0
            int r4 = r2.resourceId
            if (r4 == 0) goto L6b
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
            int r4 = r2.resourceId
            r0.applyStyle(r4, r5)
            int r4 = android.support.v7.appcompat.R.attr.actionBarWidgetTheme
            r0.resolveAttribute(r4, r2, r5)
        L39:
            int r4 = r2.resourceId
            if (r4 == 0) goto L4f
            if (r0 != 0) goto L4a
            android.content.res.Resources r0 = r1.getResources()
            android.content.res.Resources$Theme r0 = r0.newTheme()
            r0.setTo(r3)
        L4a:
            int r2 = r2.resourceId
            r0.applyStyle(r2, r5)
        L4f:
            r2 = r0
            if (r2 == 0) goto L71
            android.support.v7.internal.view.ContextThemeWrapper r0 = new android.support.v7.internal.view.ContextThemeWrapper
            r3 = 0
            r0.<init>(r1, r3)
            android.content.res.Resources$Theme r1 = r0.getTheme()
            r1.setTo(r2)
        L5f:
            android.support.v7.internal.view.menu.MenuBuilder r1 = new android.support.v7.internal.view.menu.MenuBuilder
            r1.<init>(r0)
            r1.setCallback(r6)
            r7.a(r1)
            return r5
        L6b:
            int r4 = android.support.v7.appcompat.R.attr.actionBarWidgetTheme
            r3.resolveAttribute(r4, r2, r5)
            goto L39
        L71:
            r0 = r1
            goto L5f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV7.b(android.support.v7.app.AppCompatDelegateImplV7$PanelFeatureState):boolean");
    }

    private boolean c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.i != null) {
            panelFeatureState.h = panelFeatureState.i;
            return true;
        }
        if (panelFeatureState.j == null) {
            return false;
        }
        if (this.t == null) {
            this.t = new d();
        }
        panelFeatureState.h = (View) panelFeatureState.a(this.t);
        return panelFeatureState.h != null;
    }

    private boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (d()) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        if (this.D != null && this.D != panelFeatureState) {
            a(this.D, false);
        }
        Window.Callback callbackE = e();
        if (callbackE != null) {
            panelFeatureState.i = callbackE.onCreatePanelView(panelFeatureState.a);
        }
        boolean z = panelFeatureState.a == 0 || panelFeatureState.a == 108;
        if (z && this.r != null) {
            this.r.setMenuPrepared();
        }
        if (panelFeatureState.i == null && (!z || !(b() instanceof ToolbarActionBar))) {
            if (panelFeatureState.j == null || panelFeatureState.r) {
                if (panelFeatureState.j == null && (!b(panelFeatureState) || panelFeatureState.j == null)) {
                    return false;
                }
                if (z && this.r != null) {
                    if (this.s == null) {
                        this.s = new a();
                    }
                    this.r.setMenu(panelFeatureState.j, this.s);
                }
                panelFeatureState.j.stopDispatchingItemsChanged();
                if (!callbackE.onCreatePanelMenu(panelFeatureState.a, panelFeatureState.j)) {
                    panelFeatureState.a((MenuBuilder) null);
                    if (!z || this.r == null) {
                        return false;
                    }
                    this.r.setMenu(null, this.s);
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.j.stopDispatchingItemsChanged();
            if (panelFeatureState.s != null) {
                panelFeatureState.j.restoreActionViewStates(panelFeatureState.s);
                panelFeatureState.s = null;
            }
            if (!callbackE.onPreparePanel(0, panelFeatureState.i, panelFeatureState.j)) {
                if (z && this.r != null) {
                    this.r.setMenu(null, this.s);
                }
                panelFeatureState.j.startDispatchingItemsChanged();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.j.startDispatchingItemsChanged();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.D = panelFeatureState;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MenuBuilder menuBuilder) {
        if (!this.B) {
            this.B = true;
            this.r.dismissPopups();
            Window.Callback callbackE = e();
            if (callbackE != null && !d()) {
                callbackE.onPanelClosed(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
            }
            this.B = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        a(a(i, true), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.a == 0 && this.r != null && this.r.isOverflowMenuShowing()) {
            a(panelFeatureState.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
        if (windowManager != null && panelFeatureState.o && panelFeatureState.g != null) {
            windowManager.removeView(panelFeatureState.g);
            if (z) {
                a(panelFeatureState.a, panelFeatureState, (Menu) null);
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.h = null;
        panelFeatureState.q = true;
        if (this.D == panelFeatureState) {
            this.D = null;
        }
    }

    private boolean d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelFeatureStateA = a(i, true);
            if (!panelFeatureStateA.o) {
                return b(panelFeatureStateA, keyEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean e(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            android.support.v7.view.ActionMode r0 = r4.m
            if (r0 == 0) goto L8
            r0 = r1
        L7:
            return r0
        L8:
            android.support.v7.app.AppCompatDelegateImplV7$PanelFeatureState r3 = r4.a(r5, r2)
            if (r5 != 0) goto L5a
            android.support.v7.internal.widget.DecorContentParent r0 = r4.r
            if (r0 == 0) goto L5a
            android.support.v7.internal.widget.DecorContentParent r0 = r4.r
            boolean r0 = r0.canShowOverflowMenu()
            if (r0 == 0) goto L5a
            android.content.Context r0 = r4.a
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            boolean r0 = android.support.v4.view.ViewConfigurationCompat.hasPermanentMenuKey(r0)
            if (r0 != 0) goto L5a
            android.support.v7.internal.widget.DecorContentParent r0 = r4.r
            boolean r0 = r0.isOverflowMenuShowing()
            if (r0 != 0) goto L53
            boolean r0 = r4.d()
            if (r0 != 0) goto L85
            boolean r0 = r4.b(r3, r6)
            if (r0 == 0) goto L85
            android.support.v7.internal.widget.DecorContentParent r0 = r4.r
            boolean r2 = r0.showOverflowMenu()
        L40:
            if (r2 == 0) goto L51
            android.content.Context r0 = r4.a
            java.lang.String r3 = "audio"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.media.AudioManager r0 = (android.media.AudioManager) r0
            if (r0 == 0) goto L7d
            r0.playSoundEffect(r1)
        L51:
            r0 = r2
            goto L7
        L53:
            android.support.v7.internal.widget.DecorContentParent r0 = r4.r
            boolean r2 = r0.hideOverflowMenu()
            goto L40
        L5a:
            boolean r0 = r3.o
            if (r0 != 0) goto L62
            boolean r0 = r3.n
            if (r0 == 0) goto L69
        L62:
            boolean r0 = r3.o
            r4.a(r3, r2)
            r2 = r0
            goto L40
        L69:
            boolean r0 = r3.m
            if (r0 == 0) goto L85
            boolean r0 = r3.r
            if (r0 == 0) goto L87
            r3.m = r1
            boolean r0 = r4.b(r3, r6)
        L77:
            if (r0 == 0) goto L85
            r4.a(r3, r6)
            goto L40
        L7d:
            java.lang.String r0 = "AppCompatDelegate"
            java.lang.String r1 = "Couldn't get audio manager"
            android.util.Log.w(r0, r1)
            goto L51
        L85:
            r2 = r1
            goto L40
        L87:
            r0 = r2
            goto L77
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV7.e(int, android.view.KeyEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.C.length) {
                panelFeatureState = this.C[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !d()) {
            this.c.onPanelClosed(i, menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.C;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    private PanelFeatureState a(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.C;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.C = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    private boolean a(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean zPerformShortcut = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.m || b(panelFeatureState, keyEvent)) && panelFeatureState.j != null) {
                zPerformShortcut = panelFeatureState.j.performShortcut(i, keyEvent, i2);
            }
            if (zPerformShortcut && (i2 & 1) == 0 && this.r == null) {
                a(panelFeatureState, true);
            }
        }
        return zPerformShortcut;
    }

    private void b(int i) {
        this.F |= 1 << i;
        if (!this.E && this.v != null) {
            ViewCompat.postOnAnimation(this.v, this.G);
            this.E = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        PanelFeatureState panelFeatureStateA;
        PanelFeatureState panelFeatureStateA2 = a(i, true);
        if (panelFeatureStateA2.j != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateA2.j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateA2.s = bundle;
            }
            panelFeatureStateA2.j.stopDispatchingItemsChanged();
            panelFeatureStateA2.j.clear();
        }
        panelFeatureStateA2.r = true;
        panelFeatureStateA2.q = true;
        if ((i == 108 || i == 0) && this.r != null && (panelFeatureStateA = a(0, false)) != null) {
            panelFeatureStateA.m = false;
            b(panelFeatureStateA, (KeyEvent) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.n == null || !(this.n.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.n.getLayoutParams();
            if (this.n.isShown()) {
                if (this.I == null) {
                    this.I = new Rect();
                    this.J = new Rect();
                }
                Rect rect = this.I;
                Rect rect2 = this.J;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.w, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.y == null) {
                        this.y = new View(this.a);
                        this.y.setBackgroundColor(this.a.getResources().getColor(android.support.v7.appcompat.R.color.abc_input_method_navigation_guard));
                        this.w.addView(this.y, -1, new ViewGroup.LayoutParams(-1, i));
                        z3 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.y.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.y.setLayoutParams(layoutParams);
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                z = this.y != null;
                if (!this.j && z) {
                    i = 0;
                }
                boolean z4 = z3;
                z2 = z;
                z = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z = false;
                z2 = false;
            }
            if (z) {
                this.n.setLayoutParams(marginLayoutParams);
            }
            z = z2;
        }
        if (this.y != null) {
            this.y.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    private void l() {
        if (this.u) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int e(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR;
        }
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
        }
        return i;
    }

    class b implements ActionMode.Callback {
        private ActionMode.Callback b;

        public b(ActionMode.Callback callback) {
            this.b = callback;
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.b.onCreateActionMode(actionMode, menu);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.b.onPrepareActionMode(actionMode, menu);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.b.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.support.v7.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.b.onDestroyActionMode(actionMode);
            if (AppCompatDelegateImplV7.this.o != null) {
                AppCompatDelegateImplV7.this.b.getDecorView().removeCallbacks(AppCompatDelegateImplV7.this.p);
            }
            if (AppCompatDelegateImplV7.this.n != null) {
                AppCompatDelegateImplV7.this.k();
                AppCompatDelegateImplV7.this.q = ViewCompat.animate(AppCompatDelegateImplV7.this.n).alpha(0.0f);
                AppCompatDelegateImplV7.this.q.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.app.AppCompatDelegateImplV7.b.1
                    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImplV7.this.n.setVisibility(8);
                        if (AppCompatDelegateImplV7.this.o != null) {
                            AppCompatDelegateImplV7.this.o.dismiss();
                        } else if (AppCompatDelegateImplV7.this.n.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV7.this.n.getParent());
                        }
                        AppCompatDelegateImplV7.this.n.removeAllViews();
                        AppCompatDelegateImplV7.this.q.setListener(null);
                        AppCompatDelegateImplV7.this.q = null;
                    }
                });
            }
            if (AppCompatDelegateImplV7.this.e != null) {
                AppCompatDelegateImplV7.this.e.onSupportActionModeFinished(AppCompatDelegateImplV7.this.m);
            }
            AppCompatDelegateImplV7.this.m = null;
        }
    }

    final class d implements MenuPresenter.Callback {
        private d() {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            AppCompatDelegateImplV7 appCompatDelegateImplV7 = AppCompatDelegateImplV7.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState panelFeatureStateA = appCompatDelegateImplV7.a((Menu) menuBuilder);
            if (panelFeatureStateA != null) {
                if (z2) {
                    AppCompatDelegateImplV7.this.a(panelFeatureStateA.a, panelFeatureStateA, rootMenu);
                    AppCompatDelegateImplV7.this.a(panelFeatureStateA, true);
                } else {
                    AppCompatDelegateImplV7.this.a(panelFeatureStateA, z);
                }
            }
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callbackE;
            if (menuBuilder == null && AppCompatDelegateImplV7.this.h && (callbackE = AppCompatDelegateImplV7.this.e()) != null && !AppCompatDelegateImplV7.this.d()) {
                callbackE.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
                return true;
            }
            return true;
        }
    }

    final class a implements MenuPresenter.Callback {
        private a() {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callbackE = AppCompatDelegateImplV7.this.e();
            if (callbackE != null) {
                callbackE.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
                return true;
            }
            return true;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImplV7.this.a(menuBuilder);
        }
    }

    static final class PanelFeatureState {
        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        MenuBuilder j;
        ListMenuPresenter k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        PanelFeatureState(int i) {
            this.a = i;
        }

        public boolean a() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.getAdapter().getCount() > 0;
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            themeNewTheme.resolveAttribute(android.support.v7.appcompat.R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            } else {
                themeNewTheme.applyStyle(android.support.v7.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(themeNewTheme);
            this.l = contextThemeWrapper;
            TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.Theme);
            this.b = typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.Theme_panelBackground, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.Theme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(MenuBuilder menuBuilder) {
            if (menuBuilder != this.j) {
                if (this.j != null) {
                    this.j.removeMenuPresenter(this.k);
                }
                this.j = menuBuilder;
                if (menuBuilder == null || this.k == null) {
                    return;
                }
                menuBuilder.addMenuPresenter(this.k);
            }
        }

        MenuView a(MenuPresenter.Callback callback) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                this.k = new ListMenuPresenter(this.l, android.support.v7.appcompat.R.layout.abc_list_menu_item_layout);
                this.k.setCallback(callback);
                this.j.addMenuPresenter(this.k);
            }
            return this.k.getMenuView(this.g);
        }

        static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.app.AppCompatDelegateImplV7.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.b(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int a;
            boolean b;
            Bundle c;

            private SavedState() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.a);
                parcel.writeInt(this.b ? 1 : 0);
                if (this.b) {
                    parcel.writeBundle(this.c);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static SavedState b(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.a = parcel.readInt();
                savedState.b = parcel.readInt() == 1;
                if (savedState.b) {
                    savedState.c = parcel.readBundle();
                }
                return savedState;
            }
        }
    }

    class c extends FrameLayout {
        public c(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImplV7.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImplV7.this.a(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(TintManager.getDrawable(getContext(), i));
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }
}
