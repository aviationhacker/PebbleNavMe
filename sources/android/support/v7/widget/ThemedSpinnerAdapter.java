package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.internal.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {
    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);

    public static final class Helper {
        private final Context a;
        private final LayoutInflater b;
        private LayoutInflater c;

        public Helper(@NonNull Context context) {
            this.a = context;
            this.b = LayoutInflater.from(context);
        }

        public void setDropDownViewTheme(@Nullable Resources.Theme theme) {
            if (theme == null) {
                this.c = null;
            } else if (theme == this.a.getTheme()) {
                this.c = this.b;
            } else {
                this.c = LayoutInflater.from(new ContextThemeWrapper(this.a, theme));
            }
        }

        @Nullable
        public Resources.Theme getDropDownViewTheme() {
            if (this.c == null) {
                return null;
            }
            return this.c.getContext().getTheme();
        }

        @NonNull
        public LayoutInflater getDropDownViewInflater() {
            return this.c != null ? this.c : this.b;
        }
    }
}
