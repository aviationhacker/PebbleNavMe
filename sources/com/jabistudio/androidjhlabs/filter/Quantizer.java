package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public interface Quantizer {
    void addPixels(int[] iArr, int i, int i2);

    int[] buildColorTable();

    int getIndexForColor(int i);

    void setup(int i);
}
