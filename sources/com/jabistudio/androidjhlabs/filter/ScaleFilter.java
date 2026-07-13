package com.jabistudio.androidjhlabs.filter;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class ScaleFilter {
    private int a;
    private int b;

    public ScaleFilter() {
        this(32, 32);
    }

    public ScaleFilter(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[this.a * this.b];
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, this.a, this.b, false);
        bitmapCreateScaledBitmap.getPixels(iArr2, 0, this.a, 0, 0, this.a, this.b);
        bitmapCreateBitmap.recycle();
        bitmapCreateScaledBitmap.recycle();
        return iArr2;
    }

    public String toString() {
        return "Distort/Scale";
    }
}
