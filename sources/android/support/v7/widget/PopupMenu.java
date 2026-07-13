package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.MenuRes;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuPopupHelper;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.widget.ListPopupWindow;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class PopupMenu implements MenuBuilder.Callback, MenuPresenter.Callback {
    private Context a;
    private MenuBuilder b;
    private View c;
    private MenuPopupHelper d;
    private OnMenuItemClickListener e;
    private OnDismissListener f;
    private View.OnTouchListener g;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        this(context, view, 0);
    }

    public PopupMenu(Context context, View view, int i) {
        this(context, view, i, R.attr.popupMenuStyle, 0);
    }

    public PopupMenu(Context context, View view, int i, int i2, int i3) {
        this.a = context;
        this.b = new MenuBuilder(context);
        this.b.setCallback(this);
        this.c = view;
        this.d = new MenuPopupHelper(context, this.b, view, false, i2, i3);
        this.d.setGravity(i);
        this.d.setCallback(this);
    }

    public void setGravity(int i) {
        this.d.setGravity(i);
    }

    public int getGravity() {
        return this.d.getGravity();
    }

    public View.OnTouchListener getDragToOpenListener() {
        if (this.g == null) {
            this.g = new ListPopupWindow.ForwardingListener(this.c) { // from class: android.support.v7.widget.PopupMenu.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStarted() {
                    PopupMenu.this.show();
                    return true;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public boolean onForwardingStopped() {
                    PopupMenu.this.dismiss();
                    return true;
                }

                @Override // android.support.v7.widget.ListPopupWindow.ForwardingListener
                public ListPopupWindow getPopup() {
                    return PopupMenu.this.d.getPopup();
                }
            };
        }
        return this.g;
    }

    public Menu getMenu() {
        return this.b;
    }

    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.a);
    }

    public void inflate(@MenuRes int i) {
        getMenuInflater().inflate(i, this.b);
    }

    public void show() {
        this.d.show();
    }

    public void dismiss() {
        this.d.dismiss();
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.e = onMenuItemClickListener;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.e != null) {
            return this.e.onMenuItemClick(menuItem);
        }
        return false;
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.f != null) {
            this.f.onDismiss(this);
        }
    }

    @Override // android.support.v7.internal.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            return false;
        }
        if (!menuBuilder.hasVisibleItems()) {
            return true;
        }
        new MenuPopupHelper(this.a, menuBuilder, this.c).show();
        return true;
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    @Override // android.support.v7.internal.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }
}
