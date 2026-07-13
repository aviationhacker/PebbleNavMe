package defpackage;

import android.view.View;
import android.widget.PopupMenu;

/* JADX INFO: loaded from: classes.dex */
public class fc {
    public static View.OnTouchListener a(Object obj) {
        return ((PopupMenu) obj).getDragToOpenListener();
    }
}
