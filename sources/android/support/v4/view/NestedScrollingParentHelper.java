package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollingParentHelper {
    private final ViewGroup a;
    private int b;

    public NestedScrollingParentHelper(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.b = i;
    }

    public int getNestedScrollAxes() {
        return this.b;
    }

    public void onStopNestedScroll(View view) {
        this.b = 0;
    }
}
