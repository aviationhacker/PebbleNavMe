package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class DissolveFilter extends PointFilter {
    private float a = 1.0f;
    private float b = 0.0f;
    private float c;
    private float d;
    private Random e;

    public void setDensity(float f) {
        this.a = f;
    }

    public float getDensity() {
        return this.a;
    }

    public void setSoftness(float f) {
        this.b = f;
    }

    public float getSoftness() {
        return this.b;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int[] filter(int[] iArr, int i, int i2) {
        float f = (1.0f - this.a) * (this.b + 1.0f);
        this.c = f - this.b;
        this.d = f;
        this.e = new Random(0L);
        return super.filter(iArr, i, i2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return (((int) (((i3 >> 24) & 255) * ImageMath.smoothStep(this.c, this.d, this.e.nextFloat()))) << 24) | (16777215 & i3);
    }

    public String toString() {
        return "Stylize/Dissolve...";
    }
}
