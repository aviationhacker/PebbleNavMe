package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.widget.ListPopupWindow;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MenuPopupHelper implements MenuPresenter, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
    static final int a = R.layout.abc_popup_menu_item_layout;
    boolean b;
    private final Context c;
    private final LayoutInflater d;
    private final MenuBuilder e;
    private final a f;
    private final boolean g;
    private final int h;
    private final int i;
    private final int j;
    private View k;
    private ListPopupWindow l;
    private ViewTreeObserver m;
    private MenuPresenter.Callback n;
    private ViewGroup o;
    private boolean p;
    private int q;
    private int r;

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, R.attr.popupMenuStyle);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view) {
        this(context, menuBuilder, view, false, R.attr.popupMenuStyle);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i) {
        this(context, menuBuilder, view, z, i, 0);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i, int i2) {
        this.r = 0;
        this.c = context;
        this.d = LayoutInflater.from(context);
        this.e = menuBuilder;
        this.f = new a(this.e);
        this.g = z;
        this.i = i;
        this.j = i2;
        Resources resources = context.getResources();
        this.h = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.k = view;
        menuBuilder.addMenuPresenter(this, context);
    }

    public void setAnchorView(View view) {
        this.k = view;
    }

    public void setForceShowIcon(boolean z) {
        this.b = z;
    }

    public void setGravity(int i) {
        this.r = i;
    }

    public int getGravity() {
        return this.r;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public ListPopupWindow getPopup() {
        return this.l;
    }

    public boolean tryShow() {
        this.l = new ListPopupWindow(this.c, null, this.i, this.j);
        this.l.setOnDismissListener(this);
        this.l.setOnItemClickListener(this);
        this.l.setAdapter(this.f);
        this.l.setModal(true);
        View view = this.k;
        if (view == null) {
            return false;
        }
        boolean z = this.m == null;
        this.m = view.getViewTreeObserver();
        if (z) {
            this.m.addOnGlobalLayoutListener(this);
        }
        this.l.setAnchorView(view);
        this.l.setDropDownGravity(this.r);
        if (!this.p) {
            this.q = a();
            this.p = true;
        }
        this.l.setContentWidth(this.q);
        this.l.setInputMethodMode(2);
        this.l.show();
        this.l.getListView().setOnKeyListener(this);
        return true;
    }

    public void dismiss() {
        if (isShowing()) {
            this.l.dismiss();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.l = null;
        this.e.close();
        if (this.m != null) {
            if (!this.m.isAlive()) {
                this.m = this.k.getViewTreeObserver();
            }
            this.m.removeGlobalOnLayoutListener(this);
            this.m = null;
        }
    }

    public boolean isShowing() {
        return this.l != null && this.l.isShowing();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        a aVar = this.f;
        aVar.b.performItemAction(aVar.getItem(i), 0);
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    private int a() {
        View view;
        a aVar = this.f;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = aVar.getCount();
        int i = 0;
        int i2 = 0;
        View view2 = null;
        int i3 = 0;
        while (i < count) {
            int itemViewType = aVar.getItemViewType(i);
            if (itemViewType != i2) {
                i2 = itemViewType;
                view = null;
            } else {
                view = view2;
            }
            if (this.o == null) {
                this.o = new FrameLayout(this.c);
            }
            view2 = aVar.getView(i, view, this.o);
            view2.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view2.getMeasuredWidth();
            if (measuredWidth >= this.h) {
                return this.h;
            }
            if (measuredWidth <= i3) {
                measuredWidth = i3;
            }
            i++;
            i3 = measuredWidth;
        }
        return i3;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (isShowing()) {
            View view = this.k;
            if (view == null || !view.isShown()) {
                dismiss();
            } else if (isShowing()) {
                this.l.show();
            }
        }
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        this.p = false;
        if (this.f != null) {
            this.f.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.n = callback;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.c, subMenuBuilder, this.k);
            menuPopupHelper.setCallback(this.n);
            int size = subMenuBuilder.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = subMenuBuilder.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            menuPopupHelper.setForceShowIcon(z);
            if (menuPopupHelper.tryShow()) {
                if (this.n == null) {
                    return true;
                }
                this.n.onOpenSubMenu(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.e) {
            dismiss();
            if (this.n != null) {
                this.n.onCloseMenu(menuBuilder, z);
            }
        }
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
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

    class a extends BaseAdapter {
        private MenuBuilder b;
        private int c = -1;

        public a(MenuBuilder menuBuilder) {
            this.b = menuBuilder;
            a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<MenuItemImpl> nonActionItems = MenuPopupHelper.this.g ? this.b.getNonActionItems() : this.b.getVisibleItems();
            if (this.c < 0) {
                return nonActionItems.size();
            }
            return nonActionItems.size() - 1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MenuItemImpl getItem(int i) {
            ArrayList<MenuItemImpl> nonActionItems = MenuPopupHelper.this.g ? this.b.getNonActionItems() : this.b.getVisibleItems();
            if (this.c >= 0 && i >= this.c) {
                i++;
            }
            return nonActionItems.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewInflate = view == null ? MenuPopupHelper.this.d.inflate(MenuPopupHelper.a, viewGroup, false) : view;
            MenuView.ItemView itemView = (MenuView.ItemView) viewInflate;
            if (MenuPopupHelper.this.b) {
                ((ListMenuItemView) viewInflate).setForceShowIcon(true);
            }
            itemView.initialize(getItem(i), 0);
            return viewInflate;
        }

        void a() {
            MenuItemImpl expandedItem = MenuPopupHelper.this.e.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<MenuItemImpl> nonActionItems = MenuPopupHelper.this.e.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (nonActionItems.get(i) == expandedItem) {
                        this.c = i;
                        return;
                    }
                }
            }
            this.c = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }
}
