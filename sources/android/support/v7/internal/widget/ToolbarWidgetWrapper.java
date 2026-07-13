package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.menu.ActionMenuItem;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {
    private Toolbar a;
    private int b;
    private View c;
    private Spinner d;
    private View e;
    private Drawable f;
    private Drawable g;
    private Drawable h;
    private boolean i;
    private CharSequence j;
    private CharSequence k;
    private CharSequence l;
    private Window.Callback m;
    private boolean n;
    private ActionMenuPresenter o;
    private int p;
    private final TintManager q;
    private int r;
    private Drawable s;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_mtrl_am_alpha);
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z, int i, int i2) {
        this.p = 0;
        this.r = 0;
        this.a = toolbar;
        this.j = toolbar.getTitle();
        this.k = toolbar.getSubtitle();
        this.i = this.j != null;
        this.h = toolbar.getNavigationIcon();
        if (z) {
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
            CharSequence text = tintTypedArrayObtainStyledAttributes.getText(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_logo);
            if (drawable != null) {
                setLogo(drawable);
            }
            Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_icon);
            if (this.h == null && drawable2 != null) {
                setIcon(drawable2);
            }
            Drawable drawable3 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
            if (drawable3 != null) {
                setNavigationIcon(drawable3);
            }
            setDisplayOptions(tintTypedArrayObtainStyledAttributes.getInt(R.styleable.ActionBar_displayOptions, 0));
            int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                setCustomView(LayoutInflater.from(this.a.getContext()).inflate(resourceId, (ViewGroup) this.a, false));
                setDisplayOptions(this.b | 16);
            }
            int layoutDimension = tintTypedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = layoutDimension;
                this.a.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                this.a.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                this.a.setTitleTextAppearance(this.a.getContext(), resourceId2);
            }
            int resourceId3 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                this.a.setSubtitleTextAppearance(this.a.getContext(), resourceId3);
            }
            int resourceId4 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                this.a.setPopupTheme(resourceId4);
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            this.q = tintTypedArrayObtainStyledAttributes.getTintManager();
        } else {
            this.b = a();
            this.q = TintManager.get(toolbar.getContext());
        }
        setDefaultNavigationContentDescription(i);
        this.l = this.a.getNavigationContentDescription();
        setDefaultNavigationIcon(this.q.getDrawable(i2));
        this.a.setNavigationOnClickListener(new View.OnClickListener() { // from class: android.support.v7.internal.widget.ToolbarWidgetWrapper.1
            final ActionMenuItem a;

            {
                this.a = new ActionMenuItem(ToolbarWidgetWrapper.this.a.getContext(), 0, android.R.id.home, 0, 0, ToolbarWidgetWrapper.this.j);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ToolbarWidgetWrapper.this.m != null && ToolbarWidgetWrapper.this.n) {
                    ToolbarWidgetWrapper.this.m.onMenuItemSelected(0, this.a);
                }
            }
        });
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setDefaultNavigationContentDescription(int i) {
        if (i != this.r) {
            this.r = i;
            if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
                setNavigationContentDescription(this.r);
            }
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setDefaultNavigationIcon(Drawable drawable) {
        if (this.s != drawable) {
            this.s = drawable;
            e();
        }
    }

    private int a() {
        if (this.a.getNavigationIcon() == null) {
            return 11;
        }
        return 15;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public ViewGroup getViewGroup() {
        return this.a;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public Context getContext() {
        return this.a.getContext();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean hasExpandedActionView() {
        return this.a.hasExpandedActionView();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void collapseActionView() {
        this.a.collapseActionView();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.m = callback;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.i) {
            a(charSequence);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.a.getTitle();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.i = true;
        a(charSequence);
    }

    private void a(CharSequence charSequence) {
        this.j = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public CharSequence getSubtitle() {
        return this.a.getSubtitle();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setSubtitle(CharSequence charSequence) {
        this.k = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setSubtitle(charSequence);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void initProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void initIndeterminateProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean hasIcon() {
        return this.f != null;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean hasLogo() {
        return this.g != null;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setIcon(int i) {
        setIcon(i != 0 ? this.q.getDrawable(i) : null);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.f = drawable;
        b();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setLogo(int i) {
        setLogo(i != 0 ? this.q.getDrawable(i) : null);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setLogo(Drawable drawable) {
        this.g = drawable;
        b();
    }

    private void b() {
        Drawable drawable = null;
        if ((this.b & 2) != 0) {
            drawable = ((this.b & 1) == 0 || this.g == null) ? this.f : this.g;
        }
        this.a.setLogo(drawable);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean canShowOverflowMenu() {
        return this.a.canShowOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean isOverflowMenuShowing() {
        return this.a.isOverflowMenuShowing();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean isOverflowMenuShowPending() {
        return this.a.isOverflowMenuShowPending();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean showOverflowMenu() {
        return this.a.showOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean hideOverflowMenu() {
        return this.a.hideOverflowMenu();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setMenuPrepared() {
        this.n = true;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (this.o == null) {
            this.o = new ActionMenuPresenter(this.a.getContext());
            this.o.setId(R.id.action_menu_presenter);
        }
        this.o.setCallback(callback);
        this.a.setMenu((MenuBuilder) menu, this.o);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void dismissPopupMenus() {
        this.a.dismissPopupMenus();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getDisplayOptions() {
        return this.b;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setDisplayOptions(int i) {
        int i2 = this.b ^ i;
        this.b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    e();
                    d();
                } else {
                    this.a.setNavigationIcon((Drawable) null);
                }
            }
            if ((i2 & 3) != 0) {
                b();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.a.setTitle(this.j);
                    this.a.setSubtitle(this.k);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) != 0 && this.e != null) {
                if ((i & 16) != 0) {
                    this.a.addView(this.e);
                } else {
                    this.a.removeView(this.e);
                }
            }
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.c != null && this.c.getParent() == this.a) {
            this.a.removeView(this.c);
        }
        this.c = scrollingTabContainerView;
        if (scrollingTabContainerView != null && this.p == 2) {
            this.a.addView(this.c, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.c.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = 8388691;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean hasEmbeddedTabs() {
        return this.c != null;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public boolean isTitleTruncated() {
        return this.a.isTitleTruncated();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setCollapsible(boolean z) {
        this.a.setCollapsible(z);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setHomeButtonEnabled(boolean z) {
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getNavigationMode() {
        return this.p;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setNavigationMode(int i) {
        int i2 = this.p;
        if (i != i2) {
            switch (i2) {
                case 1:
                    if (this.d != null && this.d.getParent() == this.a) {
                        this.a.removeView(this.d);
                    }
                    break;
                case 2:
                    if (this.c != null && this.c.getParent() == this.a) {
                        this.a.removeView(this.c);
                    }
                    break;
            }
            this.p = i;
            switch (i) {
                case 0:
                    return;
                case 1:
                    c();
                    this.a.addView(this.d, 0);
                    return;
                case 2:
                    if (this.c != null) {
                        this.a.addView(this.c, 0);
                        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.c.getLayoutParams();
                        layoutParams.width = -2;
                        layoutParams.height = -2;
                        layoutParams.gravity = 8388691;
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Invalid navigation mode " + i);
            }
        }
    }

    private void c() {
        if (this.d == null) {
            this.d = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
            this.d.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388627));
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        c();
        this.d.setAdapter(spinnerAdapter);
        this.d.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setDropdownSelectedPosition(int i) {
        if (this.d == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        this.d.setSelection(i);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getDropdownSelectedPosition() {
        if (this.d != null) {
            return this.d.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getDropdownItemCount() {
        if (this.d != null) {
            return this.d.getCount();
        }
        return 0;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setCustomView(View view) {
        if (this.e != null && (this.b & 16) != 0) {
            this.a.removeView(this.e);
        }
        this.e = view;
        if (view != null && (this.b & 16) != 0) {
            this.a.addView(this.e);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public View getCustomView() {
        return this.e;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void animateToVisibility(int i) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = setupAnimatorToVisibility(i, 200L);
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.start();
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i, long j) {
        if (i == 8) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this.a).alpha(0.0f);
            viewPropertyAnimatorCompatAlpha.setDuration(j);
            viewPropertyAnimatorCompatAlpha.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.widget.ToolbarWidgetWrapper.2
                private boolean b = false;

                @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                public void onAnimationEnd(View view) {
                    if (!this.b) {
                        ToolbarWidgetWrapper.this.a.setVisibility(8);
                    }
                }

                @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                public void onAnimationCancel(View view) {
                    this.b = true;
                }
            });
            return viewPropertyAnimatorCompatAlpha;
        }
        if (i == 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha2 = ViewCompat.animate(this.a).alpha(1.0f);
            viewPropertyAnimatorCompatAlpha2.setDuration(j);
            viewPropertyAnimatorCompatAlpha2.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.widget.ToolbarWidgetWrapper.3
                @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
                public void onAnimationStart(View view) {
                    ToolbarWidgetWrapper.this.a.setVisibility(0);
                }
            });
            return viewPropertyAnimatorCompatAlpha2;
        }
        return null;
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setNavigationIcon(Drawable drawable) {
        this.h = drawable;
        e();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setNavigationIcon(int i) {
        setNavigationIcon(i != 0 ? this.q.getDrawable(i) : null);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        this.l = charSequence;
        d();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i == 0 ? null : getContext().getString(i));
    }

    private void d() {
        if ((this.b & 4) != 0) {
            if (TextUtils.isEmpty(this.l)) {
                this.a.setNavigationContentDescription(this.r);
            } else {
                this.a.setNavigationContentDescription(this.l);
            }
        }
    }

    private void e() {
        if ((this.b & 4) != 0) {
            this.a.setNavigationIcon(this.h != null ? this.h : this.s);
        }
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void saveHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.a.saveHierarchyState(sparseArray);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void restoreHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.a.restoreHierarchyState(sparseArray);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setBackgroundDrawable(Drawable drawable) {
        this.a.setBackgroundDrawable(drawable);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getHeight() {
        return this.a.getHeight();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setVisibility(int i) {
        this.a.setVisibility(i);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public int getVisibility() {
        return this.a.getVisibility();
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.a.setMenuCallbacks(callback, callback2);
    }

    @Override // android.support.v7.internal.widget.DecorToolbar
    public Menu getMenu() {
        return this.a.getMenu();
    }
}
