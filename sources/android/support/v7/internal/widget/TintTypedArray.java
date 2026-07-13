package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class TintTypedArray {
    private final Context a;
    private final TypedArray b;
    private TintManager c;

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) ? this.b.getDrawable(i) : getTintManager().getDrawable(resourceId);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return getTintManager().getDrawable(resourceId, true);
    }

    public int length() {
        return this.b.length();
    }

    public int getIndexCount() {
        return this.b.getIndexCount();
    }

    public int getIndex(int i) {
        return this.b.getIndex(i);
    }

    public Resources getResources() {
        return this.b.getResources();
    }

    public CharSequence getText(int i) {
        return this.b.getText(i);
    }

    public String getString(int i) {
        return this.b.getString(i);
    }

    public String getNonResourceString(int i) {
        return this.b.getNonResourceString(i);
    }

    public boolean getBoolean(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int getInt(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public float getFloat(int i, float f) {
        return this.b.getFloat(i, f);
    }

    public int getColor(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList getColorStateList(int i) {
        return this.b.getColorStateList(i);
    }

    public int getInteger(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public float getDimension(int i, float f) {
        return this.b.getDimension(i, f);
    }

    public int getDimensionPixelOffset(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int getDimensionPixelSize(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public int getLayoutDimension(int i, String str) {
        return this.b.getLayoutDimension(i, str);
    }

    public int getLayoutDimension(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public float getFraction(int i, int i2, int i3, float f) {
        return this.b.getFraction(i, i2, i3, f);
    }

    public int getResourceId(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public CharSequence[] getTextArray(int i) {
        return this.b.getTextArray(i);
    }

    public boolean getValue(int i, TypedValue typedValue) {
        return this.b.getValue(i, typedValue);
    }

    public int getType(int i) {
        return this.b.getType(i);
    }

    public boolean hasValue(int i) {
        return this.b.hasValue(i);
    }

    public TypedValue peekValue(int i) {
        return this.b.peekValue(i);
    }

    public String getPositionDescription() {
        return this.b.getPositionDescription();
    }

    public void recycle() {
        this.b.recycle();
    }

    public int getChangingConfigurations() {
        return this.b.getChangingConfigurations();
    }

    public TintManager getTintManager() {
        if (this.c == null) {
            this.c = TintManager.get(this.a);
        }
        return this.c;
    }
}
