package com.jabistudio.androidjhlabs.filter;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Histogram {
    public static final int BLUE = 2;
    public static final int GRAY = 3;
    public static final int GREEN = 1;
    public static final int RED = 0;
    protected int[][] histogram;
    protected boolean isGray;
    protected int[] maxFrequency;
    protected int[] maxValue;
    protected float[] mean;
    protected int[] minFrequency;
    protected int[] minValue;
    protected int numSamples;

    public Histogram() {
        this.histogram = (int[][]) null;
        this.numSamples = 0;
        this.isGray = true;
        this.minValue = null;
        this.maxValue = null;
        this.minFrequency = null;
        this.maxFrequency = null;
        this.mean = null;
    }

    public Histogram(int[] iArr, int i, int i2, int i3, int i4) {
        this.histogram = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 3, 256);
        this.minValue = new int[4];
        this.maxValue = new int[4];
        this.minFrequency = new int[3];
        this.maxFrequency = new int[3];
        this.mean = new float[3];
        this.numSamples = i * i2;
        this.isGray = true;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i3 + (i5 * i4);
            int i7 = 0;
            while (i7 < i) {
                int i8 = i6 + 1;
                int i9 = iArr[i6];
                int i10 = (i9 >> 16) & 255;
                int i11 = (i9 >> 8) & 255;
                int i12 = i9 & 255;
                int[] iArr2 = this.histogram[0];
                iArr2[i10] = iArr2[i10] + 1;
                int[] iArr3 = this.histogram[1];
                iArr3[i11] = iArr3[i11] + 1;
                int[] iArr4 = this.histogram[2];
                iArr4[i12] = iArr4[i12] + 1;
                i7++;
                i6 = i8;
            }
        }
        for (int i13 = 0; i13 < 256; i13++) {
            if (this.histogram[0][i13] != this.histogram[1][i13] || this.histogram[1][i13] != this.histogram[2][i13]) {
                this.isGray = false;
                break;
            }
        }
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i15 < 3) {
                int i16 = 0;
                while (true) {
                    if (i16 >= 256) {
                        break;
                    }
                    if (this.histogram[i15][i16] <= 0) {
                        i16++;
                    } else {
                        this.minValue[i15] = i16;
                        break;
                    }
                }
                int i17 = 255;
                while (true) {
                    if (i17 < 0) {
                        break;
                    }
                    if (this.histogram[i15][i17] > 0) {
                        this.maxValue[i15] = i17;
                        break;
                    }
                    i17--;
                }
                this.minFrequency[i15] = Integer.MAX_VALUE;
                this.maxFrequency[i15] = 0;
                for (int i18 = 0; i18 < 256; i18++) {
                    this.minFrequency[i15] = Math.min(this.minFrequency[i15], this.histogram[i15][i18]);
                    this.maxFrequency[i15] = Math.max(this.maxFrequency[i15], this.histogram[i15][i18]);
                    float[] fArr = this.mean;
                    fArr[i15] = fArr[i15] + (this.histogram[i15][i18] * i18);
                }
                float[] fArr2 = this.mean;
                fArr2[i15] = fArr2[i15] / this.numSamples;
                i14 = i15 + 1;
            } else {
                this.minValue[3] = Math.min(Math.min(this.minValue[0], this.minValue[1]), this.minValue[2]);
                this.maxValue[3] = Math.max(Math.max(this.maxValue[0], this.maxValue[1]), this.maxValue[2]);
                return;
            }
        }
    }

    public boolean isGray() {
        return this.isGray;
    }

    public int getNumSamples() {
        return this.numSamples;
    }

    public int getFrequency(int i) {
        if (this.numSamples <= 0 || !this.isGray || i < 0 || i > 255) {
            return -1;
        }
        return this.histogram[0][i];
    }

    public int getFrequency(int i, int i2) {
        if (this.numSamples < 1 || i < 0 || i > 2 || i2 < 0 || i2 > 255) {
            return -1;
        }
        return this.histogram[i][i2];
    }

    public int getMinFrequency() {
        if (this.numSamples <= 0 || !this.isGray) {
            return -1;
        }
        return this.minFrequency[0];
    }

    public int getMinFrequency(int i) {
        if (this.numSamples < 1 || i < 0 || i > 2) {
            return -1;
        }
        return this.minFrequency[i];
    }

    public int getMaxFrequency() {
        if (this.numSamples <= 0 || !this.isGray) {
            return -1;
        }
        return this.maxFrequency[0];
    }

    public int getMaxFrequency(int i) {
        if (this.numSamples < 1 || i < 0 || i > 2) {
            return -1;
        }
        return this.maxFrequency[i];
    }

    public int getMinValue() {
        if (this.numSamples <= 0 || !this.isGray) {
            return -1;
        }
        return this.minValue[0];
    }

    public int getMinValue(int i) {
        return this.minValue[i];
    }

    public int getMaxValue() {
        if (this.numSamples <= 0 || !this.isGray) {
            return -1;
        }
        return this.maxValue[0];
    }

    public int getMaxValue(int i) {
        return this.maxValue[i];
    }

    public float getMeanValue() {
        if (this.numSamples <= 0 || !this.isGray) {
            return -1.0f;
        }
        return this.mean[0];
    }

    public float getMeanValue(int i) {
        if (this.numSamples <= 0 || i < 0 || i > 2) {
            return -1.0f;
        }
        return this.mean[i];
    }
}
