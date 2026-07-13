package defpackage;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class dh {
    public static Rect a(View view) {
        return view.getClipBounds();
    }

    public static void a(View view, Rect rect) {
        view.setClipBounds(rect);
    }
}
