package android.support.v7.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import defpackage.fm;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {
    private final Delegate a;
    private final DrawerLayout b;
    private b c;
    private Drawable d;
    private boolean e;
    private boolean f;
    private final int g;
    private final int h;
    private View.OnClickListener i;
    private boolean j;

    public interface Delegate {
        Context getActionBarThemedContext();

        Drawable getThemeUpIndicator();

        boolean isNavigationVisible();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    interface b {
        void a(float f);
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @StringRes int i, @StringRes int i2) {
        this(activity, null, drawerLayout, null, i, i2);
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, @StringRes int i, @StringRes int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    <T extends Drawable & b> ActionBarDrawerToggle(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, T t, @StringRes int i, @StringRes int i2) {
        this.e = true;
        this.j = false;
        if (toolbar != null) {
            this.a = new f(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.ActionBarDrawerToggle.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ActionBarDrawerToggle.this.e) {
                        ActionBarDrawerToggle.this.b();
                    } else if (ActionBarDrawerToggle.this.i != null) {
                        ActionBarDrawerToggle.this.i.onClick(view);
                    }
                }
            });
        } else if (activity instanceof DelegateProvider) {
            this.a = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else if (Build.VERSION.SDK_INT >= 18) {
            this.a = new e(activity);
        } else if (Build.VERSION.SDK_INT >= 11) {
            this.a = new d(activity);
        } else {
            this.a = new c(activity);
        }
        this.b = drawerLayout;
        this.g = i;
        this.h = i2;
        if (t == null) {
            this.c = new a(activity, this.a.getActionBarThemedContext());
        } else {
            this.c = t;
        }
        this.d = a();
    }

    public void syncState() {
        if (this.b.isDrawerOpen(GravityCompat.START)) {
            this.c.a(1.0f);
        } else {
            this.c.a(0.0f);
        }
        if (this.e) {
            a((Drawable) this.c, this.b.isDrawerOpen(GravityCompat.START) ? this.h : this.g);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f) {
            this.d = a();
        }
        syncState();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.e) {
            return false;
        }
        b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.b.isDrawerVisible(GravityCompat.START)) {
            this.b.closeDrawer(GravityCompat.START);
        } else {
            this.b.openDrawer(GravityCompat.START);
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.d = a();
            this.f = false;
        } else {
            this.d = drawable;
            this.f = true;
        }
        if (!this.e) {
            a(this.d, 0);
        }
    }

    public void setHomeAsUpIndicator(int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = this.b.getResources().getDrawable(i);
        }
        setHomeAsUpIndicator(drawable);
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.e;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.e) {
            if (z) {
                a((Drawable) this.c, this.b.isDrawerOpen(GravityCompat.START) ? this.h : this.g);
            } else {
                a(this.d, 0);
            }
            this.e = z;
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f2) {
        this.c.a(Math.min(1.0f, Math.max(0.0f, f2)));
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        this.c.a(1.0f);
        if (this.e) {
            a(this.h);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        this.c.a(0.0f);
        if (this.e) {
            a(this.g);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    public View.OnClickListener getToolbarNavigationClickListener() {
        return this.i;
    }

    public void setToolbarNavigationClickListener(View.OnClickListener onClickListener) {
        this.i = onClickListener;
    }

    void a(Drawable drawable, int i) {
        if (!this.j && !this.a.isNavigationVisible()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.j = true;
        }
        this.a.setActionBarUpIndicator(drawable, i);
    }

    void a(int i) {
        this.a.setActionBarDescription(i);
    }

    Drawable a() {
        return this.a.getThemeUpIndicator();
    }

    static class a extends DrawerArrowDrawable implements b {
        private final Activity a;

        public a(Activity activity, Context context) {
            super(context);
            this.a = activity;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.b
        public void a(float f) {
            if (f == 1.0f) {
                setVerticalMirror(true);
            } else if (f == 0.0f) {
                setVerticalMirror(false);
            }
            setProgress(f);
        }
    }

    static class d implements Delegate {
        final Activity a;
        fm.a b;

        private d(Activity activity) {
            this.a = activity;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return fm.a(this.a);
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            android.app.ActionBar actionBar = this.a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.a;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            android.app.ActionBar actionBar = this.a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            this.a.getActionBar().setDisplayShowHomeEnabled(true);
            this.b = fm.a(this.b, this.a, drawable, i);
            this.a.getActionBar().setDisplayShowHomeEnabled(false);
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
            this.b = fm.a(this.b, this.a, i);
        }
    }

    static class e implements Delegate {
        final Activity a;

        private e(Activity activity) {
            this.a = activity;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TypedArray typedArrayObtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            android.app.ActionBar actionBar = this.a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.a;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            android.app.ActionBar actionBar = this.a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            android.app.ActionBar actionBar = this.a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
            android.app.ActionBar actionBar = this.a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        }
    }

    static class f implements Delegate {
        final Toolbar a;
        final Drawable b;
        final CharSequence c;

        f(Toolbar toolbar) {
            this.a = toolbar;
            this.b = toolbar.getNavigationIcon();
            this.c = toolbar.getNavigationContentDescription();
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, @StringRes int i) {
            this.a.setNavigationIcon(drawable);
            setActionBarDescription(i);
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(@StringRes int i) {
            if (i == 0) {
                this.a.setNavigationContentDescription(this.c);
            } else {
                this.a.setNavigationContentDescription(i);
            }
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return this.b;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return this.a.getContext();
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            return true;
        }
    }

    static class c implements Delegate {
        final Activity a;

        c(Activity activity) {
            this.a = activity;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, @StringRes int i) {
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(@StringRes int i) {
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return null;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return this.a;
        }

        @Override // android.support.v7.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            return true;
        }
    }
}
