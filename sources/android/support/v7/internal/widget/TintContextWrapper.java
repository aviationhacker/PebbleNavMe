package android.support.v7.internal.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import defpackage.fz;

/* JADX INFO: loaded from: classes.dex */
public class TintContextWrapper extends ContextWrapper {
    private Resources a;

    public static Context wrap(Context context) {
        if (!(context instanceof TintContextWrapper)) {
            return new TintContextWrapper(context);
        }
        return context;
    }

    private TintContextWrapper(Context context) {
        super(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.a == null) {
            this.a = new a(super.getResources(), TintManager.get(this));
        }
        return this.a;
    }

    static class a extends fz {
        private final TintManager a;

        public a(Resources resources, TintManager tintManager) {
            super(resources);
            this.a = tintManager;
        }

        @Override // defpackage.fz, android.content.res.Resources
        public Drawable getDrawable(int i) {
            Drawable drawable = super.getDrawable(i);
            if (drawable != null) {
                this.a.tintDrawableUsingColorFilter(i, drawable);
            }
            return drawable;
        }
    }
}
