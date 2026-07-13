package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class CrystallizeFilter extends CellularFilter {
    private float a = 0.4f;
    private boolean b = false;
    private int c = ViewCompat.MEASURED_STATE_MASK;

    public CrystallizeFilter() {
        setScale(16.0f);
        setRandomness(0.0f);
    }

    public void setEdgeThickness(float f) {
        this.a = f;
    }

    public float getEdgeThickness() {
        return this.a;
    }

    public void setFadeEdges(boolean z) {
        this.b = z;
    }

    public boolean getFadeEdges() {
        return this.b;
    }

    public void setEdgeColor(int i) {
        this.c = i;
    }

    public int getEdgeColor() {
        return this.c;
    }

    @Override // com.jabistudio.androidjhlabs.filter.CellularFilter
    public int getPixel(int i, int i2, int[] iArr, int i3, int i4) {
        evaluate((((this.m00 * i) + (this.m01 * i2)) / this.scale) + 1000.0f, (((this.m10 * i) + (this.m11 * i2)) / (this.scale * this.stretch)) + 1000.0f);
        float f = this.results[0].distance;
        float f2 = this.results[1].distance;
        int i5 = iArr[ImageMath.clamp((int) ((this.results[0].x - 1000.0f) * this.scale), 0, i3 - 1) + (ImageMath.clamp((int) ((this.results[0].y - 1000.0f) * this.scale), 0, i4 - 1) * i3)];
        float fSmoothStep = ImageMath.smoothStep(0.0f, this.a, (f2 - f) / this.a);
        if (this.b) {
            return ImageMath.mixColors(fSmoothStep, ImageMath.mixColors(0.5f, iArr[ImageMath.clamp((int) ((this.results[1].x - 1000.0f) * this.scale), 0, i3 - 1) + (ImageMath.clamp((int) ((this.results[1].y - 1000.0f) * this.scale), 0, i4 - 1) * i3)], i5), i5);
        }
        return ImageMath.mixColors(fSmoothStep, this.c, i5);
    }

    @Override // com.jabistudio.androidjhlabs.filter.CellularFilter
    public String toString() {
        return "Pixellate/Crystallize...";
    }
}
