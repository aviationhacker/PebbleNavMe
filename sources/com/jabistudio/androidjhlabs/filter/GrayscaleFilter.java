package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class GrayscaleFilter extends PointFilter {
    public GrayscaleFilter() {
        this.canFilterIndexColorModel = true;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int i4 = (((((i3 >> 16) & 255) * 77) + (((i3 >> 8) & 255) * 151)) + ((i3 & 255) * 28)) >> 8;
        return ((-16777216) & i3) | (i4 << 16) | (i4 << 8) | i4;
    }

    public String toString() {
        return "Colors/Grayscale";
    }
}
