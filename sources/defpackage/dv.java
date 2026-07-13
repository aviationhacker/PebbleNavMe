package defpackage;

import android.animation.ValueAnimator;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class dv {
    public static void a(final View view, final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        view.animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dv.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
            }
        });
    }
}
