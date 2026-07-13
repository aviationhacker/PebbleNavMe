package android.support.v7.internal.view;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ViewPropertyAnimatorCompatSet {
    private Interpolator c;
    private ViewPropertyAnimatorListener d;
    private boolean e;
    private long b = -1;
    private final ViewPropertyAnimatorListenerAdapter f = new ViewPropertyAnimatorListenerAdapter() { // from class: android.support.v7.internal.view.ViewPropertyAnimatorCompatSet.1
        private boolean b = false;
        private int c = 0;

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (!this.b) {
                this.b = true;
                if (ViewPropertyAnimatorCompatSet.this.d != null) {
                    ViewPropertyAnimatorCompatSet.this.d.onAnimationStart(null);
                }
            }
        }

        void a() {
            this.c = 0;
            this.b = false;
            ViewPropertyAnimatorCompatSet.this.a();
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == ViewPropertyAnimatorCompatSet.this.a.size()) {
                if (ViewPropertyAnimatorCompatSet.this.d != null) {
                    ViewPropertyAnimatorCompatSet.this.d.onAnimationEnd(null);
                }
                a();
            }
        }
    };
    private final ArrayList<ViewPropertyAnimatorCompat> a = new ArrayList<>();

    public ViewPropertyAnimatorCompatSet play(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.e) {
            this.a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet playSequentially(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public void start() {
        if (!this.e) {
            for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.a) {
                if (this.b >= 0) {
                    viewPropertyAnimatorCompat.setDuration(this.b);
                }
                if (this.c != null) {
                    viewPropertyAnimatorCompat.setInterpolator(this.c);
                }
                if (this.d != null) {
                    viewPropertyAnimatorCompat.setListener(this.f);
                }
                viewPropertyAnimatorCompat.start();
            }
            this.e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.e = false;
    }

    public void cancel() {
        if (this.e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.e = false;
        }
    }

    public ViewPropertyAnimatorCompatSet setDuration(long j) {
        if (!this.e) {
            this.b = j;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator interpolator) {
        if (!this.e) {
            this.c = interpolator;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.e) {
            this.d = viewPropertyAnimatorListener;
        }
        return this;
    }
}
