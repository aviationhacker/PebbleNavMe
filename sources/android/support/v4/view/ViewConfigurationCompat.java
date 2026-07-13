package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;
import defpackage.dk;
import defpackage.dl;

/* JADX INFO: loaded from: classes.dex */
public class ViewConfigurationCompat {
    static final e a;

    interface e {
        int a(ViewConfiguration viewConfiguration);

        boolean b(ViewConfiguration viewConfiguration);
    }

    static class a implements e {
        a() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.e
        public int a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledTouchSlop();
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.e
        public boolean b(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.a, android.support.v4.view.ViewConfigurationCompat.e
        public int a(ViewConfiguration viewConfiguration) {
            return dk.a(viewConfiguration);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.a, android.support.v4.view.ViewConfigurationCompat.e
        public boolean b(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.c, android.support.v4.view.ViewConfigurationCompat.a, android.support.v4.view.ViewConfigurationCompat.e
        public boolean b(ViewConfiguration viewConfiguration) {
            return dl.a(viewConfiguration);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new d();
            return;
        }
        if (Build.VERSION.SDK_INT >= 11) {
            a = new c();
        } else if (Build.VERSION.SDK_INT >= 8) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return a.a(viewConfiguration);
    }

    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return a.b(viewConfiguration);
    }
}
