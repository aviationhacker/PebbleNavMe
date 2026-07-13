package android.support.v7.widget;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.text.AllCapsTransformationMethod;
import android.support.v7.internal.widget.DrawableUtils;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ViewUtils;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import com.google.android.gms.auth.api.credentials.CredentialsApi;

/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final int[] F = {R.attr.state_checked};
    private Layout A;
    private TransformationMethod B;
    private a C;
    private final Rect D;
    private final TintManager E;
    private Drawable a;
    private Drawable b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private CharSequence g;
    private CharSequence h;
    private boolean i;
    private int j;
    private int k;
    private float l;
    private float m;
    private VelocityTracker n;
    private int o;
    private float p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private TextPaint x;
    private ColorStateList y;
    private Layout z;

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = VelocityTracker.obtain();
        this.D = new Rect();
        this.x = new TextPaint(1);
        Resources resources = getResources();
        this.x.density = resources.getDisplayMetrics().density;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, android.support.v7.appcompat.R.styleable.SwitchCompat, i, 0);
        this.a = tintTypedArrayObtainStyledAttributes.getDrawable(android.support.v7.appcompat.R.styleable.SwitchCompat_android_thumb);
        if (this.a != null) {
            this.a.setCallback(this);
        }
        this.b = tintTypedArrayObtainStyledAttributes.getDrawable(android.support.v7.appcompat.R.styleable.SwitchCompat_track);
        if (this.b != null) {
            this.b.setCallback(this);
        }
        this.g = tintTypedArrayObtainStyledAttributes.getText(android.support.v7.appcompat.R.styleable.SwitchCompat_android_textOn);
        this.h = tintTypedArrayObtainStyledAttributes.getText(android.support.v7.appcompat.R.styleable.SwitchCompat_android_textOff);
        this.i = tintTypedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.SwitchCompat_showText, true);
        this.c = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.d = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        this.e = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        this.f = tintTypedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(android.support.v7.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        this.E = tintTypedArrayObtainStyledAttributes.getTintManager();
        tintTypedArrayObtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.k = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTextAppearance(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, android.support.v7.appcompat.R.styleable.TextAppearance);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(android.support.v7.appcompat.R.styleable.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.y = colorStateList;
        } else {
            this.y = getTextColors();
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0 && dimensionPixelSize != this.x.getTextSize()) {
            this.x.setTextSize(dimensionPixelSize);
            requestLayout();
        }
        a(typedArrayObtainStyledAttributes.getInt(android.support.v7.appcompat.R.styleable.TextAppearance_android_typeface, -1), typedArrayObtainStyledAttributes.getInt(android.support.v7.appcompat.R.styleable.TextAppearance_android_textStyle, -1));
        if (typedArrayObtainStyledAttributes.getBoolean(android.support.v7.appcompat.R.styleable.TextAppearance_textAllCaps, false)) {
            this.B = new AllCapsTransformationMethod(getContext());
        } else {
            this.B = null;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a(int i, int i2) {
        Typeface typeface = null;
        switch (i) {
            case 1:
                typeface = Typeface.SANS_SERIF;
                break;
            case 2:
                typeface = Typeface.SERIF;
                break;
            case 3:
                typeface = Typeface.MONOSPACE;
                break;
        }
        setSwitchTypeface(typeface, i2);
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        Typeface typefaceCreate;
        if (i > 0) {
            if (typeface == null) {
                typefaceCreate = Typeface.defaultFromStyle(i);
            } else {
                typefaceCreate = Typeface.create(typeface, i);
            }
            setSwitchTypeface(typefaceCreate);
            int style = ((typefaceCreate != null ? typefaceCreate.getStyle() : 0) ^ (-1)) & i;
            this.x.setFakeBoldText((style & 1) != 0);
            this.x.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.x.setFakeBoldText(false);
        this.x.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setSwitchTypeface(Typeface typeface) {
        if (this.x.getTypeface() != typeface) {
            this.x.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchPadding(int i) {
        this.e = i;
        requestLayout();
    }

    public int getSwitchPadding() {
        return this.e;
    }

    public void setSwitchMinWidth(int i) {
        this.d = i;
        requestLayout();
    }

    public int getSwitchMinWidth() {
        return this.d;
    }

    public void setThumbTextPadding(int i) {
        this.c = i;
        requestLayout();
    }

    public int getThumbTextPadding() {
        return this.c;
    }

    public void setTrackDrawable(Drawable drawable) {
        this.b = drawable;
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(this.E.getDrawable(i));
    }

    public Drawable getTrackDrawable() {
        return this.b;
    }

    public void setThumbDrawable(Drawable drawable) {
        this.a = drawable;
        requestLayout();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(this.E.getDrawable(i));
    }

    public Drawable getThumbDrawable() {
        return this.a;
    }

    public void setSplitTrack(boolean z) {
        this.f = z;
        invalidate();
    }

    public boolean getSplitTrack() {
        return this.f;
    }

    public CharSequence getTextOn() {
        return this.g;
    }

    public void setTextOn(CharSequence charSequence) {
        this.g = charSequence;
        requestLayout();
    }

    public CharSequence getTextOff() {
        return this.h;
    }

    public void setTextOff(CharSequence charSequence) {
        this.h = charSequence;
        requestLayout();
    }

    public void setShowText(boolean z) {
        if (this.i != z) {
            this.i = z;
            requestLayout();
        }
    }

    public boolean getShowText() {
        return this.i;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int intrinsicHeight;
        int intrinsicWidth;
        int intrinsicHeight2 = 0;
        if (this.i) {
            if (this.z == null) {
                this.z = a(this.g);
            }
            if (this.A == null) {
                this.A = a(this.h);
            }
        }
        Rect rect = this.D;
        if (this.a != null) {
            this.a.getPadding(rect);
            intrinsicWidth = (this.a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.a.getIntrinsicHeight();
        } else {
            intrinsicHeight = 0;
            intrinsicWidth = 0;
        }
        this.s = Math.max(this.i ? Math.max(this.z.getWidth(), this.A.getWidth()) + (this.c * 2) : 0, intrinsicWidth);
        if (this.b != null) {
            this.b.getPadding(rect);
            intrinsicHeight2 = this.b.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        if (this.a != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.a);
            iMax = Math.max(iMax, opticalBounds.left);
            iMax2 = Math.max(iMax2, opticalBounds.right);
        }
        int iMax3 = Math.max(this.d, iMax2 + iMax + (this.s * 2));
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.q = iMax3;
        this.r = iMax4;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(ViewCompat.getMeasuredWidthAndState(this), iMax4);
        }
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.g : this.h;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    private Layout a(CharSequence charSequence) {
        CharSequence transformation = this.B != null ? this.B.getTransformation(charSequence, this) : charSequence;
        return new StaticLayout(transformation, this.x, transformation != null ? (int) Math.ceil(Layout.getDesiredWidth(transformation, this.x)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private boolean a(float f, float f2) {
        if (this.a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.a.getPadding(this.D);
        int i = this.u - this.k;
        int i2 = (thumbOffset + this.t) - this.k;
        return f > ((float) i2) && f < ((float) ((((this.s + i2) + this.D.left) + this.D.right) + this.k)) && f2 > ((float) i) && f2 < ((float) (this.w + this.k));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        this.n.addMovement(motionEvent);
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (isEnabled() && a(x, y)) {
                    this.j = 1;
                    this.l = x;
                    this.m = y;
                }
                break;
            case 1:
            case 3:
                if (this.j == 2) {
                    b(motionEvent);
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.j = 0;
                this.n.clear();
                break;
                break;
            case 2:
                switch (this.j) {
                    case 1:
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (Math.abs(x2 - this.l) > this.k || Math.abs(y2 - this.m) > this.k) {
                            this.j = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.l = x2;
                            this.m = y2;
                            return true;
                        }
                        break;
                    case 2:
                        float x3 = motionEvent.getX();
                        int thumbScrollRange = getThumbScrollRange();
                        float f2 = x3 - this.l;
                        if (thumbScrollRange != 0) {
                            f = f2 / thumbScrollRange;
                        } else {
                            f = f2 > 0.0f ? 1.0f : -1.0f;
                        }
                        if (ViewUtils.isLayoutRtl(this)) {
                            f = -f;
                        }
                        float fA = a(f + this.p, 0.0f, 1.0f);
                        if (fA != this.p) {
                            this.l = x3;
                            setThumbPosition(fA);
                        }
                        return true;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private void b(MotionEvent motionEvent) {
        boolean targetCheckedState = true;
        this.j = 0;
        boolean z = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z) {
            this.n.computeCurrentVelocity(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT);
            float xVelocity = this.n.getXVelocity();
            if (Math.abs(xVelocity) > this.o) {
                if (ViewUtils.isLayoutRtl(this)) {
                    if (xVelocity >= 0.0f) {
                        targetCheckedState = false;
                    }
                } else if (xVelocity <= 0.0f) {
                    targetCheckedState = false;
                }
            } else {
                targetCheckedState = getTargetCheckedState();
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
            setChecked(targetCheckedState);
        }
        a(motionEvent);
    }

    private void a(boolean z) {
        this.C = new a(this.p, z ? 1.0f : 0.0f);
        this.C.setDuration(250L);
        startAnimation(this.C);
    }

    private void a() {
        if (this.C != null) {
            clearAnimation();
            this.C = null;
        }
    }

    private boolean getTargetCheckedState() {
        return this.p > 0.5f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setThumbPosition(float f) {
        this.p = f;
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
            a(zIsChecked);
        } else {
            a();
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iMax;
        int i5;
        int i6;
        int height;
        int paddingTop;
        int iMax2 = 0;
        super.onLayout(z, i, i2, i3, i4);
        if (this.a != null) {
            Rect rect = this.D;
            if (this.b != null) {
                this.b.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.a);
            iMax = Math.max(0, opticalBounds.left - rect.left);
            iMax2 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            iMax = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            int paddingLeft = getPaddingLeft() + iMax;
            i6 = ((this.q + paddingLeft) - iMax) - iMax2;
            i5 = paddingLeft;
        } else {
            int width = (getWidth() - getPaddingRight()) - iMax2;
            i5 = iMax2 + iMax + (width - this.q);
            i6 = width;
        }
        switch (getGravity() & 112) {
            case 16:
                paddingTop = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (this.r / 2);
                height = this.r + paddingTop;
                break;
            case 80:
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.r;
                break;
            default:
                paddingTop = getPaddingTop();
                height = this.r + paddingTop;
                break;
        }
        this.t = i5;
        this.u = paddingTop;
        this.w = height;
        this.v = i6;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect opticalBounds;
        int i;
        int i2;
        int i3;
        Rect rect = this.D;
        int i4 = this.t;
        int i5 = this.u;
        int i6 = this.v;
        int i7 = this.w;
        int thumbOffset = i4 + getThumbOffset();
        if (this.a != null) {
            opticalBounds = DrawableUtils.getOpticalBounds(this.a);
        } else {
            opticalBounds = DrawableUtils.INSETS_NONE;
        }
        if (this.b != null) {
            this.b.getPadding(rect);
            int i8 = rect.left + thumbOffset;
            if (opticalBounds == null || opticalBounds.isEmpty()) {
                i2 = i7;
                i3 = i5;
            } else {
                if (opticalBounds.left > rect.left) {
                    i4 += opticalBounds.left - rect.left;
                }
                i3 = opticalBounds.top > rect.top ? (opticalBounds.top - rect.top) + i5 : i5;
                if (opticalBounds.right > rect.right) {
                    i6 -= opticalBounds.right - rect.right;
                }
                i2 = opticalBounds.bottom > rect.bottom ? i7 - (opticalBounds.bottom - rect.bottom) : i7;
            }
            this.b.setBounds(i4, i3, i6, i2);
            i = i8;
        } else {
            i = thumbOffset;
        }
        if (this.a != null) {
            this.a.getPadding(rect);
            int i9 = i - rect.left;
            int i10 = i + this.s + rect.right;
            this.a.setBounds(i9, i5, i10, i7);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.setHotspotBounds(background, i9, i5, i10, i7);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.D;
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.u;
        int i2 = this.w;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.a;
        if (drawable != null) {
            if (this.f && drawable2 != null) {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            } else {
                drawable.draw(canvas);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.z : this.A;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            if (this.y != null) {
                this.x.setColor(this.y.getColorForState(drawableState, 0));
            }
            this.x.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.right + bounds.left;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.q;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingLeft + this.e;
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.q;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingRight + this.e;
        }
        return compoundPaddingRight;
    }

    private int getThumbOffset() {
        float f;
        if (ViewUtils.isLayoutRtl(this)) {
            f = 1.0f - this.p;
        } else {
            f = this.p;
        }
        return (int) ((f * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect opticalBounds;
        if (this.b != null) {
            Rect rect = this.D;
            this.b.getPadding(rect);
            if (this.a != null) {
                opticalBounds = DrawableUtils.getOpticalBounds(this.a);
            } else {
                opticalBounds = DrawableUtils.INSETS_NONE;
            }
            return ((((this.q - this.s) - rect.left) - rect.right) - opticalBounds.left) - opticalBounds.right;
        }
        return 0;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, F);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        if (this.a != null) {
            this.a.setState(drawableState);
        }
        if (this.b != null) {
            this.b.setState(drawableState);
        }
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        if (this.a != null) {
            DrawableCompat.setHotspot(this.a, f, f2);
        }
        if (this.b != null) {
            DrawableCompat.setHotspot(this.b, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.a || drawable == this.b;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.a != null) {
                this.a.jumpToCurrentState();
            }
            if (this.b != null) {
                this.b.jumpToCurrentState();
            }
            if (this.C != null && !this.C.hasEnded()) {
                clearAnimation();
                setThumbPosition(this.C.b);
                this.C = null;
            }
        }
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Switch");
            CharSequence charSequence = isChecked() ? this.g : this.h;
            if (!TextUtils.isEmpty(charSequence)) {
                CharSequence text = accessibilityNodeInfo.getText();
                if (TextUtils.isEmpty(text)) {
                    accessibilityNodeInfo.setText(charSequence);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(text).append(' ').append(charSequence);
                accessibilityNodeInfo.setText(sb);
            }
        }
    }

    private static float a(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    class a extends Animation {
        final float a;
        final float b;
        final float c;

        private a(float f, float f2) {
            this.a = f;
            this.b = f2;
            this.c = f2 - f;
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f, Transformation transformation) {
            SwitchCompat.this.setThumbPosition(this.a + (this.c * f));
        }
    }
}
