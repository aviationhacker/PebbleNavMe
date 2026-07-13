package defpackage;

import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: loaded from: classes.dex */
public class fr implements AdapterView.OnItemSelectedListener {
    private final ActionBar.OnNavigationListener a;

    public fr(ActionBar.OnNavigationListener onNavigationListener) {
        this.a = onNavigationListener;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.a != null) {
            this.a.onNavigationItemSelected(i, j);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
