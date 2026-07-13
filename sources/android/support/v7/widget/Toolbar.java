package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.widget.DecorToolbar;
import android.support.v7.internal.widget.RtlSpacingHelper;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ToolbarWidgetWrapper;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.widget.ActionMenuView;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private boolean A;
    private final ArrayList<View> B;
    private final ArrayList<View> C;
    private final int[] D;
    private OnMenuItemClickListener E;
    private final ActionMenuView.OnMenuItemClickListener F;
    private ToolbarWidgetWrapper G;
    private ActionMenuPresenter H;
    private a I;
    private MenuPresenter.Callback J;
    private MenuBuilder.Callback K;
    private boolean L;
    private final Runnable M;
    private final TintManager N;
    View a;
    private ActionMenuView b;
    private TextView c;
    private TextView d;
    private ImageButton e;
    private ImageView f;
    private Drawable g;
    private CharSequence h;
    private ImageButton i;
    private Context j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private final RtlSpacingHelper t;
    private int u;
    private CharSequence v;
    private CharSequence w;
    private int x;
    private int y;
    private boolean z;

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.t = new RtlSpacingHelper();
        this.u = 8388627;
        this.B = new ArrayList<>();
        this.C = new ArrayList<>();
        this.D = new int[2];
        this.F = new ActionMenuView.OnMenuItemClickListener() { // from class: android.support.v7.widget.Toolbar.1
            @Override // android.support.v7.widget.ActionMenuView.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (Toolbar.this.E != null) {
                    return Toolbar.this.E.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.M = new Runnable() { // from class: android.support.v7.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, R.styleable.Toolbar, i, 0);
        this.l = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
        this.m = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.u = tintTypedArrayObtainStyledAttributes.getInteger(R.styleable.Toolbar_android_gravity, this.u);
        this.n = 48;
        int dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, 0);
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        this.p = dimensionPixelOffset;
        int dimensionPixelOffset2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.s = dimensionPixelOffset5;
        }
        this.o = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        this.t.setAbsolute(tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0), tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0));
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.t.setRelative(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.g = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_collapseIcon);
        this.h = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_collapseContentDescription);
        CharSequence text = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.j = getContext();
        setPopupTheme(tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_popupTheme, 0));
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_navigationIcon);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_logo);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(tintTypedArrayObtainStyledAttributes.getColor(R.styleable.Toolbar_titleTextColor, -1));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(tintTypedArrayObtainStyledAttributes.getColor(R.styleable.Toolbar_subtitleTextColor, -1));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.N = tintTypedArrayObtainStyledAttributes.getTintManager();
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.k;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        this.t.setDirection(i == 1);
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(this.N.getDrawable(i));
    }

    public boolean canShowOverflowMenu() {
        return getVisibility() == 0 && this.b != null && this.b.isOverflowReserved();
    }

    public boolean isOverflowMenuShowing() {
        return this.b != null && this.b.isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowPending() {
        return this.b != null && this.b.isOverflowMenuShowPending();
    }

    public boolean showOverflowMenu() {
        return this.b != null && this.b.showOverflowMenu();
    }

    public boolean hideOverflowMenu() {
        return this.b != null && this.b.hideOverflowMenu();
    }

    public void setMenu(MenuBuilder menuBuilder, ActionMenuPresenter actionMenuPresenter) {
        if (menuBuilder != null || this.b != null) {
            e();
            MenuBuilder menuBuilderPeekMenu = this.b.peekMenu();
            if (menuBuilderPeekMenu != menuBuilder) {
                if (menuBuilderPeekMenu != null) {
                    menuBuilderPeekMenu.removeMenuPresenter(this.H);
                    menuBuilderPeekMenu.removeMenuPresenter(this.I);
                }
                if (this.I == null) {
                    this.I = new a();
                }
                actionMenuPresenter.setExpandedActionViewsExclusive(true);
                if (menuBuilder != null) {
                    menuBuilder.addMenuPresenter(actionMenuPresenter, this.j);
                    menuBuilder.addMenuPresenter(this.I, this.j);
                } else {
                    actionMenuPresenter.initForMenu(this.j, null);
                    this.I.initForMenu(this.j, null);
                    actionMenuPresenter.updateMenuView(true);
                    this.I.updateMenuView(true);
                }
                this.b.setPopupTheme(this.k);
                this.b.setPresenter(actionMenuPresenter);
                this.H = actionMenuPresenter;
            }
        }
    }

    public void dismissPopupMenus() {
        if (this.b != null) {
            this.b.dismissPopupMenus();
        }
    }

    public boolean isTitleTruncated() {
        Layout layout;
        if (this.c == null || (layout = this.c.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            c();
            if (!d(this.f)) {
                a((View) this.f, true);
            }
        } else if (this.f != null && d(this.f)) {
            removeView(this.f);
            this.C.remove(this.f);
        }
        if (this.f != null) {
            this.f.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        if (this.f != null) {
            return this.f.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        if (this.f != null) {
            this.f.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        if (this.f != null) {
            return this.f.getContentDescription();
        }
        return null;
    }

    private void c() {
        if (this.f == null) {
            this.f = new ImageView(getContext());
        }
    }

    public boolean hasExpandedActionView() {
        return (this.I == null || this.I.b == null) ? false : true;
    }

    public void collapseActionView() {
        MenuItemImpl menuItemImpl = this.I == null ? null : this.I.b;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.v;
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.c == null) {
                Context context = getContext();
                this.c = new TextView(context);
                this.c.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                if (this.l != 0) {
                    this.c.setTextAppearance(context, this.l);
                }
                if (this.x != 0) {
                    this.c.setTextColor(this.x);
                }
            }
            if (!d(this.c)) {
                a((View) this.c, true);
            }
        } else if (this.c != null && d(this.c)) {
            removeView(this.c);
            this.C.remove(this.c);
        }
        if (this.c != null) {
            this.c.setText(charSequence);
        }
        this.v = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.w;
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.d == null) {
                Context context = getContext();
                this.d = new TextView(context);
                this.d.setSingleLine();
                this.d.setEllipsize(TextUtils.TruncateAt.END);
                if (this.m != 0) {
                    this.d.setTextAppearance(context, this.m);
                }
                if (this.y != 0) {
                    this.d.setTextColor(this.y);
                }
            }
            if (!d(this.d)) {
                a((View) this.d, true);
            }
        } else if (this.d != null && d(this.d)) {
            removeView(this.d);
            this.C.remove(this.d);
        }
        if (this.d != null) {
            this.d.setText(charSequence);
        }
        this.w = charSequence;
    }

    public void setTitleTextAppearance(Context context, @StyleRes int i) {
        this.l = i;
        if (this.c != null) {
            this.c.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int i) {
        this.m = i;
        if (this.d != null) {
            this.d.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@ColorInt int i) {
        this.x = i;
        if (this.c != null) {
            this.c.setTextColor(i);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        this.y = i;
        if (this.d != null) {
            this.d.setTextColor(i);
        }
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        if (this.e != null) {
            return this.e.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        if (this.e != null) {
            this.e.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(this.N.getDrawable(i));
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            f();
            if (!d(this.e)) {
                a((View) this.e, true);
            }
        } else if (this.e != null && d(this.e)) {
            removeView(this.e);
            this.C.remove(this.e);
        }
        if (this.e != null) {
            this.e.setImageDrawable(drawable);
        }
    }

    @Nullable
    public Drawable getNavigationIcon() {
        if (this.e != null) {
            return this.e.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        f();
        this.e.setOnClickListener(onClickListener);
    }

    public Menu getMenu() {
        d();
        return this.b.getMenu();
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        d();
        this.b.setOverflowIcon(drawable);
    }

    @Nullable
    public Drawable getOverflowIcon() {
        d();
        return this.b.getOverflowIcon();
    }

    private void d() {
        e();
        if (this.b.peekMenu() == null) {
            MenuBuilder menuBuilder = (MenuBuilder) this.b.getMenu();
            if (this.I == null) {
                this.I = new a();
            }
            this.b.setExpandedActionViewsExclusive(true);
            menuBuilder.addMenuPresenter(this.I, this.j);
        }
    }

    private void e() {
        if (this.b == null) {
            this.b = new ActionMenuView(getContext());
            this.b.setPopupTheme(this.k);
            this.b.setOnMenuItemClickListener(this.F);
            this.b.setMenuCallbacks(this.J, this.K);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388613 | (this.n & 112);
            this.b.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            a((View) this.b, false);
        }
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    public void inflateMenu(@MenuRes int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.E = onMenuItemClickListener;
    }

    public void setContentInsetsRelative(int i, int i2) {
        this.t.setRelative(i, i2);
    }

    public int getContentInsetStart() {
        return this.t.getStart();
    }

    public int getContentInsetEnd() {
        return this.t.getEnd();
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        this.t.setAbsolute(i, i2);
    }

    public int getContentInsetLeft() {
        return this.t.getLeft();
    }

    public int getContentInsetRight() {
        return this.t.getRight();
    }

    private void f() {
        if (this.e == null) {
            this.e = new ImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (this.n & 112);
            this.e.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.i == null) {
            this.i = new ImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.i.setImageDrawable(this.g);
            this.i.setContentDescription(this.h);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (this.n & 112);
            layoutParamsGenerateDefaultLayoutParams.a = 2;
            this.i.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.i.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.collapseActionView();
                }
            });
        }
    }

    private void a(View view, boolean z) {
        LayoutParams layoutParamsGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParamsGenerateLayoutParams = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            layoutParamsGenerateLayoutParams = generateLayoutParams(layoutParams);
        } else {
            layoutParamsGenerateLayoutParams = (LayoutParams) layoutParams;
        }
        layoutParamsGenerateLayoutParams.a = 1;
        if (z && this.a != null) {
            view.setLayoutParams(layoutParamsGenerateLayoutParams);
            this.C.add(view);
        } else {
            addView(view, layoutParamsGenerateLayoutParams);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.I != null && this.I.b != null) {
            savedState.a = this.I.b.getItemId();
        }
        savedState.b = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        MenuBuilder menuBuilderPeekMenu = this.b != null ? this.b.peekMenu() : null;
        if (savedState.a != 0 && this.I != null && menuBuilderPeekMenu != null && (menuItemFindItem = menuBuilderPeekMenu.findItem(savedState.a)) != null) {
            MenuItemCompat.expandActionView(menuItemFindItem);
        }
        if (savedState.b) {
            h();
        }
    }

    private void h() {
        removeCallbacks(this.M);
        post(this.M);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.M);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.z = false;
        }
        if (!this.z) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.z = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.z = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 9) {
            this.A = false;
        }
        if (!this.A) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.A = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.A = false;
        }
        return true;
    }

    private void a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, Ints.MAX_POWER_OF_TWO);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + iMax + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private boolean i() {
        if (!this.L) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (a(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c;
        char c2;
        int iCombineMeasuredStates;
        int i3;
        int iMax = 0;
        int iCombineMeasuredStates2 = 0;
        int[] iArr = this.D;
        if (ViewUtils.isLayoutRtl(this)) {
            c = 0;
            c2 = 1;
        } else {
            c = 1;
            c2 = 0;
        }
        int measuredWidth = 0;
        if (a(this.e)) {
            a(this.e, i, 0, i2, 0, this.o);
            measuredWidth = this.e.getMeasuredWidth() + b(this.e);
            int iMax2 = Math.max(0, this.e.getMeasuredHeight() + c(this.e));
            iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState(this.e));
            iMax = iMax2;
        }
        if (a(this.i)) {
            a(this.i, i, 0, i2, 0, this.o);
            measuredWidth = this.i.getMeasuredWidth() + b(this.i);
            iMax = Math.max(iMax, this.i.getMeasuredHeight() + c(this.i));
            iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates2, ViewCompat.getMeasuredState(this.i));
        }
        int contentInsetStart = getContentInsetStart();
        int iMax3 = 0 + Math.max(contentInsetStart, measuredWidth);
        iArr[c2] = Math.max(0, contentInsetStart - measuredWidth);
        int measuredWidth2 = 0;
        if (a(this.b)) {
            a(this.b, i, iMax3, i2, 0, this.o);
            measuredWidth2 = this.b.getMeasuredWidth() + b(this.b);
            iMax = Math.max(iMax, this.b.getMeasuredHeight() + c(this.b));
            iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates2, ViewCompat.getMeasuredState(this.b));
        }
        int contentInsetEnd = getContentInsetEnd();
        int iMax4 = iMax3 + Math.max(contentInsetEnd, measuredWidth2);
        iArr[c] = Math.max(0, contentInsetEnd - measuredWidth2);
        if (a(this.a)) {
            iMax4 += a(this.a, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.a.getMeasuredHeight() + c(this.a));
            iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates2, ViewCompat.getMeasuredState(this.a));
        }
        if (a(this.f)) {
            iMax4 += a(this.f, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.f.getMeasuredHeight() + c(this.f));
            iCombineMeasuredStates2 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates2, ViewCompat.getMeasuredState(this.f));
        }
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = iMax;
        int iCombineMeasuredStates3 = iCombineMeasuredStates2;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            if (((LayoutParams) childAt.getLayoutParams()).a != 0) {
                iCombineMeasuredStates = iCombineMeasuredStates3;
                i3 = i5;
            } else if (a(childAt)) {
                iMax4 += a(childAt, i, iMax4, i2, 0, iArr);
                int iMax5 = Math.max(i5, childAt.getMeasuredHeight() + c(childAt));
                iCombineMeasuredStates = ViewUtils.combineMeasuredStates(iCombineMeasuredStates3, ViewCompat.getMeasuredState(childAt));
                i3 = iMax5;
            } else {
                iCombineMeasuredStates = iCombineMeasuredStates3;
                i3 = i5;
            }
            i4++;
            iCombineMeasuredStates3 = iCombineMeasuredStates;
            i5 = i3;
        }
        int iMax6 = 0;
        int measuredHeight = 0;
        int i6 = this.r + this.s;
        int i7 = this.p + this.q;
        if (a(this.c)) {
            a(this.c, i, iMax4 + i7, i2, i6, iArr);
            iMax6 = b(this.c) + this.c.getMeasuredWidth();
            measuredHeight = this.c.getMeasuredHeight() + c(this.c);
            iCombineMeasuredStates3 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates3, ViewCompat.getMeasuredState(this.c));
        }
        if (a(this.d)) {
            iMax6 = Math.max(iMax6, a(this.d, i, iMax4 + i7, i2, i6 + measuredHeight, iArr));
            measuredHeight += this.d.getMeasuredHeight() + c(this.d);
            iCombineMeasuredStates3 = ViewUtils.combineMeasuredStates(iCombineMeasuredStates3, ViewCompat.getMeasuredState(this.d));
        }
        int iMax7 = Math.max(i5, measuredHeight);
        int paddingLeft = iMax6 + iMax4 + getPaddingLeft() + getPaddingRight();
        int paddingTop = iMax7 + getPaddingTop() + getPaddingBottom();
        int iResolveSizeAndState = ViewCompat.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates3);
        int iResolveSizeAndState2 = ViewCompat.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates3 << 16);
        if (i()) {
            iResolveSizeAndState2 = 0;
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iA;
        int iMin;
        int iMax;
        int measuredHeight;
        int paddingTop;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iMax2;
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int iB = width - paddingRight;
        int[] iArr = this.D;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (!a(this.e)) {
            iA = paddingLeft;
        } else if (z2) {
            iB = b(this.e, iB, iArr, minimumHeight);
            iA = paddingLeft;
        } else {
            iA = a(this.e, paddingLeft, iArr, minimumHeight);
        }
        if (a(this.i)) {
            if (z2) {
                iB = b(this.i, iB, iArr, minimumHeight);
            } else {
                iA = a(this.i, iA, iArr, minimumHeight);
            }
        }
        if (a(this.b)) {
            if (z2) {
                iA = a(this.b, iA, iArr, minimumHeight);
            } else {
                iB = b(this.b, iB, iArr, minimumHeight);
            }
        }
        iArr[0] = Math.max(0, getContentInsetLeft() - iA);
        iArr[1] = Math.max(0, getContentInsetRight() - ((width - paddingRight) - iB));
        int iMax3 = Math.max(iA, getContentInsetLeft());
        int iMin2 = Math.min(iB, (width - paddingRight) - getContentInsetRight());
        if (a(this.a)) {
            if (z2) {
                iMin2 = b(this.a, iMin2, iArr, minimumHeight);
            } else {
                iMax3 = a(this.a, iMax3, iArr, minimumHeight);
            }
        }
        if (!a(this.f)) {
            iMin = iMin2;
            iMax = iMax3;
        } else if (z2) {
            iMin = b(this.f, iMin2, iArr, minimumHeight);
            iMax = iMax3;
        } else {
            iMin = iMin2;
            iMax = a(this.f, iMax3, iArr, minimumHeight);
        }
        boolean zA = a(this.c);
        boolean zA2 = a(this.d);
        int measuredHeight2 = 0;
        if (zA) {
            LayoutParams layoutParams = (LayoutParams) this.c.getLayoutParams();
            measuredHeight2 = 0 + layoutParams.bottomMargin + layoutParams.topMargin + this.c.getMeasuredHeight();
        }
        if (zA2) {
            LayoutParams layoutParams2 = (LayoutParams) this.d.getLayoutParams();
            measuredHeight = layoutParams2.bottomMargin + layoutParams2.topMargin + this.d.getMeasuredHeight() + measuredHeight2;
        } else {
            measuredHeight = measuredHeight2;
        }
        if (zA || zA2) {
            TextView textView = zA ? this.c : this.d;
            TextView textView2 = zA2 ? this.d : this.c;
            LayoutParams layoutParams3 = (LayoutParams) textView.getLayoutParams();
            LayoutParams layoutParams4 = (LayoutParams) textView2.getLayoutParams();
            boolean z3 = (zA && this.c.getMeasuredWidth() > 0) || (zA2 && this.d.getMeasuredWidth() > 0);
            switch (this.u & 112) {
                case 48:
                    paddingTop = layoutParams3.topMargin + getPaddingTop() + this.r;
                    break;
                case 80:
                    paddingTop = (((height - paddingBottom) - layoutParams4.bottomMargin) - this.s) - measuredHeight;
                    break;
                default:
                    int i10 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    if (i10 < layoutParams3.topMargin + this.r) {
                        iMax2 = layoutParams3.topMargin + this.r;
                    } else {
                        int i11 = (((height - paddingBottom) - measuredHeight) - i10) - paddingTop2;
                        iMax2 = i11 < layoutParams3.bottomMargin + this.s ? Math.max(0, i10 - ((layoutParams4.bottomMargin + this.s) - i11)) : i10;
                    }
                    paddingTop = paddingTop2 + iMax2;
                    break;
            }
            if (z2) {
                int i12 = (z3 ? this.p : 0) - iArr[1];
                int iMax4 = iMin - Math.max(0, i12);
                iArr[1] = Math.max(0, -i12);
                if (zA) {
                    LayoutParams layoutParams5 = (LayoutParams) this.c.getLayoutParams();
                    int measuredWidth = iMax4 - this.c.getMeasuredWidth();
                    int measuredHeight3 = this.c.getMeasuredHeight() + paddingTop;
                    this.c.layout(measuredWidth, paddingTop, iMax4, measuredHeight3);
                    int i13 = measuredWidth - this.q;
                    paddingTop = measuredHeight3 + layoutParams5.bottomMargin;
                    i8 = i13;
                } else {
                    i8 = iMax4;
                }
                if (zA2) {
                    LayoutParams layoutParams6 = (LayoutParams) this.d.getLayoutParams();
                    int i14 = layoutParams6.topMargin + paddingTop;
                    int measuredWidth2 = iMax4 - this.d.getMeasuredWidth();
                    int measuredHeight4 = this.d.getMeasuredHeight() + i14;
                    this.d.layout(measuredWidth2, i14, iMax4, measuredHeight4);
                    int i15 = iMax4 - this.q;
                    int i16 = layoutParams6.bottomMargin + measuredHeight4;
                    i9 = i15;
                } else {
                    i9 = iMax4;
                }
                iMin = z3 ? Math.min(i8, i9) : iMax4;
            } else {
                int i17 = (z3 ? this.p : 0) - iArr[0];
                iMax += Math.max(0, i17);
                iArr[0] = Math.max(0, -i17);
                if (zA) {
                    LayoutParams layoutParams7 = (LayoutParams) this.c.getLayoutParams();
                    int measuredWidth3 = this.c.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.c.getMeasuredHeight() + paddingTop;
                    this.c.layout(iMax, paddingTop, measuredWidth3, measuredHeight5);
                    int i18 = measuredWidth3 + this.q;
                    int i19 = layoutParams7.bottomMargin + measuredHeight5;
                    i5 = i18;
                    i6 = i19;
                } else {
                    i5 = iMax;
                    i6 = paddingTop;
                }
                if (zA2) {
                    LayoutParams layoutParams8 = (LayoutParams) this.d.getLayoutParams();
                    int i20 = i6 + layoutParams8.topMargin;
                    int measuredWidth4 = this.d.getMeasuredWidth() + iMax;
                    int measuredHeight6 = this.d.getMeasuredHeight() + i20;
                    this.d.layout(iMax, i20, measuredWidth4, measuredHeight6);
                    int i21 = this.q + measuredWidth4;
                    int i22 = layoutParams8.bottomMargin + measuredHeight6;
                    i7 = i21;
                } else {
                    i7 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i5, i7);
                }
            }
        }
        a(this.B, 3);
        int size = this.B.size();
        int iA2 = iMax;
        for (int i23 = 0; i23 < size; i23++) {
            iA2 = a(this.B.get(i23), iA2, iArr, minimumHeight);
        }
        a(this.B, 5);
        int size2 = this.B.size();
        for (int i24 = 0; i24 < size2; i24++) {
            iMin = b(this.B.get(i24), iMin, iArr, minimumHeight);
        }
        a(this.B, 1);
        int iA3 = a(this.B, iArr);
        int i25 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (iA3 / 2);
        int i26 = iA3 + i25;
        if (i25 < iA2) {
            i25 = iA2;
        } else if (i26 > iMin) {
            i25 -= i26 - iMin;
        }
        int size3 = this.B.size();
        int iA4 = i25;
        for (int i27 = 0; i27 < size3; i27++) {
            iA4 = a(this.B.get(i27), iA4, iArr, minimumHeight);
        }
        this.B.clear();
    }

    private int a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int measuredWidth = 0;
        int iMax = i2;
        int iMax2 = i;
        while (i3 < size) {
            View view = list.get(i3);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i4 = layoutParams.leftMargin - iMax2;
            int i5 = layoutParams.rightMargin - iMax;
            int iMax3 = Math.max(0, i4);
            int iMax4 = Math.max(0, i5);
            iMax2 = Math.max(0, -i4);
            iMax = Math.max(0, -i5);
            i3++;
            measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
        }
        return measuredWidth;
    }

    private int a(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int iA = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iA, iMax + measuredWidth, view.getMeasuredHeight() + iA);
        return layoutParams.rightMargin + measuredWidth + iMax;
    }

    private int b(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iA = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iA, iMax, view.getMeasuredHeight() + iA);
        return iMax - (layoutParams.leftMargin + measuredWidth);
    }

    private int a(View view, int i) {
        int iMax;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        switch (a(layoutParams.gravity)) {
            case 48:
                return getPaddingTop() - i2;
            case 80:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin) - i2;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i3 < layoutParams.topMargin) {
                    iMax = layoutParams.topMargin;
                } else {
                    int i4 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                    iMax = i4 < layoutParams.bottomMargin ? Math.max(0, i3 - (layoutParams.bottomMargin - i4)) : i3;
                }
                return iMax + paddingTop;
        }
    }

    private int a(int i) {
        int i2 = i & 112;
        switch (i2) {
            case 16:
            case 48:
            case 80:
                return i2;
            default:
                return this.u & 112;
        }
    }

    private void a(List<View> list, int i) {
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a == 0 && a(childAt) && b(layoutParams.gravity) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.a == 0 && a(childAt2) && b(layoutParams2.gravity) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    private int b(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, layoutDirection) & 7;
        switch (absoluteGravity) {
            case 1:
            case 3:
            case 5:
                return absoluteGravity;
            case 2:
            case 4:
            default:
                return layoutDirection == 1 ? 5 : 3;
        }
    }

    private boolean a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
    }

    private int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public DecorToolbar getWrapper() {
        if (this.G == null) {
            this.G = new ToolbarWidgetWrapper(this, true);
        }
        return this.G;
    }

    void a() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).a != 2 && childAt != this.b) {
                removeViewAt(childCount);
                this.C.add(childAt);
            }
        }
    }

    void b() {
        for (int size = this.C.size() - 1; size >= 0; size--) {
            addView(this.C.get(size));
        }
        this.C.clear();
    }

    private boolean d(View view) {
        return view.getParent() == this || this.C.contains(view);
    }

    public void setCollapsible(boolean z) {
        this.L = z;
        requestLayout();
    }

    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.J = callback;
        this.K = callback2;
    }

    public static class LayoutParams extends ActionBar.LayoutParams {
        int a;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.a = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.a = 0;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.a = 0;
            this.a = layoutParams.a;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 0;
            a(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.Toolbar.SavedState.1
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
        boolean b;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
            this.b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }

    class a implements MenuPresenter {
        MenuBuilder a;
        MenuItemImpl b;

        private a() {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (this.a != null && this.b != null) {
                this.a.collapseItemActionView(this.b);
            }
            this.a = menuBuilder;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public void updateMenuView(boolean z) {
            boolean z2 = false;
            if (this.b != null) {
                if (this.a != null) {
                    int size = this.a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.a.getItem(i) != this.b) {
                            i++;
                        } else {
                            z2 = true;
                            break;
                        }
                    }
                }
                if (!z2) {
                    collapseItemActionView(this.a, this.b);
                }
            }
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            Toolbar.this.g();
            if (Toolbar.this.i.getParent() != Toolbar.this) {
                Toolbar.this.addView(Toolbar.this.i);
            }
            Toolbar.this.a = menuItemImpl.getActionView();
            this.b = menuItemImpl;
            if (Toolbar.this.a.getParent() != Toolbar.this) {
                LayoutParams layoutParamsGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                layoutParamsGenerateDefaultLayoutParams.gravity = 8388611 | (Toolbar.this.n & 112);
                layoutParamsGenerateDefaultLayoutParams.a = 2;
                Toolbar.this.a.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.a);
            }
            Toolbar.this.a();
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (Toolbar.this.a instanceof CollapsibleActionView) {
                ((CollapsibleActionView) Toolbar.this.a).onActionViewExpanded();
            }
            return true;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (Toolbar.this.a instanceof CollapsibleActionView) {
                ((CollapsibleActionView) Toolbar.this.a).onActionViewCollapsed();
            }
            Toolbar.this.removeView(Toolbar.this.a);
            Toolbar.this.removeView(Toolbar.this.i);
            Toolbar.this.a = null;
            Toolbar.this.b();
            this.b = null;
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }
    }
}
