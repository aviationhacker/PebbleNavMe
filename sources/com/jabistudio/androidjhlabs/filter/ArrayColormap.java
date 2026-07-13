package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class ArrayColormap implements Colormap, Cloneable {
    protected int[] map;

    public ArrayColormap() {
        this.map = new int[256];
    }

    public ArrayColormap(int[] iArr) {
        this.map = iArr;
    }

    public Object clone() {
        try {
            ArrayColormap arrayColormap = (ArrayColormap) super.clone();
            arrayColormap.map = (int[]) this.map.clone();
            return arrayColormap;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public void setMap(int[] iArr) {
        this.map = iArr;
    }

    public int[] getMap() {
        return this.map;
    }

    @Override // com.jabistudio.androidjhlabs.filter.Colormap
    public int getColor(float f) {
        int i = 255;
        int i2 = (int) (255.0f * f);
        if (i2 < 0) {
            i = 0;
        } else if (i2 <= 255) {
            i = i2;
        }
        return this.map[i];
    }

    public void setColorInterpolated(int i, int i2, int i3, int i4) {
        int i5 = this.map[i2];
        int i6 = this.map[i3];
        for (int i7 = i2; i7 <= i; i7++) {
            this.map[i7] = ImageMath.mixColors((i7 - i2) / (i - i2), i5, i4);
        }
        for (int i8 = i; i8 < i3; i8++) {
            this.map[i8] = ImageMath.mixColors((i8 - i) / (i3 - i), i4, i6);
        }
    }

    public void setColorRange(int i, int i2, int i3, int i4) {
        for (int i5 = i; i5 <= i2; i5++) {
            this.map[i5] = ImageMath.mixColors((i5 - i) / (i2 - i), i3, i4);
        }
    }

    public void setColorRange(int i, int i2, int i3) {
        while (i <= i2) {
            this.map[i] = i3;
            i++;
        }
    }

    public void setColor(int i, int i2) {
        this.map[i] = i2;
    }
}
