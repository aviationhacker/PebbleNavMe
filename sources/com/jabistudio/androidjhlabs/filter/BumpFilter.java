package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class BumpFilter extends ConvolveFilter {
    private static float[] a = {-1.0f, -1.0f, 0.0f, -1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    public BumpFilter() {
        super(a);
    }

    @Override // com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Emboss Edges";
    }
}
