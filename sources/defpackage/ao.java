package defpackage;

import android.content.Context;
import android.content.Intent;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ao {
    public static void a(Context context, Intent[] intentArr) {
        context.startActivities(intentArr);
    }

    public static File a(Context context) {
        return context.getObbDir();
    }
}
