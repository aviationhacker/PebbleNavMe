package defpackage;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class ar {
    public static void a(@NonNull SharedPreferences.Editor editor) {
        try {
            editor.apply();
        } catch (AbstractMethodError e) {
            editor.commit();
        }
    }
}
