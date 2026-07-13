package defpackage;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
public class fj {

    public interface a {
        boolean a();
    }

    public interface b {
        boolean a(String str);

        boolean b(String str);
    }

    public static View a(Context context) {
        return new SearchView(context);
    }

    public static void a(View view, ComponentName componentName) {
        SearchView searchView = (SearchView) view;
        searchView.setSearchableInfo(((SearchManager) searchView.getContext().getSystemService("search")).getSearchableInfo(componentName));
    }

    public static Object a(final b bVar) {
        return new SearchView.OnQueryTextListener() { // from class: fj.1
            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                return bVar.a(str);
            }

            @Override // android.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return bVar.b(str);
            }
        };
    }

    public static void a(Object obj, Object obj2) {
        ((SearchView) obj).setOnQueryTextListener((SearchView.OnQueryTextListener) obj2);
    }

    public static Object a(final a aVar) {
        return new SearchView.OnCloseListener() { // from class: fj.2
            @Override // android.widget.SearchView.OnCloseListener
            public boolean onClose() {
                return aVar.a();
            }
        };
    }

    public static void b(Object obj, Object obj2) {
        ((SearchView) obj).setOnCloseListener((SearchView.OnCloseListener) obj2);
    }

    public static CharSequence a(View view) {
        return ((SearchView) view).getQuery();
    }

    public static void a(View view, CharSequence charSequence, boolean z) {
        ((SearchView) view).setQuery(charSequence, z);
    }

    public static void a(View view, CharSequence charSequence) {
        ((SearchView) view).setQueryHint(charSequence);
    }

    public static void a(View view, boolean z) {
        ((SearchView) view).setIconified(z);
    }

    public static boolean b(View view) {
        return ((SearchView) view).isIconified();
    }

    public static void b(View view, boolean z) {
        ((SearchView) view).setSubmitButtonEnabled(z);
    }

    public static boolean c(View view) {
        return ((SearchView) view).isSubmitButtonEnabled();
    }

    public static void c(View view, boolean z) {
        ((SearchView) view).setQueryRefinementEnabled(z);
    }

    public static boolean d(View view) {
        return ((SearchView) view).isQueryRefinementEnabled();
    }

    public static void a(View view, int i) {
        ((SearchView) view).setMaxWidth(i);
    }
}
