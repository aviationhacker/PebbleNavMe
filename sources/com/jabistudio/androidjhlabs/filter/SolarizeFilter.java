package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class SolarizeFilter extends TransferFilter {
    @Override // com.jabistudio.androidjhlabs.filter.TransferFilter
    protected float transferFunction(float f) {
        return f > 0.5f ? (f - 0.5f) * 2.0f : (0.5f - f) * 2.0f;
    }

    public String toString() {
        return "Colors/Solarize";
    }
}
