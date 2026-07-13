package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class ax {
    public static boolean a(Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    public static void a(Bitmap bitmap, boolean z) {
        bitmap.setHasMipMap(z);
    }
}
