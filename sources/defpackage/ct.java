package defpackage;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public class ct {

    public interface b {
        boolean a(MenuItem menuItem);

        boolean b(MenuItem menuItem);
    }

    public static boolean a(MenuItem menuItem) {
        return menuItem.expandActionView();
    }

    public static boolean b(MenuItem menuItem) {
        return menuItem.collapseActionView();
    }

    public static boolean c(MenuItem menuItem) {
        return menuItem.isActionViewExpanded();
    }

    public static MenuItem a(MenuItem menuItem, b bVar) {
        return menuItem.setOnActionExpandListener(new a(bVar));
    }

    static class a implements MenuItem.OnActionExpandListener {
        private b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.a.a(menuItem);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.a.b(menuItem);
        }
    }
}
