package android.support.v4.text;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TextUtilsCompat {
    public static final Locale ROOT;
    private static final a a;
    private static String b;
    private static String c;

    static class a {
        private a() {
        }

        @NonNull
        public String a(@NonNull String str) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                switch (cCharAt) {
                    case '\"':
                        sb.append("&quot;");
                        break;
                    case '&':
                        sb.append("&amp;");
                        break;
                    case '\'':
                        sb.append("&#39;");
                        break;
                    case '<':
                        sb.append("&lt;");
                        break;
                    case '>':
                        sb.append("&gt;");
                        break;
                    default:
                        sb.append(cCharAt);
                        break;
                }
            }
            return sb.toString();
        }

        public int a(@Nullable Locale locale) {
            if (locale != null && !locale.equals(TextUtilsCompat.ROOT)) {
                String strMaximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
                if (strMaximizeAndGetScript == null) {
                    return b(locale);
                }
                if (strMaximizeAndGetScript.equalsIgnoreCase(TextUtilsCompat.b) || strMaximizeAndGetScript.equalsIgnoreCase(TextUtilsCompat.c)) {
                    return 1;
                }
            }
            return 0;
        }

        private static int b(@NonNull Locale locale) {
            switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                case 1:
                case 2:
                    return 1;
                default:
                    return 0;
            }
        }
    }

    static class b extends a {
        private b() {
            super();
        }

        @Override // android.support.v4.text.TextUtilsCompat.a
        @NonNull
        public String a(@NonNull String str) {
            return TextUtilsCompatJellybeanMr1.htmlEncode(str);
        }

        @Override // android.support.v4.text.TextUtilsCompat.a
        public int a(@Nullable Locale locale) {
            return TextUtilsCompatJellybeanMr1.getLayoutDirectionFromLocale(locale);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            a = new b();
        } else {
            a = new a();
        }
        ROOT = new Locale("", "");
        b = "Arab";
        c = "Hebr";
    }

    @NonNull
    public static String htmlEncode(@NonNull String str) {
        return a.a(str);
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        return a.a(locale);
    }
}
