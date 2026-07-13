package android.support.v4.text;

import android.os.Build;
import defpackage.ci;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ICUCompat {
    private static final a a;

    interface a {
        String a(Locale locale);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.text.ICUCompat.a
        public String a(Locale locale) {
            return null;
        }
    }

    static class c implements a {
        c() {
        }

        @Override // android.support.v4.text.ICUCompat.a
        public String a(Locale locale) {
            return ci.a(locale);
        }
    }

    static class d implements a {
        d() {
        }

        @Override // android.support.v4.text.ICUCompat.a
        public String a(Locale locale) {
            return ICUCompatApi23.maximizeAndGetScript(locale);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new d();
        } else if (i >= 14) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static String maximizeAndGetScript(Locale locale) {
        return a.a(locale);
    }
}
