package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;
import defpackage.j;
import defpackage.k;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {
    private static final a a;
    private final Activity b;
    private final Delegate c;
    private final DrawerLayout d;
    private boolean e;
    private boolean f;
    private Drawable g;
    private Drawable h;
    private e i;
    private final int j;
    private final int k;
    private final int l;
    private Object m;

    public interface Delegate {
        @Nullable
        Drawable getThemeUpIndicator();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    interface a {
        Drawable a(Activity activity);

        Object a(Object obj, Activity activity, int i);

        Object a(Object obj, Activity activity, Drawable drawable, int i);
    }

    static class b implements a {
        private b() {
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Drawable a(Activity activity) {
            return null;
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, Drawable drawable, int i) {
            return obj;
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, int i) {
            return obj;
        }
    }

    static class c implements a {
        private c() {
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Drawable a(Activity activity) {
            return j.a(activity);
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, Drawable drawable, int i) {
            return j.a(obj, activity, drawable, i);
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, int i) {
            return j.a(obj, activity, i);
        }
    }

    static class d implements a {
        private d() {
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Drawable a(Activity activity) {
            return k.a(activity);
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, Drawable drawable, int i) {
            return k.a(obj, activity, drawable, i);
        }

        @Override // android.support.v4.app.ActionBarDrawerToggle.a
        public Object a(Object obj, Activity activity, int i) {
            return k.a(obj, activity, i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this(activity, drawerLayout, !a(activity), i, i2, i3);
    }

    private static boolean a(Context context) {
        return context.getApplicationInfo().targetSdkVersion >= 21 && Build.VERSION.SDK_INT >= 21;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, boolean z, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this.e = true;
        this.b = activity;
        if (activity instanceof DelegateProvider) {
            this.c = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.c = null;
        }
        this.d = drawerLayout;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.g = a();
        this.h = ContextCompat.getDrawable(activity, i);
        this.i = new e(this.h);
        this.i.b(z ? 0.33333334f : 0.0f);
    }

    public void syncState() {
        if (this.d.isDrawerOpen(GravityCompat.START)) {
            this.i.a(1.0f);
        } else {
            this.i.a(0.0f);
        }
        if (this.e) {
            a(this.i, this.d.isDrawerOpen(GravityCompat.START) ? this.l : this.k);
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.g = a();
            this.f = false;
        } else {
            this.g = drawable;
            this.f = true;
        }
        if (!this.e) {
            a(this.g, 0);
        }
    }

    public void setHomeAsUpIndicator(int i) {
        Drawable drawable = null;
        if (i != 0) {
            drawable = ContextCompat.getDrawable(this.b, i);
        }
        setHomeAsUpIndicator(drawable);
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.e) {
            if (z) {
                a(this.i, this.d.isDrawerOpen(GravityCompat.START) ? this.l : this.k);
            } else {
                a(this.g, 0);
            }
            this.e = z;
        }
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.e;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f) {
            this.g = a();
        }
        this.h = ContextCompat.getDrawable(this.b, this.j);
        syncState();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this.e) {
            if (this.d.isDrawerVisible(GravityCompat.START)) {
                this.d.closeDrawer(GravityCompat.START);
            } else {
                this.d.openDrawer(GravityCompat.START);
            }
            return true;
        }
        return false;
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        float fMin;
        float fA = this.i.a();
        if (f > 0.5f) {
            fMin = Math.max(fA, Math.max(0.0f, f - 0.5f) * 2.0f);
        } else {
            fMin = Math.min(fA, f * 2.0f);
        }
        this.i.a(fMin);
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        this.i.a(1.0f);
        if (this.e) {
            a(this.l);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        this.i.a(0.0f);
        if (this.e) {
            a(this.k);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    Drawable a() {
        return this.c != null ? this.c.getThemeUpIndicator() : a.a(this.b);
    }

    void a(Drawable drawable, int i) {
        if (this.c != null) {
            this.c.setActionBarUpIndicator(drawable, i);
        } else {
            this.m = a.a(this.m, this.b, drawable, i);
        }
    }

    void a(int i) {
        if (this.c != null) {
            this.c.setActionBarDescription(i);
        } else {
            this.m = a.a(this.m, this.b, i);
        }
    }

    class e extends InsetDrawable implements Drawable.Callback {
        private final boolean b;
        private final Rect c;
        private float d;
        private float e;

        private e(Drawable drawable) {
            super(drawable, 0);
            this.b = Build.VERSION.SDK_INT > 18;
            this.c = new Rect();
        }

        public void a(float f) {
            this.d = f;
            invalidateSelf();
        }

        public float a() {
            return this.d;
        }

        public void b(float f) {
            this.e = f;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            copyBounds(this.c);
            canvas.save();
            boolean z = ViewCompat.getLayoutDirection(ActionBarDrawerToggle.this.b.getWindow().getDecorView()) == 1;
            int i = z ? -1 : 1;
            int iWidth = this.c.width();
            canvas.translate(i * (-this.e) * iWidth * this.d, 0.0f);
            if (z && !this.b) {
                canvas.translate(iWidth, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }
    }
}
