package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class BlurFilter extends ConvolveFilter {
    protected static float[] blurMatrix = {0.071428575f, 0.14285715f, 0.071428575f, 0.14285715f, 0.14285715f, 0.14285715f, 0.071428575f, 0.14285715f, 0.071428575f};

    public BlurFilter() {
        super(blurMatrix);
    }

    @Override // com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Simple Blur";
    }
}
