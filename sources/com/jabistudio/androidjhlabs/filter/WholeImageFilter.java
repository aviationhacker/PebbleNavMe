package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public abstract class WholeImageFilter {
    protected Rect originalSpace;
    protected Rect transformedSpace;

    protected abstract int[] filterPixels(int i, int i2, int[] iArr, Rect rect);

    public int[] filter(int[] iArr, int i, int i2) {
        this.originalSpace = new Rect(0, 0, i, i2);
        this.transformedSpace = new Rect(0, 0, i, i2);
        transformSpace(this.transformedSpace);
        return filterPixels(i, i2, iArr, this.transformedSpace);
    }

    protected void transformSpace(Rect rect) {
    }
}
