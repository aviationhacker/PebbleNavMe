package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class InvertAlphaFilter extends PointFilter {
    public InvertAlphaFilter() {
        this.canFilterIndexColorModel = true;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return (-16777216) ^ i3;
    }

    public String toString() {
        return "Alpha/Invert";
    }
}
