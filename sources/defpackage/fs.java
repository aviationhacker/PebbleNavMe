package defpackage;

import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.support.v4.util.ArrayMap;
import android.support.v7.internal.view.menu.MenuWrapperFactory;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class fs<T> extends ft<T> {
    protected final Context a;
    private Map<SupportMenuItem, MenuItem> c;
    private Map<SupportSubMenu, SubMenu> d;

    protected fs(Context context, T t) {
        super(t);
        this.a = context;
    }

    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.c == null) {
            this.c = new ArrayMap();
        }
        MenuItem menuItem2 = this.c.get(menuItem);
        if (menuItem2 == null) {
            MenuItem menuItemWrapSupportMenuItem = MenuWrapperFactory.wrapSupportMenuItem(this.a, supportMenuItem);
            this.c.put(supportMenuItem, menuItemWrapSupportMenuItem);
            return menuItemWrapSupportMenuItem;
        }
        return menuItem2;
    }

    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.d == null) {
            this.d = new ArrayMap();
        }
        SubMenu subMenu2 = this.d.get(supportSubMenu);
        if (subMenu2 == null) {
            SubMenu subMenuWrapSupportSubMenu = MenuWrapperFactory.wrapSupportSubMenu(this.a, supportSubMenu);
            this.d.put(supportSubMenu, subMenuWrapSupportSubMenu);
            return subMenuWrapSupportSubMenu;
        }
        return subMenu2;
    }

    final void a() {
        if (this.c != null) {
            this.c.clear();
        }
        if (this.d != null) {
            this.d.clear();
        }
    }

    final void a(int i) {
        if (this.c != null) {
            Iterator<SupportMenuItem> it = this.c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    final void b(int i) {
        if (this.c != null) {
            Iterator<SupportMenuItem> it = this.c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
