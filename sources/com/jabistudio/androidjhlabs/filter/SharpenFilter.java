package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class SharpenFilter extends ConvolveFilter {
    private static float[] a = {0.0f, -0.2f, 0.0f, -0.2f, 1.8f, -0.2f, 0.0f, -0.2f, 0.0f};

    public SharpenFilter() {
        super(a);
    }

    @Override // com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Sharpen";
    }
}
