package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.view.View;
import defpackage.fj;

/* JADX INFO: loaded from: classes.dex */
public class SearchViewCompat {
    private static final c a;

    interface c {
        View a(Context context);

        CharSequence a(View view);

        Object a(OnCloseListenerCompat onCloseListenerCompat);

        Object a(OnQueryTextListenerCompat onQueryTextListenerCompat);

        void a(View view, int i);

        void a(View view, ComponentName componentName);

        void a(View view, CharSequence charSequence);

        void a(View view, CharSequence charSequence, boolean z);

        void a(View view, boolean z);

        void a(Object obj, Object obj2);

        void b(View view, int i);

        void b(View view, boolean z);

        void b(Object obj, Object obj2);

        boolean b(View view);

        void c(View view, int i);

        void c(View view, boolean z);

        boolean c(View view);

        boolean d(View view);
    }

    static class d implements c {
        d() {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public View a(Context context) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(View view, ComponentName componentName) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void b(View view, int i) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void c(View view, int i) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public Object a(OnQueryTextListenerCompat onQueryTextListenerCompat) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(Object obj, Object obj2) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public Object a(OnCloseListenerCompat onCloseListenerCompat) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void b(Object obj, Object obj2) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public CharSequence a(View view) {
            return null;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(View view, CharSequence charSequence, boolean z) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(View view, CharSequence charSequence) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(View view, boolean z) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public boolean b(View view) {
            return true;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void b(View view, boolean z) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public boolean c(View view) {
            return false;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void c(View view, boolean z) {
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public boolean d(View view) {
            return false;
        }

        @Override // android.support.v4.widget.SearchViewCompat.c
        public void a(View view, int i) {
        }
    }

    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public View a(Context context) {
            return fj.a(context);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(View view, ComponentName componentName) {
            fj.a(view, componentName);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public Object a(final OnQueryTextListenerCompat onQueryTextListenerCompat) {
            return fj.a(new fj.b() { // from class: android.support.v4.widget.SearchViewCompat.a.1
                @Override // fj.b
                public boolean a(String str) {
                    return onQueryTextListenerCompat.onQueryTextSubmit(str);
                }

                @Override // fj.b
                public boolean b(String str) {
                    return onQueryTextListenerCompat.onQueryTextChange(str);
                }
            });
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(Object obj, Object obj2) {
            fj.a(obj, obj2);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public Object a(final OnCloseListenerCompat onCloseListenerCompat) {
            return fj.a(new fj.a() { // from class: android.support.v4.widget.SearchViewCompat.a.2
                @Override // fj.a
                public boolean a() {
                    return onCloseListenerCompat.onClose();
                }
            });
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void b(Object obj, Object obj2) {
            fj.b(obj, obj2);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public CharSequence a(View view) {
            return fj.a(view);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(View view, CharSequence charSequence, boolean z) {
            fj.a(view, charSequence, z);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(View view, CharSequence charSequence) {
            fj.a(view, charSequence);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(View view, boolean z) {
            fj.a(view, z);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public boolean b(View view) {
            return fj.b(view);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void b(View view, boolean z) {
            fj.b(view, z);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public boolean c(View view) {
            return fj.c(view);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void c(View view, boolean z) {
            fj.c(view, z);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public boolean d(View view) {
            return fj.d(view);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void a(View view, int i) {
            fj.a(view, i);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.widget.SearchViewCompat.a, android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public View a(Context context) {
            return SearchViewCompatIcs.a(context);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void b(View view, int i) {
            SearchViewCompatIcs.a(view, i);
        }

        @Override // android.support.v4.widget.SearchViewCompat.d, android.support.v4.widget.SearchViewCompat.c
        public void c(View view, int i) {
            SearchViewCompatIcs.b(view, i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 11) {
            a = new a();
        } else {
            a = new d();
        }
    }

    public static View newSearchView(Context context) {
        return a.a(context);
    }

    public static void setSearchableInfo(View view, ComponentName componentName) {
        a.a(view, componentName);
    }

    public static void setImeOptions(View view, int i) {
        a.b(view, i);
    }

    public static void setInputType(View view, int i) {
        a.c(view, i);
    }

    public static void setOnQueryTextListener(View view, OnQueryTextListenerCompat onQueryTextListenerCompat) {
        a.a(view, onQueryTextListenerCompat.a);
    }

    public static abstract class OnQueryTextListenerCompat {
        final Object a = SearchViewCompat.a.a(this);

        public boolean onQueryTextSubmit(String str) {
            return false;
        }

        public boolean onQueryTextChange(String str) {
            return false;
        }
    }

    public static void setOnCloseListener(View view, OnCloseListenerCompat onCloseListenerCompat) {
        a.b(view, onCloseListenerCompat.a);
    }

    public static abstract class OnCloseListenerCompat {
        final Object a = SearchViewCompat.a.a(this);

        public boolean onClose() {
            return false;
        }
    }

    public static CharSequence getQuery(View view) {
        return a.a(view);
    }

    public static void setQuery(View view, CharSequence charSequence, boolean z) {
        a.a(view, charSequence, z);
    }

    public static void setQueryHint(View view, CharSequence charSequence) {
        a.a(view, charSequence);
    }

    public static void setIconified(View view, boolean z) {
        a.a(view, z);
    }

    public static boolean isIconified(View view) {
        return a.b(view);
    }

    public static void setSubmitButtonEnabled(View view, boolean z) {
        a.b(view, z);
    }

    public static boolean isSubmitButtonEnabled(View view) {
        return a.c(view);
    }

    public static void setQueryRefinementEnabled(View view, boolean z) {
        a.c(view, z);
    }

    public static boolean isQueryRefinementEnabled(View view) {
        return a.d(view);
    }

    public static void setMaxWidth(View view, int i) {
        a.a(view, i);
    }
}
