package defpackage;

import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.AnimatorUpdateListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h implements g {
    @Override // defpackage.g
    public ValueAnimatorCompat a() {
        return new a();
    }

    static class a implements ValueAnimatorCompat {
        View c;
        private long d;
        List<AnimatorListenerCompat> a = new ArrayList();
        List<AnimatorUpdateListenerCompat> b = new ArrayList();
        private long e = 200;
        private float f = 0.0f;
        private boolean g = false;
        private boolean h = false;
        private Runnable i = new Runnable() { // from class: h.a.1
            @Override // java.lang.Runnable
            public void run() {
                float fB = ((a.this.b() - a.this.d) * 1.0f) / a.this.e;
                if (fB > 1.0f || a.this.c.getParent() == null) {
                    fB = 1.0f;
                }
                a.this.f = fB;
                a.this.a();
                if (a.this.f >= 1.0f) {
                    a.this.d();
                } else {
                    a.this.c.postDelayed(a.this.i, 16L);
                }
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                this.b.get(size).onAnimationUpdate(this);
            }
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void setTarget(View view) {
            this.c = view;
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.a.add(animatorListenerCompat);
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void setDuration(long j) {
            if (!this.g) {
                this.e = j;
            }
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void start() {
            if (!this.g) {
                this.g = true;
                c();
                this.f = 0.0f;
                this.d = b();
                this.c.postDelayed(this.i, 16L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b() {
            return this.c.getDrawingTime();
        }

        private void c() {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                this.a.get(size).onAnimationStart(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                this.a.get(size).onAnimationEnd(this);
            }
        }

        private void e() {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                this.a.get(size).onAnimationCancel(this);
            }
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void cancel() {
            if (!this.h) {
                this.h = true;
                if (this.g) {
                    e();
                }
                d();
            }
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public void addUpdateListener(AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            this.b.add(animatorUpdateListenerCompat);
        }

        @Override // android.support.v4.animation.ValueAnimatorCompat
        public float getAnimatedFraction() {
            return this.f;
        }
    }

    @Override // defpackage.g
    public void a(View view) {
    }
}
