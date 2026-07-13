package com.jabistudio.androidjhlabs.filter;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class ThresholdFilter extends PointFilter {
    private int a;
    private int b;
    private int c;
    private int d;

    public ThresholdFilter() {
        this(TransportMediator.KEYCODE_MEDIA_PAUSE);
    }

    public ThresholdFilter(int i) {
        this.c = ViewCompat.MEASURED_SIZE_MASK;
        this.d = 0;
        setLowerThreshold(i);
        setUpperThreshold(i);
    }

    public void setLowerThreshold(int i) {
        this.a = i;
    }

    public int getLowerThreshold() {
        return this.a;
    }

    public void setUpperThreshold(int i) {
        this.b = i;
    }

    public int getUpperThreshold() {
        return this.b;
    }

    public void setWhite(int i) {
        this.c = i;
    }

    public int getWhite() {
        return this.c;
    }

    public void setBlack(int i) {
        this.d = i;
    }

    public int getBlack() {
        return this.d;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        return (ImageMath.mixColors(ImageMath.smoothStep(this.a, this.b, PixelUtils.brightness(i3)), this.d, this.c) & ViewCompat.MEASURED_SIZE_MASK) | ((-16777216) & i3);
    }

    public String toString() {
        return "Stylize/Threshold...";
    }
}
