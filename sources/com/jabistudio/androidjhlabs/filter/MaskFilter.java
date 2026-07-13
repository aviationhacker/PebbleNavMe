package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class MaskFilter extends PointFilter {
    private int a;

    public MaskFilter() {
        this(-16711681);
    }

    public MaskFilter(int i) {
        this.canFilterIndexColorModel = true;
        setMask(i);
    }

    public void setMask(int i) {
        this.a = i;
    }

    public int getMask() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return this.a & i3;
    }

    public String toString() {
        return "Mask";
    }
}
