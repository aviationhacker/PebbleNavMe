package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
class SearchViewCompatIcs {

    public static class MySearchView extends SearchView {
        public MySearchView(Context context) {
            super(context);
        }

        @Override // android.widget.SearchView, android.view.CollapsibleActionView
        public void onActionViewCollapsed() {
            setQuery("", false);
            super.onActionViewCollapsed();
        }
    }

    public static View a(Context context) {
        return new MySearchView(context);
    }

    public static void a(View view, int i) {
        ((SearchView) view).setImeOptions(i);
    }

    public static void b(View view, int i) {
        ((SearchView) view).setInputType(i);
    }
}
