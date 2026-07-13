package defpackage;

import android.content.Context;
import android.support.v7.app.AppCompatCallback;
import android.support.v7.internal.view.SupportActionModeWrapper;
import android.view.ActionMode;
import android.view.Window;
import defpackage.fn;

/* JADX INFO: loaded from: classes.dex */
public class fp extends fo {
    private boolean r;

    public fp(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.r = true;
    }

    @Override // defpackage.fn
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    @Override // defpackage.fn, android.support.v7.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z) {
        this.r = z;
    }

    @Override // defpackage.fn, android.support.v7.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.r;
    }

    class a extends fn.b {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.internal.view.WindowCallbackWrapper, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return fp.this.isHandleNativeActionModesEnabled() ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(fp.this.a, callback);
            android.support.v7.view.ActionMode actionModeStartSupportActionMode = fp.this.startSupportActionMode(callbackWrapper);
            if (actionModeStartSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(actionModeStartSupportActionMode);
            }
            return null;
        }
    }
}
