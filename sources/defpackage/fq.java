package defpackage;

import android.content.Context;
import android.support.v7.app.AppCompatCallback;
import android.view.ActionMode;
import android.view.Window;
import defpackage.fp;

/* JADX INFO: loaded from: classes.dex */
public class fq extends fp {
    public fq(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    @Override // defpackage.fp, defpackage.fn
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    class a extends fp.a {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.internal.view.WindowCallbackWrapper, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (fq.this.isHandleNativeActionModesEnabled()) {
                switch (i) {
                    case 0:
                        return a(callback);
                }
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // fp.a, android.support.v7.internal.view.WindowCallbackWrapper, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }
    }
}
