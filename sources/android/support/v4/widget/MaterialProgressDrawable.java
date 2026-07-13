package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class MaterialProgressDrawable extends Drawable implements Animatable {
    private static final Interpolator b = new LinearInterpolator();
    private static final Interpolator c = new FastOutSlowInInterpolator();
    boolean a;
    private float g;
    private Resources h;
    private View i;
    private Animation j;
    private float k;
    private double l;
    private double m;
    private final int[] d = {ViewCompat.MEASURED_STATE_MASK};
    private final ArrayList<Animation> e = new ArrayList<>();
    private final Drawable.Callback n = new Drawable.Callback() { // from class: android.support.v4.widget.MaterialProgressDrawable.3
        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            MaterialProgressDrawable.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            MaterialProgressDrawable.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            MaterialProgressDrawable.this.unscheduleSelf(runnable);
        }
    };
    private final a f = new a(this.n);

    @Retention(RetentionPolicy.CLASS)
    public @interface ProgressDrawableSize {
    }

    public MaterialProgressDrawable(Context context, View view) {
        this.i = view;
        this.h = context.getResources();
        this.f.a(this.d);
        a(1);
        b();
    }

    private void a(double d, double d2, double d3, double d4, float f, float f2) {
        a aVar = this.f;
        float f3 = this.h.getDisplayMetrics().density;
        this.l = ((double) f3) * d;
        this.m = ((double) f3) * d2;
        aVar.a(((float) d4) * f3);
        aVar.a(((double) f3) * d3);
        aVar.c(0);
        aVar.a(f * f3, f3 * f2);
        aVar.a((int) this.l, (int) this.m);
    }

    public void a(@ProgressDrawableSize int i) {
        if (i == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public void a(boolean z) {
        this.f.a(z);
    }

    public void a(float f) {
        this.f.e(f);
    }

    public void a(float f, float f2) {
        this.f.b(f);
        this.f.c(f2);
    }

    public void b(float f) {
        this.f.d(f);
    }

    public void b(int i) {
        this.f.a(i);
    }

    public void a(int... iArr) {
        this.f.a(iArr);
        this.f.c(0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int iSave = canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f.a(canvas, bounds);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f.d(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f.c();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f.a(colorFilter);
    }

    void c(float f) {
        this.g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animation animation = arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.j.reset();
        this.f.l();
        if (this.f.i() != this.f.e()) {
            this.a = true;
            this.j.setDuration(666L);
            this.i.startAnimation(this.j);
        } else {
            this.f.c(0);
            this.f.m();
            this.j.setDuration(1332L);
            this.i.startAnimation(this.j);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.i.clearAnimation();
        c(0.0f);
        this.f.a(false);
        this.f.c(0);
        this.f.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float a(a aVar) {
        return (float) Math.toRadians(((double) aVar.d()) / (6.283185307179586d * aVar.j()));
    }

    private int a(float f, int i, int i2) {
        int iIntValue = Integer.valueOf(i).intValue();
        int i3 = (iIntValue >> 24) & 255;
        int i4 = (iIntValue >> 16) & 255;
        int i5 = (iIntValue >> 8) & 255;
        int i6 = iIntValue & 255;
        int iIntValue2 = Integer.valueOf(i2).intValue();
        return (i6 + ((int) (((iIntValue2 & 255) - i6) * f))) | ((i3 + ((int) ((((iIntValue2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((iIntValue2 >> 16) & 255) - i4) * f))) << 16) | ((((int) ((((iIntValue2 >> 8) & 255) - i5) * f)) + i5) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, a aVar) {
        if (f > 0.75f) {
            aVar.b(a((f - 0.75f) / 0.25f, aVar.h(), aVar.a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(float f, a aVar) {
        a(f, aVar);
        float fFloor = (float) (Math.floor(aVar.k() / 0.8f) + 1.0d);
        aVar.b((((aVar.g() - a(aVar)) - aVar.f()) * f) + aVar.f());
        aVar.c(aVar.g());
        aVar.d(((fFloor - aVar.k()) * f) + aVar.k());
    }

    private void b() {
        final a aVar = this.f;
        Animation animation = new Animation() { // from class: android.support.v4.widget.MaterialProgressDrawable.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                if (MaterialProgressDrawable.this.a) {
                    MaterialProgressDrawable.this.b(f, aVar);
                    return;
                }
                float fA = MaterialProgressDrawable.this.a(aVar);
                float fG = aVar.g();
                float f2 = aVar.f();
                float fK = aVar.k();
                MaterialProgressDrawable.this.a(f, aVar);
                if (f <= 0.5f) {
                    aVar.b(f2 + (MaterialProgressDrawable.c.getInterpolation(f / 0.5f) * (0.8f - fA)));
                }
                if (f > 0.5f) {
                    aVar.c(((0.8f - fA) * MaterialProgressDrawable.c.getInterpolation((f - 0.5f) / 0.5f)) + fG);
                }
                aVar.d((0.25f * f) + fK);
                MaterialProgressDrawable.this.c((216.0f * f) + (1080.0f * (MaterialProgressDrawable.this.k / 5.0f)));
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(b);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.v4.widget.MaterialProgressDrawable.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                MaterialProgressDrawable.this.k = 0.0f;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
                aVar.l();
                aVar.b();
                aVar.b(aVar.i());
                if (MaterialProgressDrawable.this.a) {
                    MaterialProgressDrawable.this.a = false;
                    animation2.setDuration(1332L);
                    aVar.a(false);
                } else {
                    MaterialProgressDrawable.this.k = (MaterialProgressDrawable.this.k + 1.0f) % 5.0f;
                }
            }
        });
        this.j = animation;
    }

    static class a {
        private final Drawable.Callback d;
        private int[] j;
        private int k;
        private float l;
        private float m;
        private float n;
        private boolean o;
        private Path p;
        private float q;
        private double r;
        private int s;
        private int t;
        private int u;
        private int w;
        private int x;
        private final RectF a = new RectF();
        private final Paint b = new Paint();
        private final Paint c = new Paint();
        private float e = 0.0f;
        private float f = 0.0f;
        private float g = 0.0f;
        private float h = 5.0f;
        private float i = 2.5f;
        private final Paint v = new Paint(1);

        public a(Drawable.Callback callback) {
            this.d = callback;
            this.b.setStrokeCap(Paint.Cap.SQUARE);
            this.b.setAntiAlias(true);
            this.b.setStyle(Paint.Style.STROKE);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setAntiAlias(true);
        }

        public void a(int i) {
            this.w = i;
        }

        public void a(float f, float f2) {
            this.s = (int) f;
            this.t = (int) f2;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.a;
            rectF.set(rect);
            rectF.inset(this.i, this.i);
            float f = (this.e + this.g) * 360.0f;
            float f2 = ((this.f + this.g) * 360.0f) - f;
            this.b.setColor(this.x);
            canvas.drawArc(rectF, f, f2, false, this.b);
            a(canvas, f, f2, rect);
            if (this.u < 255) {
                this.v.setColor(this.w);
                this.v.setAlpha(255 - this.u);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.v);
            }
        }

        private void a(Canvas canvas, float f, float f2, Rect rect) {
            if (this.o) {
                if (this.p == null) {
                    this.p = new Path();
                    this.p.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.p.reset();
                }
                float f3 = (((int) this.i) / 2) * this.q;
                float fCos = (float) ((this.r * Math.cos(0.0d)) + ((double) rect.exactCenterX()));
                float fSin = (float) ((this.r * Math.sin(0.0d)) + ((double) rect.exactCenterY()));
                this.p.moveTo(0.0f, 0.0f);
                this.p.lineTo(this.s * this.q, 0.0f);
                this.p.lineTo((this.s * this.q) / 2.0f, this.t * this.q);
                this.p.offset(fCos - f3, fSin);
                this.p.close();
                this.c.setColor(this.x);
                canvas.rotate((f + f2) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.p, this.c);
            }
        }

        public void a(@NonNull int[] iArr) {
            this.j = iArr;
            c(0);
        }

        public void b(int i) {
            this.x = i;
        }

        public void c(int i) {
            this.k = i;
            this.x = this.j[this.k];
        }

        public int a() {
            return this.j[n()];
        }

        private int n() {
            return (this.k + 1) % this.j.length;
        }

        public void b() {
            c(n());
        }

        public void a(ColorFilter colorFilter) {
            this.b.setColorFilter(colorFilter);
            o();
        }

        public void d(int i) {
            this.u = i;
        }

        public int c() {
            return this.u;
        }

        public void a(float f) {
            this.h = f;
            this.b.setStrokeWidth(f);
            o();
        }

        public float d() {
            return this.h;
        }

        public void b(float f) {
            this.e = f;
            o();
        }

        public float e() {
            return this.e;
        }

        public float f() {
            return this.l;
        }

        public float g() {
            return this.m;
        }

        public int h() {
            return this.j[this.k];
        }

        public void c(float f) {
            this.f = f;
            o();
        }

        public float i() {
            return this.f;
        }

        public void d(float f) {
            this.g = f;
            o();
        }

        public void a(int i, int i2) {
            float fCeil;
            float fMin = Math.min(i, i2);
            if (this.r <= 0.0d || fMin < 0.0f) {
                fCeil = (float) Math.ceil(this.h / 2.0f);
            } else {
                fCeil = (float) (((double) (fMin / 2.0f)) - this.r);
            }
            this.i = fCeil;
        }

        public void a(double d) {
            this.r = d;
        }

        public double j() {
            return this.r;
        }

        public void a(boolean z) {
            if (this.o != z) {
                this.o = z;
                o();
            }
        }

        public void e(float f) {
            if (f != this.q) {
                this.q = f;
                o();
            }
        }

        public float k() {
            return this.n;
        }

        public void l() {
            this.l = this.e;
            this.m = this.f;
            this.n = this.g;
        }

        public void m() {
            this.l = 0.0f;
            this.m = 0.0f;
            this.n = 0.0f;
            b(0.0f);
            c(0.0f);
            d(0.0f);
        }

        private void o() {
            this.d.invalidateDrawable(null);
        }
    }
}
