package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class GaussianFilter extends ConvolveFilter {
    protected Kernel kernel;
    protected float radius;

    public GaussianFilter() {
        this(2.0f);
    }

    public GaussianFilter(float f) {
        setRadius(f);
    }

    public void setRadius(float f) {
        this.radius = f;
        this.kernel = makeKernel(f);
    }

    public float getRadius() {
        return this.radius;
    }

    @Override // com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        if (this.radius > 0.0f) {
            convolveAndTranspose(this.kernel, iArr, iArr3, i, i2, this.alpha, this.alpha && this.premultiplyAlpha, false, CLAMP_EDGES);
            convolveAndTranspose(this.kernel, iArr3, iArr, i2, i, this.alpha, false, this.alpha && this.premultiplyAlpha, CLAMP_EDGES);
        }
        return iArr;
    }

    public static void convolveAndTranspose(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z, boolean z2, boolean z3, int i3) {
        float f;
        float f2;
        float f3;
        float f4;
        float[] kernelData = kernel.getKernelData(null);
        int width = kernel.getWidth() / 2;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * i;
            int i6 = 0;
            int i7 = i4;
            while (i6 < i) {
                float f5 = 0.0f;
                float f6 = 0.0f;
                float f7 = 0.0f;
                float f8 = 0.0f;
                int i8 = -width;
                while (i8 <= width) {
                    float f9 = kernelData[width + i8];
                    if (f9 != 0.0f) {
                        int i9 = i6 + i8;
                        if (i9 < 0) {
                            if (i3 == CLAMP_EDGES) {
                                i9 = 0;
                            } else if (i3 == WRAP_EDGES) {
                                i9 = (i6 + i) % i;
                            }
                        } else if (i9 >= i) {
                            if (i3 == CLAMP_EDGES) {
                                i9 = i - 1;
                            } else if (i3 == WRAP_EDGES) {
                                i9 = (i6 + i) % i;
                            }
                        }
                        int i10 = iArr[i9 + i5];
                        int i11 = (i10 >> 24) & 255;
                        int i12 = (i10 >> 16) & 255;
                        int i13 = (i10 >> 8) & 255;
                        int i14 = i10 & 255;
                        if (z2) {
                            float f10 = i11 * 0.003921569f;
                            i12 = (int) (i12 * f10);
                            i13 = (int) (i13 * f10);
                            i14 = (int) (i14 * f10);
                        }
                        float f11 = f8 + (i11 * f9);
                        f4 = (i12 * f9) + f5;
                        f3 = (i13 * f9) + f6;
                        f2 = (i14 * f9) + f7;
                        f = f11;
                    } else {
                        f = f8;
                        f2 = f7;
                        f3 = f6;
                        f4 = f5;
                    }
                    i8++;
                    f6 = f3;
                    f5 = f4;
                    f8 = f;
                    f7 = f2;
                }
                if (z3 && f8 != 0.0f && f8 != 255.0f) {
                    float f12 = 255.0f / f8;
                    f5 *= f12;
                    f6 *= f12;
                    f7 *= f12;
                }
                iArr2[i7] = ((z ? PixelUtils.clamp((int) (((double) f8) + 0.5d)) : 255) << 24) | (PixelUtils.clamp((int) (((double) f5) + 0.5d)) << 16) | (PixelUtils.clamp((int) (((double) f6) + 0.5d)) << 8) | PixelUtils.clamp((int) (((double) f7) + 0.5d));
                i6++;
                i7 += i2;
            }
        }
    }

    public static Kernel makeKernel(float f) {
        int iCeil = (int) Math.ceil(f);
        int i = (iCeil * 2) + 1;
        float[] fArr = new float[i];
        float f2 = f / 3.0f;
        float f3 = 2.0f * f2 * f2;
        float fSqrt = (float) Math.sqrt(f2 * 6.2831855f);
        float f4 = f * f;
        int i2 = 0;
        float f5 = 0.0f;
        for (int i3 = -iCeil; i3 <= iCeil; i3++) {
            if (i3 * i3 > f4) {
                fArr[i2] = 0.0f;
            } else {
                fArr[i2] = ((float) Math.exp((-r11) / f3)) / fSqrt;
            }
            f5 += fArr[i2];
            i2++;
        }
        for (int i4 = 0; i4 < i; i4++) {
            fArr[i4] = fArr[i4] / f5;
        }
        return new Kernel(i, 1, fArr);
    }

    @Override // com.jabistudio.androidjhlabs.filter.ConvolveFilter
    public String toString() {
        return "Blur/Gaussian Blur...";
    }
}
