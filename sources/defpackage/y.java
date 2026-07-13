package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;

/* JADX INFO: loaded from: classes.dex */
public class y {
    public static Intent a(Activity activity) {
        return activity.getParentActivityIntent();
    }

    public static boolean a(Activity activity, Intent intent) {
        return activity.shouldUpRecreateTask(intent);
    }

    public static void b(Activity activity, Intent intent) {
        activity.navigateUpTo(intent);
    }

    public static String a(ActivityInfo activityInfo) {
        return activityInfo.parentActivityName;
    }
}
