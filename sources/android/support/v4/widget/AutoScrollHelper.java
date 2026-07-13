package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    private static final int r = ViewConfiguration.getTapTimeout();
    private final View c;
    private Runnable d;
    private int g;
    private int h;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private final a a = new a();
    private final Interpolator b = new AccelerateInterpolator();
    private float[] e = {0.0f, 0.0f};
    private float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] i = {0.0f, 0.0f};
    private float[] j = {0.0f, 0.0f};
    private float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public abstract boolean canTargetScrollHorizontally(int i);

    public abstract boolean canTargetScrollVertically(int i);

    public abstract void scrollTargetBy(int i, int i2);

    public AutoScrollHelper(View view) {
        this.c = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        setMaximumVelocity(i, i);
        setMinimumVelocity(i2, i2);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(r);
        setRampUpDuration(HttpStatus.INTERNAL_SERVER_ERROR_500);
        setRampDownDuration(HttpStatus.INTERNAL_SERVER_ERROR_500);
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.p && !z) {
            c();
        }
        this.p = z;
        return this;
    }

    public boolean isEnabled() {
        return this.p;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.q = z;
        return this;
    }

    public boolean isExclusive() {
        return this.q;
    }

    public AutoScrollHelper setMaximumVelocity(float f, float f2) {
        this.k[0] = f / 1000.0f;
        this.k[1] = f2 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setMinimumVelocity(float f, float f2) {
        this.j[0] = f / 1000.0f;
        this.j[1] = f2 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setRelativeVelocity(float f, float f2) {
        this.i[0] = f / 1000.0f;
        this.i[1] = f2 / 1000.0f;
        return this;
    }

    public AutoScrollHelper setEdgeType(int i) {
        this.g = i;
        return this;
    }

    public AutoScrollHelper setRelativeEdges(float f, float f2) {
        this.e[0] = f;
        this.e[1] = f2;
        return this;
    }

    public AutoScrollHelper setMaximumEdges(float f, float f2) {
        this.f[0] = f;
        this.f[1] = f2;
        return this;
    }

    public AutoScrollHelper setActivationDelay(int i) {
        this.h = i;
        return this;
    }

    public AutoScrollHelper setRampUpDuration(int i) {
        this.a.a(i);
        return this;
    }

    public AutoScrollHelper setRampDownDuration(int i) {
        this.a.b(i);
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case 0:
                this.n = true;
                this.l = false;
                this.a.a(a(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
                if (!this.o && a()) {
                    b();
                }
                break;
            case 1:
            case 3:
                c();
                break;
            case 2:
                this.a.a(a(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
                if (!this.o) {
                    b();
                }
                break;
        }
        return this.q && this.o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        a aVar = this.a;
        int iF = aVar.f();
        int iE = aVar.e();
        return (iF != 0 && canTargetScrollVertically(iF)) || (iE != 0 && canTargetScrollHorizontally(iE));
    }

    private void b() {
        if (this.d == null) {
            this.d = new b();
        }
        this.o = true;
        this.m = true;
        if (!this.l && this.h > 0) {
            ViewCompat.postOnAnimationDelayed(this.c, this.d, this.h);
        } else {
            this.d.run();
        }
        this.l = true;
    }

    private void c() {
        if (this.m) {
            this.o = false;
        } else {
            this.a.b();
        }
    }

    private float a(int i, float f, float f2, float f3) {
        float fA = a(this.e[i], f2, this.f[i], f);
        if (fA == 0.0f) {
            return 0.0f;
        }
        float f4 = this.i[i];
        float f5 = this.j[i];
        float f6 = this.k[i];
        float f7 = f4 * f3;
        if (fA > 0.0f) {
            return b(fA * f7, f5, f6);
        }
        return -b((-fA) * f7, f5, f6);
    }

    private float a(float f, float f2, float f3, float f4) {
        float interpolation;
        float fB = b(f * f2, 0.0f, f3);
        float fA = a(f2 - f4, fB) - a(f4, fB);
        if (fA < 0.0f) {
            interpolation = -this.b.getInterpolation(-fA);
        } else {
            if (fA <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.b.getInterpolation(fA);
        }
        return b(interpolation, -1.0f, 1.0f);
    }

    private float a(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        switch (this.g) {
            case 0:
            case 1:
                if (f < f2) {
                    if (f >= 0.0f) {
                        break;
                    } else if (this.o && this.g == 1) {
                        break;
                    }
                }
                break;
            case 2:
                if (f < 0.0f) {
                }
                break;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        return i < i2 ? i2 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float b(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AutoScrollHelper.this.o) {
                if (AutoScrollHelper.this.m) {
                    AutoScrollHelper.this.m = false;
                    AutoScrollHelper.this.a.a();
                }
                a aVar = AutoScrollHelper.this.a;
                if (aVar.c() || !AutoScrollHelper.this.a()) {
                    AutoScrollHelper.this.o = false;
                    return;
                }
                if (AutoScrollHelper.this.n) {
                    AutoScrollHelper.this.n = false;
                    AutoScrollHelper.this.d();
                }
                aVar.d();
                AutoScrollHelper.this.scrollTargetBy(aVar.g(), aVar.h());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.c, this);
            }
        }
    }

    static class a {
        private int a;
        private int b;
        private float c;
        private float d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        public void a(int i) {
            this.a = i;
        }

        public void b(int i) {
            this.b = i;
        }

        public void a() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1L;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void b() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = AutoScrollHelper.b((int) (jCurrentAnimationTimeMillis - this.e), 0, this.b);
            this.j = a(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        private float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            if (this.i < 0 || j < this.i) {
                return AutoScrollHelper.b((j - this.e) / this.a, 0.0f, 1.0f) * 0.5f;
            }
            return (AutoScrollHelper.b((j - this.i) / this.k, 0.0f, 1.0f) * this.j) + (1.0f - this.j);
        }

        private float a(float f) {
            return ((-4.0f) * f * f) + (4.0f * f);
        }

        public void d() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fA = a(a(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f;
            this.f = jCurrentAnimationTimeMillis;
            this.g = (int) (j * fA * this.c);
            this.h = (int) (j * fA * this.d);
        }

        public void a(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public int e() {
            return (int) (this.c / Math.abs(this.c));
        }

        public int f() {
            return (int) (this.d / Math.abs(this.d));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }
}
