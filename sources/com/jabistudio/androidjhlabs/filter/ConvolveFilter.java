package com.jabistudio.androidjhlabs.filter;

import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class ConvolveFilter {
    private int a;
    protected boolean alpha;
    protected Kernel kernel;
    protected boolean premultiplyAlpha;
    public static int ZERO_EDGES = 0;
    public static int CLAMP_EDGES = 1;
    public static int WRAP_EDGES = 2;

    public ConvolveFilter() {
        this(new float[9]);
    }

    public ConvolveFilter(float[] fArr) {
        this(new Kernel(3, 3, fArr));
    }

    public ConvolveFilter(int i, int i2, float[] fArr) {
        this(new Kernel(i2, i, fArr));
    }

    public ConvolveFilter(Kernel kernel) {
        this.kernel = null;
        this.alpha = true;
        this.premultiplyAlpha = true;
        this.a = CLAMP_EDGES;
        this.kernel = kernel;
    }

    public void setKernel(Kernel kernel) {
        this.kernel = kernel;
    }

    public Kernel getKernel() {
        return this.kernel;
    }

    public void setEdgeAction(int i) {
        this.a = i;
    }

    public int getEdgeAction() {
        return this.a;
    }

    public void setUseAlpha(boolean z) {
        this.alpha = z;
    }

    public boolean getUseAlpha() {
        return this.alpha;
    }

    public void setPremultiplyAlpha(boolean z) {
        this.premultiplyAlpha = z;
    }

    public boolean getPremultiplyAlpha() {
        return this.premultiplyAlpha;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        int[] iArr3 = new int[i * i2];
        if (this.premultiplyAlpha) {
            ImageMath.premultiply(iArr, 0, iArr.length);
        }
        convolve(this.kernel, iArr, iArr3, i, i2, this.alpha, this.a);
        if (this.premultiplyAlpha) {
            ImageMath.unpremultiply(iArr3, 0, iArr3.length);
        }
        return iArr3;
    }

    public static void convolve(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, int i3) {
        convolve(kernel, iArr, iArr2, i, i2, true, i3);
    }

    public static void convolve(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z, int i3) {
        if (kernel.getHeight() == 1) {
            convolveH(kernel, iArr, iArr2, i, i2, z, i3);
        } else if (kernel.getWidth() == 1) {
            convolveV(kernel, iArr, iArr2, i, i2, z, i3);
        } else {
            convolveHV(kernel, iArr, iArr2, i, i2, z, i3);
        }
    }

    public static void convolveHV(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z, int i3) {
        int i4;
        float f;
        float f2;
        int i5 = 0;
        float[] kernelData = kernel.getKernelData(null);
        int height = kernel.getHeight();
        int width = kernel.getWidth();
        int i6 = height / 2;
        int i7 = width / 2;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            int i10 = i5;
            if (i9 < i2) {
                int i11 = 0;
                i5 = i10;
                while (i11 < i) {
                    float f3 = 0.0f;
                    float f4 = 0.0f;
                    float f5 = 0.0f;
                    float f6 = 0.0f;
                    for (int i12 = -i6; i12 <= i6; i12++) {
                        int i13 = i9 + i12;
                        if (i13 >= 0 && i13 < i2) {
                            i4 = i13 * i;
                        } else if (i3 == CLAMP_EDGES) {
                            i4 = i9 * i;
                        } else if (i3 == WRAP_EDGES) {
                            i4 = ((i13 + i2) % i2) * i;
                        }
                        int i14 = ((i12 + i6) * width) + i7;
                        int i15 = -i7;
                        while (i15 <= i7) {
                            float f7 = kernelData[i14 + i15];
                            if (f7 == 0.0f) {
                                f = f6;
                                f2 = f5;
                            } else {
                                int i16 = i11 + i15;
                                if (i16 < 0 || i16 >= i) {
                                    if (i3 == CLAMP_EDGES) {
                                        i16 = i11;
                                    } else {
                                        if (i3 == WRAP_EDGES) {
                                            i16 = (i11 + i) % i;
                                        }
                                        f = f6;
                                        f2 = f5;
                                    }
                                }
                                int i17 = iArr[i16 + i4];
                                f = (((i17 >> 24) & 255) * f7) + f6;
                                f3 += ((i17 >> 16) & 255) * f7;
                                f4 += ((i17 >> 8) & 255) * f7;
                                f2 = ((i17 & 255) * f7) + f5;
                            }
                            i15++;
                            f3 = f3;
                            f4 = f4;
                            f5 = f2;
                            f6 = f;
                        }
                    }
                    iArr2[i5] = ((z ? PixelUtils.clamp((int) (((double) f6) + 0.5d)) : 255) << 24) | (PixelUtils.clamp((int) (((double) f3) + 0.5d)) << 16) | (PixelUtils.clamp((int) (((double) f4) + 0.5d)) << 8) | PixelUtils.clamp((int) (((double) f5) + 0.5d));
                    i11++;
                    i5++;
                }
                i8 = i9 + 1;
            } else {
                return;
            }
        }
    }

    public static void convolveH(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z, int i3) {
        int i4;
        float f;
        float f2;
        int i5 = 0;
        float[] kernelData = kernel.getKernelData(null);
        int width = kernel.getWidth() / 2;
        int i6 = 0;
        while (i6 < i2) {
            int i7 = i6 * i;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                i4 = i5;
                if (i9 < i) {
                    float f3 = 0.0f;
                    float f4 = 0.0f;
                    float f5 = 0.0f;
                    float f6 = 0.0f;
                    int i10 = -width;
                    while (i10 <= width) {
                        float f7 = kernelData[width + i10];
                        if (f7 != 0.0f) {
                            int i11 = i9 + i10;
                            if (i11 < 0) {
                                if (i3 == CLAMP_EDGES) {
                                    i11 = 0;
                                } else if (i3 == WRAP_EDGES) {
                                    i11 = (i9 + i) % i;
                                }
                            } else if (i11 >= i) {
                                if (i3 == CLAMP_EDGES) {
                                    i11 = i - 1;
                                } else if (i3 == WRAP_EDGES) {
                                    i11 = (i9 + i) % i;
                                }
                            }
                            int i12 = iArr[i11 + i7];
                            f = (((i12 >> 24) & 255) * f7) + f6;
                            f3 += ((i12 >> 16) & 255) * f7;
                            f4 += ((i12 >> 8) & 255) * f7;
                            f2 = ((i12 & 255) * f7) + f5;
                        } else {
                            f = f6;
                            f2 = f5;
                        }
                        i10++;
                        f3 = f3;
                        f4 = f4;
                        f5 = f2;
                        f6 = f;
                    }
                    int iClamp = z ? PixelUtils.clamp((int) (((double) f6) + 0.5d)) : 255;
                    i5 = i4 + 1;
                    iArr2[i4] = (iClamp << 24) | (PixelUtils.clamp((int) (((double) f3) + 0.5d)) << 16) | (PixelUtils.clamp((int) (((double) f4) + 0.5d)) << 8) | PixelUtils.clamp((int) (((double) f5) + 0.5d));
                    i8 = i9 + 1;
                }
            }
            i6++;
            i5 = i4;
        }
    }

    public static void convolveV(Kernel kernel, int[] iArr, int[] iArr2, int i, int i2, boolean z, int i3) {
        int i4;
        int i5;
        float f;
        float f2;
        int i6 = 0;
        float[] kernelData = kernel.getKernelData(null);
        int height = kernel.getHeight() / 2;
        int i7 = 0;
        while (i7 < i2) {
            int i8 = 0;
            while (true) {
                int i9 = i8;
                i4 = i6;
                if (i9 < i) {
                    float f3 = 0.0f;
                    float f4 = 0.0f;
                    float f5 = 0.0f;
                    float f6 = 0.0f;
                    int i10 = -height;
                    while (i10 <= height) {
                        int i11 = i7 + i10;
                        if (i11 < 0) {
                            if (i3 == CLAMP_EDGES) {
                                i5 = 0;
                            } else if (i3 == WRAP_EDGES) {
                                i5 = ((i7 + i2) % i2) * i;
                            } else {
                                i5 = i11 * i;
                            }
                        } else if (i11 >= i2) {
                            if (i3 == CLAMP_EDGES) {
                                i5 = (i2 - 1) * i;
                            } else if (i3 == WRAP_EDGES) {
                                i5 = ((i7 + i2) % i2) * i;
                            } else {
                                i5 = i11 * i;
                            }
                        } else {
                            i5 = i11 * i;
                        }
                        float f7 = kernelData[i10 + height];
                        if (f7 != 0.0f) {
                            int i12 = iArr[i5 + i9];
                            f = (((i12 >> 24) & 255) * f7) + f6;
                            f3 += ((i12 >> 16) & 255) * f7;
                            f4 += ((i12 >> 8) & 255) * f7;
                            f2 = ((i12 & 255) * f7) + f5;
                        } else {
                            f = f6;
                            f2 = f5;
                        }
                        i10++;
                        f3 = f3;
                        f4 = f4;
                        f5 = f2;
                        f6 = f;
                    }
                    int iClamp = z ? PixelUtils.clamp((int) (((double) f6) + 0.5d)) : 255;
                    i6 = i4 + 1;
                    iArr2[i4] = (iClamp << 24) | (PixelUtils.clamp((int) (((double) f3) + 0.5d)) << 16) | (PixelUtils.clamp((int) (((double) f4) + 0.5d)) << 8) | PixelUtils.clamp((int) (((double) f5) + 0.5d));
                    i8 = i9 + 1;
                }
            }
            i7++;
            i6 = i4;
        }
    }

    public String toString() {
        return "Blur/Convolve...";
    }
}
