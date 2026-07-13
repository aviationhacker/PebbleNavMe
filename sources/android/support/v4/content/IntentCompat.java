package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import defpackage.as;
import defpackage.at;

/* JADX INFO: loaded from: classes.dex */
public class IntentCompat {
    public static final String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE";
    public static final String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE";
    public static final String EXTRA_CHANGED_PACKAGE_LIST = "android.intent.extra.changed_package_list";
    public static final String EXTRA_CHANGED_UID_LIST = "android.intent.extra.changed_uid_list";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final int FLAG_ACTIVITY_CLEAR_TASK = 32768;
    public static final int FLAG_ACTIVITY_TASK_ON_HOME = 16384;
    private static final a a;

    interface a {
        Intent a(ComponentName componentName);

        Intent a(String str, String str2);

        Intent b(ComponentName componentName);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.content.IntentCompat.a
        public Intent a(ComponentName componentName) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(componentName);
            intent.addCategory("android.intent.category.LAUNCHER");
            return intent;
        }

        @Override // android.support.v4.content.IntentCompat.a
        public Intent a(String str, String str2) {
            Intent intent = new Intent(str);
            intent.addCategory(str2);
            return intent;
        }

        @Override // android.support.v4.content.IntentCompat.a
        public Intent b(ComponentName componentName) {
            Intent intentA = a(componentName);
            intentA.addFlags(268468224);
            return intentA;
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.content.IntentCompat.b, android.support.v4.content.IntentCompat.a
        public Intent a(ComponentName componentName) {
            return as.a(componentName);
        }

        @Override // android.support.v4.content.IntentCompat.b, android.support.v4.content.IntentCompat.a
        public Intent b(ComponentName componentName) {
            return as.b(componentName);
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.content.IntentCompat.b, android.support.v4.content.IntentCompat.a
        public Intent a(String str, String str2) {
            return at.a(str, str2);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    private IntentCompat() {
    }

    public static Intent makeMainActivity(ComponentName componentName) {
        return a.a(componentName);
    }

    public static Intent makeMainSelectorActivity(String str, String str2) {
        return a.a(str, str2);
    }

    public static Intent makeRestartActivityTask(ComponentName componentName) {
        return a.b(componentName);
    }
}
