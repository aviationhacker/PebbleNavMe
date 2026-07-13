package android.support.v4.view;

import android.os.Build;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import defpackage.cs;
import defpackage.ct;

/* JADX INFO: loaded from: classes.dex */
public class MenuItemCompat {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    static final d a;

    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    interface d {
        MenuItem a(MenuItem menuItem, OnActionExpandListener onActionExpandListener);

        MenuItem a(MenuItem menuItem, View view);

        View a(MenuItem menuItem);

        void a(MenuItem menuItem, int i);

        MenuItem b(MenuItem menuItem, int i);

        boolean b(MenuItem menuItem);

        boolean c(MenuItem menuItem);

        boolean d(MenuItem menuItem);
    }

    static class a implements d {
        a() {
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public void a(MenuItem menuItem, int i) {
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem a(MenuItem menuItem, View view) {
            return menuItem;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem b(MenuItem menuItem, int i) {
            return menuItem;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public View a(MenuItem menuItem) {
            return null;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean b(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean c(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean d(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem a(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }
    }

    static class b implements d {
        b() {
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public void a(MenuItem menuItem, int i) {
            cs.a(menuItem, i);
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem a(MenuItem menuItem, View view) {
            return cs.a(menuItem, view);
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem b(MenuItem menuItem, int i) {
            return cs.b(menuItem, i);
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public View a(MenuItem menuItem) {
            return cs.a(menuItem);
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean b(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean c(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public boolean d(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.d
        public MenuItem a(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.MenuItemCompat.b, android.support.v4.view.MenuItemCompat.d
        public boolean b(MenuItem menuItem) {
            return ct.a(menuItem);
        }

        @Override // android.support.v4.view.MenuItemCompat.b, android.support.v4.view.MenuItemCompat.d
        public boolean c(MenuItem menuItem) {
            return ct.b(menuItem);
        }

        @Override // android.support.v4.view.MenuItemCompat.b, android.support.v4.view.MenuItemCompat.d
        public boolean d(MenuItem menuItem) {
            return ct.c(menuItem);
        }

        @Override // android.support.v4.view.MenuItemCompat.b, android.support.v4.view.MenuItemCompat.d
        public MenuItem a(MenuItem menuItem, final OnActionExpandListener onActionExpandListener) {
            return onActionExpandListener == null ? ct.a(menuItem, null) : ct.a(menuItem, new ct.b() { // from class: android.support.v4.view.MenuItemCompat.c.1
                @Override // ct.b
                public boolean a(MenuItem menuItem2) {
                    return onActionExpandListener.onMenuItemActionExpand(menuItem2);
                }

                @Override // ct.b
                public boolean b(MenuItem menuItem2) {
                    return onActionExpandListener.onMenuItemActionCollapse(menuItem2);
                }
            });
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 14) {
            a = new c();
        } else if (i >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static void setShowAsAction(MenuItem menuItem, int i) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setShowAsAction(i);
        } else {
            a.a(menuItem, i);
        }
    }

    public static MenuItem setActionView(MenuItem menuItem, View view) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setActionView(view) : a.a(menuItem, view);
    }

    public static MenuItem setActionView(MenuItem menuItem, int i) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setActionView(i) : a.b(menuItem, i);
    }

    public static View getActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getActionView() : a.a(menuItem);
    }

    public static MenuItem setActionProvider(MenuItem menuItem, ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static ActionProvider getActionProvider(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).getSupportActionProvider();
        }
        Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    public static boolean expandActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).expandActionView() : a.b(menuItem);
    }

    public static boolean collapseActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).collapseActionView() : a.c(menuItem);
    }

    public static boolean isActionViewExpanded(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).isActionViewExpanded() : a.d(menuItem);
    }

    public static MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setSupportOnActionExpandListener(onActionExpandListener) : a.a(menuItem, onActionExpandListener);
    }
}
