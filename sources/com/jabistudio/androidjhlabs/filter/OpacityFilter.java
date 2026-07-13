package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class OpacityFilter extends PointFilter {
    private int a;
    private int b;

    public OpacityFilter() {
        this(136);
    }

    public OpacityFilter(int i) {
        setOpacity(i);
    }

    public void setOpacity(int i) {
        this.a = i;
        this.b = i << 24;
    }

    public int getOpacity() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        if (((-16777216) & i3) != 0) {
            return (16777215 & i3) | this.b;
        }
        return i3;
    }

    public String toString() {
        return "Colors/Transparency...";
    }
}
