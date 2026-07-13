package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class ChannelMixFilter extends PointFilter {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;

    public ChannelMixFilter() {
        this.canFilterIndexColorModel = true;
    }

    public void setBlueGreen(int i) {
        this.a = i;
    }

    public int getBlueGreen() {
        return this.a;
    }

    public void setRedBlue(int i) {
        this.b = i;
    }

    public int getRedBlue() {
        return this.b;
    }

    public void setGreenRed(int i) {
        this.c = i;
    }

    public int getGreenRed() {
        return this.c;
    }

    public void setIntoR(int i) {
        this.d = i;
    }

    public int getIntoR() {
        return this.d;
    }

    public void setIntoG(int i) {
        this.e = i;
    }

    public int getIntoG() {
        return this.e;
    }

    public void setIntoB(int i) {
        this.f = i;
    }

    public int getIntoB() {
        return this.f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int i4 = (i3 >> 16) & 255;
        int i5 = (i3 >> 8) & 255;
        int i6 = i3 & 255;
        int iClamp = PixelUtils.clamp((((this.d * ((this.a * i5) + ((255 - this.a) * i6))) / 255) + ((255 - this.d) * i4)) / 255);
        int iClamp2 = PixelUtils.clamp((((this.e * ((this.b * i6) + ((255 - this.b) * i4))) / 255) + ((255 - this.e) * i5)) / 255);
        return ((-16777216) & i3) | (iClamp << 16) | (iClamp2 << 8) | PixelUtils.clamp((((((i4 * this.c) + (i5 * (255 - this.c))) * this.f) / 255) + ((255 - this.f) * i6)) / 255);
    }

    public String toString() {
        return "Colors/Mix Channels...";
    }
}
