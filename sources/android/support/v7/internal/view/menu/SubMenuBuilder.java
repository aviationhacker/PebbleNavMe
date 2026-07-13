package android.support.v7.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuBuilder d;
    private MenuItemImpl e;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.d = menuBuilder;
        this.e = menuItemImpl;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.d.setQwertyMode(z);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public boolean isQwertyMode() {
        return this.d.isQwertyMode();
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public void setShortcutsVisible(boolean z) {
        this.d.setShortcutsVisible(z);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public boolean isShortcutsVisible() {
        return this.d.isShortcutsVisible();
    }

    public Menu getParentMenu() {
        return this.d;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.e;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public void setCallback(MenuBuilder.Callback callback) {
        this.d.setCallback(callback);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public MenuBuilder getRootMenu() {
        return this.d;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
        return super.a(menuBuilder, menuItem) || this.d.a(menuBuilder, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.e.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.setHeaderIconInt(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        super.setHeaderIconInt(ContextCompat.getDrawable(getContext(), i));
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.setHeaderTitleInt(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        super.setHeaderTitleInt(getContext().getResources().getString(i));
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.setHeaderViewInt(view);
        return this;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return this.d.expandItemActionView(menuItemImpl);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return this.d.collapseItemActionView(menuItemImpl);
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder
    public String getActionViewStatesKey() {
        int itemId = this.e != null ? this.e.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }
}
