package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class SmartBlurFilter {
    private int a = 5;
    private int b = 5;
    private int c = 10;

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        Kernel kernelMakeKernel = GaussianFilter.makeKernel(this.a);
        a(kernelMakeKernel, iArr, iArr3, i, i2, true);
        a(kernelMakeKernel, iArr3, iArr, i2, i, true);
        return iArr;
    }

    private void a(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float[] kernelData = kernel.getKernelData(null);
        int width = kernel.getWidth() / 2;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * i;
            int i5 = 0;
            int i6 = i3;
            while (i5 < i) {
                float f11 = 0.0f;
                float f12 = 0.0f;
                float f13 = 0.0f;
                float f14 = 0.0f;
                int i7 = iArr[i4 + i5];
                int i8 = (i7 >> 24) & 255;
                int i9 = (i7 >> 16) & 255;
                int i10 = (i7 >> 8) & 255;
                int i11 = i7 & 255;
                float f15 = 0.0f;
                float f16 = 0.0f;
                float f17 = 0.0f;
                float f18 = 0.0f;
                int i12 = -width;
                while (i12 <= width) {
                    float f19 = kernelData[width + i12];
                    if (f19 != 0.0f) {
                        int i13 = i5 + i12;
                        if (i13 < 0 || i13 >= i) {
                            i13 = i5;
                        }
                        int i14 = iArr[i13 + i4];
                        int i15 = (i14 >> 24) & 255;
                        int i16 = (i14 >> 16) & 255;
                        int i17 = (i14 >> 8) & 255;
                        int i18 = i14 & 255;
                        int i19 = i8 - i15;
                        if (i19 < (-this.c) || i19 > this.c) {
                            f7 = f15;
                            f8 = f14;
                        } else {
                            f7 = f15 + f19;
                            f8 = f14 + (i15 * f19);
                        }
                        int i20 = i9 - i16;
                        if (i20 < (-this.c) || i20 > this.c) {
                            f5 = f16;
                            f9 = f11;
                        } else {
                            f5 = f16 + f19;
                            f9 = f11 + (i16 * f19);
                        }
                        int i21 = i10 - i17;
                        if (i21 < (-this.c) || i21 > this.c) {
                            f3 = f17;
                            f10 = f12;
                        } else {
                            f3 = f17 + f19;
                            f10 = f12 + (i17 * f19);
                        }
                        int i22 = i11 - i18;
                        if (i22 < (-this.c) || i22 > this.c) {
                            f12 = f10;
                            f4 = f13;
                            float f20 = f8;
                            f15 = f7;
                            f = f18;
                            f2 = f9;
                            f6 = f20;
                        } else {
                            float f21 = f18 + f19;
                            f2 = f9;
                            f6 = f8;
                            f15 = f7;
                            f = f21;
                            f12 = f10;
                            f4 = f13 + (i18 * f19);
                        }
                    } else {
                        f = f18;
                        f2 = f11;
                        f3 = f17;
                        f4 = f13;
                        float f22 = f14;
                        f5 = f16;
                        f6 = f22;
                    }
                    i12++;
                    f13 = f4;
                    f17 = f3;
                    f11 = f2;
                    f18 = f;
                    float f23 = f6;
                    f16 = f5;
                    f14 = f23;
                }
                iArr2[i6] = ((z ? PixelUtils.clamp((int) (((double) (f15 == 0.0f ? i8 : f14 / f15)) + 0.5d)) : 255) << 24) | (PixelUtils.clamp((int) (((double) (f16 == 0.0f ? i9 : f11 / f16)) + 0.5d)) << 16) | (PixelUtils.clamp((int) (((double) (f17 == 0.0f ? i10 : f12 / f17)) + 0.5d)) << 8) | PixelUtils.clamp((int) (((double) (f18 == 0.0f ? i11 : f13 / f18)) + 0.5d));
                i5++;
                i6 += i2;
            }
        }
    }

    public void setHRadius(int i) {
        this.a = i;
    }

    public int getHRadius() {
        return this.a;
    }

    public void setVRadius(int i) {
        this.b = i;
    }

    public int getVRadius() {
        return this.b;
    }

    public void setRadius(int i) {
        this.b = i;
        this.a = i;
    }

    public int getRadius() {
        return this.a;
    }

    public void setThreshold(int i) {
        this.c = i;
    }

    public int getThreshold() {
        return this.c;
    }

    public String toString() {
        return "Blur/Smart Blur...";
    }
}
