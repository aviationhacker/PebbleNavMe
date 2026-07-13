package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class TransferFilter extends PointFilter {
    protected int[] bTable;
    protected int[] gTable;
    protected boolean initialized = false;
    protected int[] rTable;

    public TransferFilter() {
        this.canFilterIndexColorModel = true;
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int filterRGB(int i, int i2, int i3) {
        int i4 = this.rTable[(i3 >> 16) & 255];
        int i5 = this.gTable[(i3 >> 8) & 255];
        return ((-16777216) & i3) | (i4 << 16) | (i5 << 8) | this.bTable[i3 & 255];
    }

    @Override // com.jabistudio.androidjhlabs.filter.PointFilter
    public int[] filter(int[] iArr, int i, int i2) {
        if (!this.initialized) {
            initialize();
        }
        return super.filter(iArr, i, i2);
    }

    protected void initialize() {
        this.initialized = true;
        int[] iArrMakeTable = makeTable();
        this.bTable = iArrMakeTable;
        this.gTable = iArrMakeTable;
        this.rTable = iArrMakeTable;
    }

    protected int[] makeTable() {
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[i] = PixelUtils.clamp((int) (transferFunction(i / 255.0f) * 255.0f));
        }
        return iArr;
    }

    protected float transferFunction(float f) {
        return 0.0f;
    }

    public int[] getLUT() {
        if (!this.initialized) {
            initialize();
        }
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[i] = filterRGB(0, 0, (i << 24) | (i << 16) | (i << 8) | i);
        }
        return iArr;
    }
}
