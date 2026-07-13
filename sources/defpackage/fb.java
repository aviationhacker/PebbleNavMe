package defpackage;

import android.view.View;
import android.widget.ListPopupWindow;

/* JADX INFO: loaded from: classes.dex */
public class fb {
    public static View.OnTouchListener a(Object obj, View view) {
        return ((ListPopupWindow) obj).createDragToOpenListener(view);
    }
}
