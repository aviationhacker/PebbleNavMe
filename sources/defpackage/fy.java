package defpackage;

import android.graphics.Outline;
import android.support.annotation.NonNull;
import android.support.v7.internal.widget.ActionBarContainer;

/* JADX INFO: loaded from: classes.dex */
public class fy extends fx {
    public fy(ActionBarContainer actionBarContainer) {
        super(actionBarContainer);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        if (this.a.d) {
            if (this.a.c != null) {
                this.a.c.getOutline(outline);
            }
        } else if (this.a.a != null) {
            this.a.a.getOutline(outline);
        }
    }
}
