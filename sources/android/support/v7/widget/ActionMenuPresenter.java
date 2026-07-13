package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.GravityCompat;
import android.support.v7.appcompat.R;
import android.support.v7.internal.transition.ActionBarTransition;
import android.support.v7.internal.view.ActionBarPolicy;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.BaseMenuPresenter;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuPopupHelper;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.widget.TintImageView;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.ListPopupWindow;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    final f a;
    int b;
    private d c;
    private Drawable d;
    private boolean e;
    private boolean f;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private final SparseBooleanArray p;
    private View q;
    private e r;
    private a s;
    private c t;
    private b u;

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.p = new SparseBooleanArray();
        this.a = new f();
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.g) {
            this.f = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.m) {
            this.h = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.k) {
            this.j = actionBarPolicy.getMaxActionButtons();
        }
        int measuredWidth = this.h;
        if (this.f) {
            if (this.c == null) {
                this.c = new d(this.mSystemContext);
                if (this.e) {
                    this.c.setImageDrawable(this.d);
                    this.d = null;
                    this.e = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.c.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.c.getMeasuredWidth();
        } else {
            this.c = null;
        }
        this.i = measuredWidth;
        this.o = (int) (56.0f * resources.getDisplayMetrics().density);
        this.q = null;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.k) {
            this.j = this.mContext.getResources().getInteger(R.integer.abc_max_action_buttons);
        }
        if (this.mMenu != null) {
            this.mMenu.onItemsChanged(true);
        }
    }

    public void setWidthLimit(int i, boolean z) {
        this.h = i;
        this.l = z;
        this.m = true;
    }

    public void setReserveOverflow(boolean z) {
        this.f = z;
        this.g = true;
    }

    public void setItemLimit(int i) {
        this.j = i;
        this.k = true;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.n = z;
    }

    public void setOverflowIcon(Drawable drawable) {
        if (this.c != null) {
            this.c.setImageDrawable(drawable);
        } else {
            this.e = true;
            this.d = drawable;
        }
    }

    public Drawable getOverflowIcon() {
        if (this.c != null) {
            return this.c.getDrawable();
        }
        if (this.e) {
            return this.d;
        }
        return null;
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = super.getMenuView(viewGroup);
        ((ActionMenuView) menuView).setPresenter(this);
        return menuView;
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.u == null) {
            this.u = new b();
        }
        actionMenuItemView.setPopupCallback(this.u);
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        boolean z2 = false;
        ViewGroup viewGroup = (ViewGroup) ((View) this.mMenuView).getParent();
        if (viewGroup != null) {
            ActionBarTransition.beginDelayedTransition(viewGroup);
        }
        super.updateMenuView(z);
        ((View) this.mMenuView).requestLayout();
        if (this.mMenu != null) {
            ArrayList<MenuItemImpl> actionItems = this.mMenu.getActionItems();
            int size = actionItems.size();
            for (int i = 0; i < size; i++) {
                ActionProvider supportActionProvider = actionItems.get(i).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        ArrayList<MenuItemImpl> nonActionItems = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
        if (this.f && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z2 = !nonActionItems.get(0).isActionViewExpanded();
            } else {
                z2 = size2 > 0;
            }
        }
        if (z2) {
            if (this.c == null) {
                this.c = new d(this.mSystemContext);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.c.getParent();
            if (viewGroup2 != this.mMenuView) {
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.c);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.c, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else if (this.c != null && this.c.getParent() == this.mMenuView) {
            ((ViewGroup) this.mMenuView).removeView(this.c);
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.f);
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.c) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i);
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View viewA = a(subMenuBuilder2.getItem());
        if (viewA == null) {
            if (this.c == null) {
                return false;
            }
            viewA = this.c;
        }
        this.b = subMenuBuilder.getItem().getItemId();
        this.s = new a(this, this.mContext, subMenuBuilder);
        this.s.setAnchorView(viewA);
        this.s.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean showOverflowMenu() {
        if (!this.f || isOverflowMenuShowing() || this.mMenu == null || this.mMenuView == null || this.t != null || this.mMenu.getNonActionItems().isEmpty()) {
            return false;
        }
        this.t = new c(new e(this.mContext, this.mMenu, this.c, true));
        ((View) this.mMenuView).post(this.t);
        super.onSubMenuSelected(null);
        return true;
    }

    public boolean hideOverflowMenu() {
        if (this.t != null && this.mMenuView != null) {
            ((View) this.mMenuView).removeCallbacks(this.t);
            this.t = null;
            return true;
        }
        e eVar = this.r;
        if (eVar != null) {
            eVar.dismiss();
            return true;
        }
        return false;
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    public boolean hideSubMenus() {
        if (this.s == null) {
            return false;
        }
        this.s.dismiss();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.r != null && this.r.isShowing();
    }

    public boolean isOverflowMenuShowPending() {
        return this.t != null || isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.f;
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public boolean flagActionItems() {
        int i;
        int measuredWidth;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        ArrayList<MenuItemImpl> visibleItems = this.mMenu.getVisibleItems();
        int size = visibleItems.size();
        int i8 = this.j;
        int i9 = this.i;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        int i10 = 0;
        int i11 = 0;
        boolean z3 = false;
        int i12 = 0;
        while (i12 < size) {
            MenuItemImpl menuItemImpl = visibleItems.get(i12);
            if (menuItemImpl.requiresActionButton()) {
                i10++;
            } else if (menuItemImpl.requestsActionButton()) {
                i11++;
            } else {
                z3 = true;
            }
            i12++;
            i8 = (this.n && menuItemImpl.isActionViewExpanded()) ? 0 : i8;
        }
        if (this.f && (z3 || i10 + i11 > i8)) {
            i8--;
        }
        int i13 = i8 - i10;
        SparseBooleanArray sparseBooleanArray = this.p;
        sparseBooleanArray.clear();
        int i14 = 0;
        if (!this.l) {
            i = 0;
        } else {
            i14 = i9 / this.o;
            i = ((i9 % this.o) / i14) + this.o;
        }
        int i15 = 0;
        int i16 = 0;
        int iA = i14;
        while (i15 < size) {
            MenuItemImpl menuItemImpl2 = visibleItems.get(i15);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = getItemView(menuItemImpl2, this.q, viewGroup);
                if (this.q == null) {
                    this.q = itemView;
                }
                if (this.l) {
                    iA -= ActionMenuView.a(itemView, i, iA, iMakeMeasureSpec, 0);
                } else {
                    itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                measuredWidth = itemView.getMeasuredWidth();
                int i17 = i9 - measuredWidth;
                if (i16 != 0) {
                    measuredWidth = i16;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                i2 = i17;
                i3 = i13;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i13 > 0 || z4) && i9 > 0 && (!this.l || iA > 0);
                if (z5) {
                    View itemView2 = getItemView(menuItemImpl2, this.q, viewGroup);
                    if (this.q == null) {
                        this.q = itemView2;
                    }
                    if (this.l) {
                        int iA2 = ActionMenuView.a(itemView2, i, iA, iMakeMeasureSpec, 0);
                        int i18 = iA - iA2;
                        z2 = iA2 == 0 ? false : z5;
                        i7 = i18;
                    } else {
                        itemView2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        boolean z6 = z5;
                        i7 = iA;
                        z2 = z6;
                    }
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i9 -= measuredWidth2;
                    if (i16 == 0) {
                        i16 = measuredWidth2;
                    }
                    if (this.l) {
                        z = z2 & (i9 >= 0);
                        i4 = i16;
                        i5 = i7;
                    } else {
                        z = z2 & (i9 + i16 > 0);
                        i4 = i16;
                        i5 = i7;
                    }
                } else {
                    z = z5;
                    i4 = i16;
                    i5 = iA;
                }
                if (z && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                    i6 = i13;
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    int i19 = i13;
                    for (int i20 = 0; i20 < i15; i20++) {
                        MenuItemImpl menuItemImpl3 = visibleItems.get(i20);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i19++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                    i6 = i19;
                } else {
                    i6 = i13;
                }
                if (z) {
                    i6--;
                }
                menuItemImpl2.setIsActionButton(z);
                measuredWidth = i4;
                i2 = i9;
                int i21 = i5;
                i3 = i6;
                iA = i21;
            } else {
                menuItemImpl2.setIsActionButton(false);
                measuredWidth = i16;
                i2 = i9;
                i3 = i13;
            }
            i15++;
            i9 = i2;
            i13 = i3;
            i16 = measuredWidth;
        }
        return true;
    }

    @Override // android.support.v7.internal.view.menu.BaseMenuPresenter, android.support.v7.internal.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z);
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.a = this.b;
        return savedState;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        SavedState savedState = (SavedState) parcelable;
        if (savedState.a > 0 && (menuItemFindItem = this.mMenu.findItem(savedState.a)) != null) {
            onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
        }
    }

    @Override // android.support.v4.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
        } else {
            this.mMenu.close(false);
        }
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.ActionMenuPresenter.SavedState.1
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
        public int a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
        }
    }

    class d extends TintImageView implements ActionMenuView.ActionMenuChildView {
        private final float[] b;

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            this.b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new ListPopupWindow.ForwardingListener(this) { // from class: android.support.v7.widget.ActionMenuPresenter.d.1
                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public ListPopupWindow getPopup() {
                    if (ActionMenuPresenter.this.r != null) {
                        return ActionMenuPresenter.this.r.getPopup();
                    }
                    return null;
                }

                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStarted() {
                    ActionMenuPresenter.this.showOverflowMenu();
                    return true;
                }

                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStopped() {
                    if (ActionMenuPresenter.this.t != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.hideOverflowMenu();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                ActionMenuPresenter.this.showOverflowMenu();
            }
            return true;
        }

        @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.support.v7.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.setHotspotBounds(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    class e extends MenuPopupHelper {
        public e(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, R.attr.actionOverflowMenuStyle);
            setGravity(GravityCompat.END);
            setCallback(ActionMenuPresenter.this.a);
        }

        @Override // android.support.v7.internal.view.menu.MenuPopupHelper, android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mMenu.close();
            ActionMenuPresenter.this.r = null;
        }
    }

    class a extends MenuPopupHelper {
        final /* synthetic */ ActionMenuPresenter c;
        private SubMenuBuilder d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ActionMenuPresenter actionMenuPresenter, Context context, SubMenuBuilder subMenuBuilder) {
            super(context, subMenuBuilder, null, false, R.attr.actionOverflowMenuStyle);
            boolean z = false;
            this.c = actionMenuPresenter;
            this.d = subMenuBuilder;
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                setAnchorView(actionMenuPresenter.c == null ? (View) actionMenuPresenter.mMenuView : actionMenuPresenter.c);
            }
            setCallback(actionMenuPresenter.a);
            int size = subMenuBuilder.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                MenuItem item = subMenuBuilder.getItem(i);
                if (!item.isVisible() || item.getIcon() == null) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            }
            setForceShowIcon(z);
        }

        @Override // android.support.v7.internal.view.menu.MenuPopupHelper, android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            super.onDismiss();
            this.c.s = null;
            this.c.b = 0;
        }
    }

    class f implements MenuPresenter.Callback {
        private f() {
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            ActionMenuPresenter.this.b = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            return callback != null ? callback.onOpenSubMenu(menuBuilder) : false;
        }

        @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                ((SubMenuBuilder) menuBuilder).getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z);
            }
        }
    }

    class c implements Runnable {
        private e b;

        public c(e eVar) {
            this.b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuPresenter.this.mMenu.changeMenuMode();
            View view = (View) ActionMenuPresenter.this.mMenuView;
            if (view != null && view.getWindowToken() != null && this.b.tryShow()) {
                ActionMenuPresenter.this.r = this.b;
            }
            ActionMenuPresenter.this.t = null;
        }
    }

    class b extends ActionMenuItemView.PopupCallback {
        private b() {
        }

        @Override // android.support.v7.internal.view.menu.ActionMenuItemView.PopupCallback
        public ListPopupWindow getPopup() {
            if (ActionMenuPresenter.this.s != null) {
                return ActionMenuPresenter.this.s.getPopup();
            }
            return null;
        }
    }
}
