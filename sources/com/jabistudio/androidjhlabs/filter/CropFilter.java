package com.jabistudio.androidjhlabs.filter;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class CropFilter {
    private int a;
    private int b;
    private int c;
    private int d;

    public CropFilter() {
        this(0, 0, 32, 32);
    }

    public CropFilter(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public void setX(int i) {
        this.a = i;
    }

    public int getX() {
        return this.a;
    }

    public void setY(int i) {
        this.b = i;
    }

    public int getY() {
        return this.b;
    }

    public void setWidth(int i) {
        this.c = i;
    }

    public int getWidth() {
        return this.c;
    }

    public void setHeight(int i) {
        this.d = i;
    }

    public int getHeight() {
        return this.d;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[this.c * this.d];
        Bitmap.createScaledBitmap(Bitmap.createBitmap(Bitmap.createBitmap(iArr, 0, i, i, i2, Bitmap.Config.ARGB_8888), this.a, this.b, i - this.a, i2 - this.b), this.c, this.d, false).getPixels(iArr2, 0, this.c, 0, 0, this.c, this.d);
        return iArr2;
    }

    public String toString() {
        return "Distort/Crop";
    }
}
