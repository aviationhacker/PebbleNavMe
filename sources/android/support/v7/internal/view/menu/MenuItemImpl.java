package android.support.v7.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.widget.TintManager;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public final class MenuItemImpl implements SupportMenuItem {
    private static String w;
    private static String x;
    private static String y;
    private static String z;
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private CharSequence e;
    private CharSequence f;
    private Intent g;
    private char h;
    private char i;
    private Drawable j;
    private MenuBuilder l;
    private SubMenuBuilder m;
    private Runnable n;
    private MenuItem.OnMenuItemClickListener o;
    private int q;
    private View r;
    private ActionProvider s;
    private MenuItemCompat.OnActionExpandListener t;
    private ContextMenu.ContextMenuInfo v;
    private int k = 0;
    private int p = 16;
    private boolean u = false;

    MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.q = 0;
        this.l = menuBuilder;
        this.a = i2;
        this.b = i;
        this.c = i3;
        this.d = i4;
        this.e = charSequence;
        this.q = i5;
    }

    public boolean invoke() {
        if ((this.o != null && this.o.onMenuItemClick(this)) || this.l.a(this.l.getRootMenu(), this)) {
            return true;
        }
        if (this.n != null) {
            this.n.run();
            return true;
        }
        if (this.g != null) {
            try {
                this.l.getContext().startActivity(this.g);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        return this.s != null && this.s.onPerformDefaultAction();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.p |= 16;
        } else {
            this.p &= -17;
        }
        this.l.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.a;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.c;
    }

    public int getOrdering() {
        return this.d;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.n = runnable;
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.i != c) {
            this.i = Character.toLowerCase(c);
            this.l.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.h != c) {
            this.h = c;
            this.l.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.h = c;
        this.i = Character.toLowerCase(c2);
        this.l.onItemsChanged(false);
        return this;
    }

    char a() {
        return this.l.isQwertyMode() ? this.i : this.h;
    }

    String b() {
        char cA = a();
        if (cA == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(w);
        switch (cA) {
            case '\b':
                sb.append(y);
                break;
            case '\n':
                sb.append(x);
                break;
            case ' ':
                sb.append(z);
                break;
            default:
                sb.append(cA);
                break;
        }
        return sb.toString();
    }

    boolean c() {
        return this.l.isShortcutsVisible() && a() != 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.m != null;
    }

    public void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.m = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.e;
    }

    CharSequence a(MenuView.ItemView itemView) {
        return (itemView == null || !itemView.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.e = charSequence;
        this.l.onItemsChanged(false);
        if (this.m != null) {
            this.m.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.l.getContext().getString(i));
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f != null ? this.f : this.e;
        if (Build.VERSION.SDK_INT < 18 && charSequence != null && !(charSequence instanceof String)) {
            return charSequence.toString();
        }
        return charSequence;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.e;
        }
        this.l.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        if (this.j != null) {
            return this.j;
        }
        if (this.k != 0) {
            Drawable drawable = TintManager.getDrawable(this.l.getContext(), this.k);
            this.k = 0;
            this.j = drawable;
            return drawable;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.k = 0;
        this.j = drawable;
        this.l.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.j = null;
        this.k = i;
        this.l.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.p & 1) == 1;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z2) {
        int i = this.p;
        this.p = (z2 ? 1 : 0) | (this.p & (-2));
        if (i != this.p) {
            this.l.onItemsChanged(false);
        }
        return this;
    }

    public void setExclusiveCheckable(boolean z2) {
        this.p = (z2 ? 4 : 0) | (this.p & (-5));
    }

    public boolean isExclusiveCheckable() {
        return (this.p & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.p & 2) == 2;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z2) {
        if ((this.p & 4) != 0) {
            this.l.a((MenuItem) this);
        } else {
            a(z2);
        }
        return this;
    }

    void a(boolean z2) {
        int i = this.p;
        this.p = (z2 ? 2 : 0) | (this.p & (-3));
        if (i != this.p) {
            this.l.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.s == null || !this.s.overridesItemVisibility()) ? (this.p & 8) == 0 : (this.p & 8) == 0 && this.s.isVisible();
    }

    boolean b(boolean z2) {
        int i = this.p;
        this.p = (z2 ? 0 : 8) | (this.p & (-9));
        return i != this.p;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z2) {
        if (b(z2)) {
            this.l.a(this);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.o = onMenuItemClickListener;
        return this;
    }

    public String toString() {
        return this.e.toString();
    }

    void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.v = contextMenuInfo;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.v;
    }

    public void actionFormatChanged() {
        this.l.b(this);
    }

    public boolean shouldShowIcon() {
        return this.l.b();
    }

    public boolean isActionButton() {
        return (this.p & 32) == 32;
    }

    public boolean requestsActionButton() {
        return (this.q & 1) == 1;
    }

    public boolean requiresActionButton() {
        return (this.q & 2) == 2;
    }

    public void setIsActionButton(boolean z2) {
        if (z2) {
            this.p |= 32;
        } else {
            this.p &= -33;
        }
    }

    public boolean showsTextAsAction() {
        return (this.q & 4) == 4;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.q = i;
                this.l.b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(View view) {
        this.r = view;
        this.s = null;
        if (view != null && view.getId() == -1 && this.a > 0) {
            view.setId(this.a);
        }
        this.l.b(this);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(int i) {
        Context context = this.l.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        if (this.r != null) {
            return this.r;
        }
        if (this.s != null) {
            this.r = this.s.onCreateActionView(this);
            return this.r;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public ActionProvider getSupportActionProvider() {
        return this.s;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        if (this.s != null) {
            this.s.reset();
        }
        this.r = null;
        this.s = actionProvider;
        this.l.onItemsChanged(true);
        if (this.s != null) {
            this.s.setVisibilityListener(new ActionProvider.VisibilityListener() { // from class: android.support.v7.internal.view.menu.MenuItemImpl.1
                @Override // android.support.v4.view.ActionProvider.VisibilityListener
                public void onActionProviderVisibilityChanged(boolean z2) {
                    MenuItemImpl.this.l.a(MenuItemImpl.this);
                }
            });
        }
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (!hasCollapsibleActionView()) {
            return false;
        }
        if (this.t == null || this.t.onMenuItemActionExpand(this)) {
            return this.l.expandItemActionView(this);
        }
        return false;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.q & 8) == 0) {
            return false;
        }
        if (this.r == null) {
            return true;
        }
        if (this.t == null || this.t.onMenuItemActionCollapse(this)) {
            return this.l.collapseItemActionView(this);
        }
        return false;
    }

    @Override // android.support.v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportOnActionExpandListener(MenuItemCompat.OnActionExpandListener onActionExpandListener) {
        this.t = onActionExpandListener;
        return this;
    }

    public boolean hasCollapsibleActionView() {
        if ((this.q & 8) == 0) {
            return false;
        }
        if (this.r == null && this.s != null) {
            this.r = this.s.onCreateActionView(this);
        }
        return this.r != null;
    }

    public void setActionViewExpanded(boolean z2) {
        this.u = z2;
        this.l.onItemsChanged(false);
    }

    @Override // android.support.v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.u;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
    }
}
