package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class n {
    public static void a(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void a(Activity activity) {
        activity.finishAffinity();
    }
}
