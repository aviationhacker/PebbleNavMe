package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class TritoneFilter extends PointFilter {
    private int a = ViewCompat.MEASURED_STATE_MASK;
    private int b = -7829368;
    private int c = -1;
    private int[] d;

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.d = new int[256];
        for (int i3 = 0; i3 < 128; i3++) {
            this.d[i3] = ImageMath.mixColors(i3 / 127.0f, this.a, this.b);
        }
        for (int i4 = 128; i4 < 256; i4++) {
            this.d[i4] = ImageMath.mixColors((i4 - 127) / 128.0f, this.b, this.c);
        }
        int[] iArrFilter = super.filter(iArr, i, i2);
        this.d = null;
        return iArrFilter;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return this.d[PixelUtils.brightness(i3)];
    }

    public void setShadowColor(int i) {
        this.a = i;
    }

    public int getShadowColor() {
        return this.a;
    }

    public void setMidColor(int i) {
        this.b = i;
    }

    public int getMidColor() {
        return this.b;
    }

    public void setHighColor(int i) {
        this.c = i;
    }

    public int getHighColor() {
        return this.c;
    }

    public String toString() {
        return "Colors/Tritone...";
    }
}
