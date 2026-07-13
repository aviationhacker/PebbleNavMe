package defpackage;

import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private final ActivityOptions a;

    public static q a(Context context, int i, int i2) {
        return new q(ActivityOptions.makeCustomAnimation(context, i, i2));
    }

    public static q a(View view, int i, int i2, int i3, int i4) {
        return new q(ActivityOptions.makeScaleUpAnimation(view, i, i2, i3, i4));
    }

    public static q a(View view, Bitmap bitmap, int i, int i2) {
        return new q(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
    }

    private q(ActivityOptions activityOptions) {
        this.a = activityOptions;
    }

    public Bundle a() {
        return this.a.toBundle();
    }

    public void a(q qVar) {
        this.a.update(qVar.a);
    }
}
