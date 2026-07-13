package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.AnimatorUpdateListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class i implements g {
    private TimeInterpolator a;

    @Override // defpackage.g
    public ValueAnimatorCompat a() {
        return new b(ValueAnimator.ofFloat(0.0f, 1.0f));
    }

    static class b implements ValueAnimatorCompat {
        final Animator a;

        public b(Animator animator) {
            this.a = animator;
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void setTarget(View view) {
            this.a.setTarget(view);
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.a.addListener(new a(animatorListenerCompat, this));
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void setDuration(long j) {
            this.a.setDuration(j);
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void start() {
            this.a.start();
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void cancel() {
            this.a.cancel();
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void addUpdateListener(final AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            if (this.a instanceof ValueAnimator) {
                ((ValueAnimator) this.a).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: i.b.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        animatorUpdateListenerCompat.onAnimationUpdate(b.this);
                    }
                });
            }
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public float getAnimatedFraction() {
            return ((ValueAnimator) this.a).getAnimatedFraction();
        }
    }

    static class a implements Animator.AnimatorListener {
        final AnimatorListenerCompat a;
        final ValueAnimatorCompat b;

        public a(AnimatorListenerCompat animatorListenerCompat, ValueAnimatorCompat valueAnimatorCompat) {
            this.a = animatorListenerCompat;
            this.b = valueAnimatorCompat;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.a.onAnimationStart(this.b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.onAnimationEnd(this.b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a.onAnimationCancel(this.b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            this.a.onAnimationRepeat(this.b);
        }
    }

    @Override // defpackage.g
    public void a(View view) {
        if (this.a == null) {
            this.a = new ValueAnimator().getInterpolator();
        }
        view.animate().setInterpolator(this.a);
    }
}
