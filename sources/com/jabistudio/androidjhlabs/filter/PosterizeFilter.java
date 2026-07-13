package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class PosterizeFilter extends PointFilter {
    private int a;
    private int[] b;
    private boolean c = false;

    public PosterizeFilter() {
        setNumLevels(6);
    }

    public void setNumLevels(int i) {
        this.a = i;
        this.c = false;
    }

    public int getNumLevels() {
        return this.a;
    }

    protected void initialize() {
        this.b = new int[256];
        if (this.a != 1) {
            for (int i = 0; i < 256; i++) {
                this.b[i] = (((this.a * i) / 256) * 255) / (this.a - 1);
            }
        }
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        if (!this.c) {
            this.c = true;
            initialize();
        }
        int i4 = this.b[(i3 >> 16) & 255];
        int i5 = this.b[(i3 >> 8) & 255];
        return ((-16777216) & i3) | (i4 << 16) | (i5 << 8) | this.b[i3 & 255];
    }

    public String toString() {
        return "Colors/Posterize...";
    }
}
