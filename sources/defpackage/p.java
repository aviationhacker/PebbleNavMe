package defpackage;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class p {
    private final ActivityOptions a;

    public static p a(Activity activity, View view, String str) {
        return new p(ActivityOptions.makeSceneTransitionAnimation(activity, view, str));
    }

    public static p a(Activity activity, View[] viewArr, String[] strArr) {
        Pair[] pairArr = null;
        if (viewArr != null) {
            Pair[] pairArr2 = new Pair[viewArr.length];
            for (int i = 0; i < pairArr2.length; i++) {
                pairArr2[i] = Pair.create(viewArr[i], strArr[i]);
            }
            pairArr = pairArr2;
        }
        return new p(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
    }

    private p(ActivityOptions activityOptions) {
        this.a = activityOptions;
    }

    public Bundle a() {
        return this.a.toBundle();
    }

    public void a(p pVar) {
        this.a.update(pVar.a);
    }
}
