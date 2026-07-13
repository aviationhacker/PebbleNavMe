package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.support.v7.internal.view.menu.MenuItemWrapperICS;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public class fu extends MenuItemWrapperICS {
    public fu(Context context, SupportMenuItem supportMenuItem) {
        super(context, supportMenuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.internal.view.menu.MenuItemWrapperICS
    public MenuItemWrapperICS.a a(ActionProvider actionProvider) {
        return new a(this.a, actionProvider);
    }

    class a extends MenuItemWrapperICS.a implements ActionProvider.VisibilityListener {
        ActionProvider.VisibilityListener c;

        public a(Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // android.support.v4.view.ActionProvider
        public View onCreateActionView(MenuItem menuItem) {
            return this.a.onCreateActionView(menuItem);
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean overridesItemVisibility() {
            return this.a.overridesItemVisibility();
        }

        @Override // android.support.v4.view.ActionProvider
        public boolean isVisible() {
            return this.a.isVisible();
        }

        @Override // android.support.v4.view.ActionProvider
        public void refreshVisibility() {
            this.a.refreshVisibility();
        }

        @Override // android.support.v4.view.ActionProvider
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.c = visibilityListener;
            android.view.ActionProvider actionProvider = this.a;
            if (visibilityListener == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.c != null) {
                this.c.onActionProviderVisibilityChanged(z);
            }
        }
    }
}
