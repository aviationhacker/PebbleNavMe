package defpackage;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class an {
    public static File a(Context context) {
        return context.getExternalCacheDir();
    }

    public static File a(Context context, String str) {
        return context.getExternalFilesDir(str);
    }
}
