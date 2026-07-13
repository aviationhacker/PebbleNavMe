package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    private static final float b = (float) Math.toRadians(45.0d);
    private float c;
    private float d;
    private float e;
    private float f;
    private boolean g;
    private final int i;
    private float k;
    private float l;
    private final Paint a = new Paint();
    private final Path h = new Path();
    private boolean j = false;
    private int m = 2;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        this.a.setStyle(Paint.Style.STROKE);
        this.a.setStrokeJoin(Paint.Join.MITER);
        this.a.setStrokeCap(Paint.Cap.BUTT);
        this.a.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.d = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.c = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.e = typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setArrowHeadLength(float f) {
        if (this.c != f) {
            this.c = f;
            invalidateSelf();
        }
    }

    public float getArrowHeadLength() {
        return this.c;
    }

    public void setArrowShaftLength(float f) {
        if (this.e != f) {
            this.e = f;
            invalidateSelf();
        }
    }

    public float getArrowShaftLength() {
        return this.e;
    }

    public float getBarLength() {
        return this.d;
    }

    public void setBarLength(float f) {
        if (this.d != f) {
            this.d = f;
            invalidateSelf();
        }
    }

    public void setColor(@ColorInt int i) {
        if (i != this.a.getColor()) {
            this.a.setColor(i);
            invalidateSelf();
        }
    }

    @ColorInt
    public int getColor() {
        return this.a.getColor();
    }

    public void setBarThickness(float f) {
        if (this.a.getStrokeWidth() != f) {
            this.a.setStrokeWidth(f);
            this.l = (float) (((double) (f / 2.0f)) * Math.cos(b));
            invalidateSelf();
        }
    }

    public float getBarThickness() {
        return this.a.getStrokeWidth();
    }

    public float getGapSize() {
        return this.f;
    }

    public void setGapSize(float f) {
        if (f != this.f) {
            this.f = f;
            invalidateSelf();
        }
    }

    public void setDirection(int i) {
        if (i != this.m) {
            this.m = i;
            invalidateSelf();
        }
    }

    public boolean isSpinEnabled() {
        return this.g;
    }

    public void setSpinEnabled(boolean z) {
        if (this.g != z) {
            this.g = z;
            invalidateSelf();
        }
    }

    public int getDirection() {
        return this.m;
    }

    public void setVerticalMirror(boolean z) {
        if (this.j != z) {
            this.j = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Rect bounds = getBounds();
        switch (this.m) {
            case 0:
                z = false;
                break;
            case 1:
                z = true;
                break;
            case 2:
            default:
                z = DrawableCompat.getLayoutDirection(this) == 1;
                break;
            case 3:
                z = DrawableCompat.getLayoutDirection(this) == 0;
                break;
        }
        float fA = a(this.d, (float) Math.sqrt(this.c * this.c * 2.0f), this.k);
        float fA2 = a(this.d, this.e, this.k);
        float fRound = Math.round(a(0.0f, this.l, this.k));
        float fA3 = a(0.0f, b, this.k);
        float fA4 = a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.k);
        float fRound2 = Math.round(((double) fA) * Math.cos(fA3));
        float fRound3 = Math.round(((double) fA) * Math.sin(fA3));
        this.h.rewind();
        float fA5 = a(this.f + this.a.getStrokeWidth(), -this.l, this.k);
        float f = (-fA2) / 2.0f;
        this.h.moveTo(f + fRound, 0.0f);
        this.h.rLineTo(fA2 - (fRound * 2.0f), 0.0f);
        this.h.moveTo(f, fA5);
        this.h.rLineTo(fRound2, fRound3);
        this.h.moveTo(f, -fA5);
        this.h.rLineTo(fRound2, -fRound3);
        this.h.close();
        canvas.save();
        canvas.translate(bounds.centerX(), (float) (((double) ((((int) ((bounds.height() - (3.0f * r2)) - (this.f * 2.0f))) / 4) * 2)) + (((double) this.a.getStrokeWidth()) * 1.5d) + ((double) this.f)));
        if (this.g) {
            canvas.rotate((z ^ this.j ? -1 : 1) * fA4);
        } else if (z) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.h, this.a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.a.getAlpha()) {
            this.a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.k;
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.k != f) {
            this.k = f;
            invalidateSelf();
        }
    }

    private static float a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }
}
