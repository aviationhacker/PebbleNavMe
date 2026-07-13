package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class InvertFilter extends PointFilter {
    public InvertFilter() {
        this.canFilterIndexColorModel = true;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return ((-16777216) & i3) | ((i3 ^ (-1)) & ViewCompat.MEASURED_SIZE_MASK);
    }

    public String toString() {
        return "Colors/Invert";
    }
}
