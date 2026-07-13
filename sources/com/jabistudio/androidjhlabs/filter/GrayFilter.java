package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class GrayFilter extends PointFilter {
    public GrayFilter() {
        this.canFilterIndexColorModel = true;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return ((-16777216) & i3) | (((((i3 >> 16) & 255) + 255) / 2) << 16) | (((((i3 >> 8) & 255) + 255) / 2) << 8) | (((i3 & 255) + 255) / 2);
    }

    public String toString() {
        return "Colors/Gray Out";
    }
}
