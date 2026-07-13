package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_IGNORED = 1;
    private static final b a;

    static class b {
        private b() {
        }

        public String a(String str) {
            return null;
        }

        public int a(Context context, String str, int i, String str2) {
            return 1;
        }

        public int a(Context context, String str, String str2) {
            return 1;
        }
    }

    static class a extends b {
        private a() {
            super();
        }

        @Override // android.support.v4.app.AppOpsManagerCompat.b
        public String a(String str) {
            return AppOpsManagerCompat23.permissionToOp(str);
        }

        @Override // android.support.v4.app.AppOpsManagerCompat.b
        public int a(Context context, String str, int i, String str2) {
            return AppOpsManagerCompat23.noteOp(context, str, i, str2);
        }

        @Override // android.support.v4.app.AppOpsManagerCompat.b
        public int a(Context context, String str, String str2) {
            return AppOpsManagerCompat23.noteProxyOp(context, str, str2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            a = new a();
        } else {
            a = new b();
        }
    }

    public static String permissionToOp(@NonNull String str) {
        return a.a(str);
    }

    public static int noteOp(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return a.a(context, str, i, str2);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return a.a(context, str, str2);
    }
}
