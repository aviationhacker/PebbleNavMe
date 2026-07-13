package com.jabistudio.androidjhlabs.filter.math;

/* JADX INFO: loaded from: classes.dex */
public class ImageMath {
    public static final float HALF_PI = 1.5707964f;
    public static final float PI = 3.1415927f;
    public static final float QUARTER_PI = 0.7853982f;
    public static final float TWO_PI = 6.2831855f;

    public static float bias(float f, float f2) {
        return f / ((((1.0f / f2) - 2.0f) * (1.0f - f)) + 1.0f);
    }

    public static float gain(float f, float f2) {
        float f3 = ((1.0f / f2) - 2.0f) * (1.0f - (2.0f * f));
        return ((double) f) < 0.5d ? f / (f3 + 1.0f) : (f3 - f) / (f3 - 1.0f);
    }

    public static float step(float f, float f2) {
        return f2 < f ? 0.0f : 1.0f;
    }

    public static float pulse(float f, float f2, float f3) {
        return (f3 < f || f3 >= f2) ? 0.0f : 1.0f;
    }

    public static float smoothPulse(float f, float f2, float f3, float f4, float f5) {
        if (f5 < f || f5 >= f4) {
            return 0.0f;
        }
        if (f5 < f2) {
            float f6 = (f5 - f) / (f2 - f);
            return (3.0f - (f6 * 2.0f)) * f6 * f6;
        }
        if (f5 < f3) {
            return 1.0f;
        }
        float f7 = (f5 - f3) / (f4 - f3);
        return 1.0f - ((3.0f - (f7 * 2.0f)) * (f7 * f7));
    }

    public static float smoothStep(float f, float f2, float f3) {
        if (f3 < f) {
            return 0.0f;
        }
        if (f3 >= f2) {
            return 1.0f;
        }
        float f4 = (f3 - f) / (f2 - f);
        return (3.0f - (f4 * 2.0f)) * f4 * f4;
    }

    public static float circleUp(float f) {
        float f2 = 1.0f - f;
        return (float) Math.sqrt(1.0f - (f2 * f2));
    }

    public static float circleDown(float f) {
        return 1.0f - ((float) Math.sqrt(1.0f - (f * f)));
    }

    public static float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static double mod(double d, double d2) {
        double d3 = d - (((double) ((int) (d / d2))) * d2);
        if (d3 < 0.0d) {
            return d3 + d2;
        }
        return d3;
    }

    public static float mod(float f, float f2) {
        float f3 = f - (((int) (f / f2)) * f2);
        if (f3 < 0.0f) {
            return f3 + f2;
        }
        return f3;
    }

    public static int mod(int i, int i2) {
        int i3 = i - ((i / i2) * i2);
        if (i3 < 0) {
            return i3 + i2;
        }
        return i3;
    }

    public static float triangle(float f) {
        float fMod = mod(f, 1.0f);
        if (fMod >= 0.5d) {
            fMod = 1.0f - fMod;
        }
        return fMod * 2.0f;
    }

    public static float lerp(float f, float f2, float f3) {
        return ((f3 - f2) * f) + f2;
    }

    public static int lerp(float f, int i, int i2) {
        return (int) (i + ((i2 - i) * f));
    }

    public static int mixColors(float f, int i, int i2) {
        return (lerp(f, (i >> 24) & 255, (i2 >> 24) & 255) << 24) | (lerp(f, (i >> 16) & 255, (i2 >> 16) & 255) << 16) | (lerp(f, (i >> 8) & 255, (i2 >> 8) & 255) << 8) | lerp(f, i & 255, i2 & 255);
    }

    public static int bilinearInterpolate(float f, float f2, int i, int i2, int i3, int i4) {
        float f3 = 1.0f - f;
        float f4 = 1.0f - f2;
        return (((int) ((((((i >> 24) & 255) * f3) + (((i2 >> 24) & 255) * f)) * f4) + (((((i3 >> 24) & 255) * f3) + (((i4 >> 24) & 255) * f)) * f2))) << 24) | (((int) ((((((i >> 16) & 255) * f3) + (((i2 >> 16) & 255) * f)) * f4) + (((((i3 >> 16) & 255) * f3) + (((i4 >> 16) & 255) * f)) * f2))) << 16) | (((int) ((((((i >> 8) & 255) * f3) + (((i2 >> 8) & 255) * f)) * f4) + (((((i3 >> 8) & 255) * f3) + (((i4 >> 8) & 255) * f)) * f2))) << 8) | ((int) (((((i & 255) * f3) + ((i2 & 255) * f)) * f4) + ((((i3 & 255) * f3) + ((i4 & 255) * f)) * f2)));
    }

    public static int brightnessNTSC(int i) {
        return (int) ((((i >> 16) & 255) * 0.299f) + (((i >> 8) & 255) * 0.587f) + ((i & 255) * 0.114f));
    }

    public static float spline(float f, int i, float[] fArr) {
        int i2 = i - 3;
        if (i2 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        float fClamp = clamp(f, 0.0f, 1.0f) * i2;
        int i3 = (int) fClamp;
        if (i3 > i - 4) {
            i3 = i - 4;
        }
        float f2 = fClamp - i3;
        float f3 = fArr[i3];
        float f4 = fArr[i3 + 1];
        float f5 = fArr[i3 + 2];
        float f6 = fArr[i3 + 3];
        return (f6 * 0.0f) + (f3 * 0.0f) + (f4 * 1.0f) + (0.0f * f5) + (f2 * (((((((-0.5f) * f3) + (1.5f * f4) + ((-1.5f) * f5) + (0.5f * f6)) * f2) + (1.0f * f3) + ((-2.5f) * f4) + (2.0f * f5) + ((-0.5f) * f6)) * f2) + ((-0.5f) * f3) + (0.0f * f4) + (0.5f * f5) + (0.0f * f6)));
    }

    public static float spline(float f, int i, int[] iArr, int[] iArr2) {
        int i2;
        float f2;
        int i3 = i - 3;
        if (i3 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        int i4 = 0;
        while (i4 < i3 && iArr[i4 + 1] <= f) {
            i4++;
        }
        if (i4 > i - 3) {
            i4 = i - 3;
        }
        float f3 = (f - iArr[i4]) / (iArr[i4 + 1] - iArr[i4]);
        int i5 = i4 - 1;
        if (i5 < 0) {
            i2 = 0;
            f2 = 0.0f;
        } else {
            i2 = i5;
            f2 = f3;
        }
        float f4 = iArr2[i2];
        float f5 = iArr2[i2 + 1];
        float f6 = iArr2[i2 + 2];
        float f7 = iArr2[i2 + 3];
        return (f2 * (((((((-0.5f) * f4) + (1.5f * f5) + ((-1.5f) * f6) + (0.5f * f7)) * f2) + (1.0f * f4) + ((-2.5f) * f5) + (2.0f * f6) + ((-0.5f) * f7)) * f2) + ((-0.5f) * f4) + (0.0f * f5) + (0.5f * f6) + (0.0f * f7))) + (f7 * 0.0f) + (f4 * 0.0f) + (f5 * 1.0f) + (0.0f * f6);
    }

    public static int colorSpline(float f, int i, int[] iArr) {
        int i2 = i - 3;
        if (i2 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        float fClamp = clamp(f, 0.0f, 1.0f) * i2;
        int i3 = (int) fClamp;
        if (i3 > i - 4) {
            i3 = i - 4;
        }
        float f2 = fClamp - i3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i4;
            if (i6 < 4) {
                int i7 = i6 * 8;
                float f3 = (iArr[i3] >> i7) & 255;
                float f4 = (iArr[i3 + 1] >> i7) & 255;
                float f5 = (iArr[i3 + 2] >> i7) & 255;
                float f6 = (iArr[i3 + 3] >> i7) & 255;
                float f7 = ((-0.5f) * f3) + (0.0f * f4) + (0.5f * f5) + (0.0f * f6);
                int i8 = (int) ((f3 * 0.0f) + (f4 * 1.0f) + (0.0f * f5) + (0.0f * f6) + ((((((((-0.5f) * f3) + (1.5f * f4) + ((-1.5f) * f5) + (0.5f * f6)) * f2) + (1.0f * f3) + ((-2.5f) * f4) + (2.0f * f5) + ((-0.5f) * f6)) * f2) + f7) * f2));
                if (i8 < 0) {
                    i8 = 0;
                } else if (i8 > 255) {
                    i8 = 255;
                }
                i5 |= i8 << i7;
                i4 = i6 + 1;
            } else {
                return i5;
            }
        }
    }

    public static int colorSpline(int i, int i2, int[] iArr, int[] iArr2) {
        int i3;
        float f;
        int i4 = i2 - 3;
        if (i4 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        int i5 = 0;
        while (i5 < i4 && iArr[i5 + 1] <= i) {
            i5++;
        }
        if (i5 > i2 - 3) {
            i5 = i2 - 3;
        }
        float f2 = (i - iArr[i5]) / (iArr[i5 + 1] - iArr[i5]);
        int i6 = i5 - 1;
        if (i6 < 0) {
            i3 = 0;
            f = 0.0f;
        } else {
            i3 = i6;
            f = f2;
        }
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i7;
            if (i9 < 4) {
                int i10 = i9 * 8;
                float f3 = (iArr2[i3] >> i10) & 255;
                float f4 = (iArr2[i3 + 1] >> i10) & 255;
                float f5 = (iArr2[i3 + 2] >> i10) & 255;
                float f6 = (iArr2[i3 + 3] >> i10) & 255;
                float f7 = ((-0.5f) * f3) + (0.0f * f4) + (0.5f * f5) + (0.0f * f6);
                int i11 = (int) ((f3 * 0.0f) + (f4 * 1.0f) + (0.0f * f5) + (0.0f * f6) + ((((((((-0.5f) * f3) + (1.5f * f4) + ((-1.5f) * f5) + (0.5f * f6)) * f) + (1.0f * f3) + ((-2.5f) * f4) + (2.0f * f5) + ((-0.5f) * f6)) * f) + f7) * f));
                if (i11 < 0) {
                    i11 = 0;
                } else if (i11 > 255) {
                    i11 = 255;
                }
                i8 |= i11 << i10;
                i7 = i9 + 1;
            } else {
                return i8;
            }
        }
    }

    public static void resample(int[] iArr, int[] iArr2, int i, int i2, int i3, float[] fArr) {
        int i4;
        int i5;
        int i6;
        int i7;
        float f;
        float f2;
        float f3;
        int i8;
        int i9;
        int i10;
        int length = iArr.length;
        float[] fArr2 = new float[i + 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i; i12++) {
            while (fArr[i11 + 1] < i12) {
                i11++;
            }
            fArr2[i12] = i11 + ((i12 - fArr[i11]) / (fArr[i11 + 1] - fArr[i11]));
        }
        fArr2[i] = i;
        fArr2[i + 1] = i;
        float f4 = 1.0f;
        float f5 = fArr2[1];
        float f6 = 0.0f;
        int i13 = iArr[i2];
        int i14 = (i13 >> 24) & 255;
        int i15 = (i13 >> 16) & 255;
        int i16 = (i13 >> 8) & 255;
        int i17 = i13 & 255;
        int i18 = i2 + i3;
        int i19 = iArr[i18];
        int i20 = (i19 >> 24) & 255;
        int i21 = (i19 >> 16) & 255;
        int i22 = (i19 >> 8) & 255;
        int i23 = i19 & 255;
        int i24 = i18 + i3;
        int i25 = 1;
        int i26 = i2;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = f5;
        while (i25 <= i) {
            float f11 = (i14 * f4) + ((1.0f - f4) * i20);
            float f12 = (i15 * f4) + ((1.0f - f4) * i21);
            float f13 = (i16 * f4) + ((1.0f - f4) * i22);
            float f14 = (i17 * f4) + ((1.0f - f4) * i23);
            if (f4 < f5) {
                f2 = f9 + (f11 * f4);
                f3 = f8 + (f12 * f4);
                f = (f13 * f4) + f7;
                f6 += f14 * f4;
                f5 -= f4;
                f4 = 1.0f;
                if (i24 < length) {
                    i19 = iArr[i24];
                }
                i9 = i19 & 255;
                i24 += i3;
                i4 = (i19 >> 16) & 255;
                i5 = i23;
                i10 = (i19 >> 8) & 255;
                i6 = i21;
                i7 = i22;
                i8 = (i19 >> 24) & 255;
            } else {
                iArr2[i26] = ((int) Math.min((f6 + (f14 * f5)) / f10, 255.0f)) | (((int) Math.min((f7 + (f13 * f5)) / f10, 255.0f)) << 8) | (((int) Math.min((f8 + (f12 * f5)) / f10, 255.0f)) << 16) | (((int) Math.min((f9 + (f11 * f5)) / f10, 255.0f)) << 24);
                i26 += i3;
                f6 = 0.0f;
                float f15 = f4 - f5;
                float f16 = fArr2[i25 + 1] - fArr2[i25];
                f5 = f16;
                f4 = f15;
                f10 = f16;
                i25++;
                i4 = i21;
                i5 = i17;
                i6 = i15;
                i7 = i16;
                f = 0.0f;
                f2 = 0.0f;
                f3 = 0.0f;
                int i27 = i22;
                i8 = i20;
                i20 = i14;
                i9 = i23;
                i10 = i27;
            }
            float f17 = f;
            i17 = i5;
            f8 = f3;
            i16 = i7;
            i21 = i4;
            f7 = f17;
            int i28 = i9;
            i14 = i20;
            i20 = i8;
            i22 = i10;
            i23 = i28;
            int i29 = i6;
            f9 = f2;
            i15 = i29;
        }
    }

    public static void premultiply(int[] iArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            int i4 = (iArr[i] >> 24) & 255;
            float f = i4 * 0.003921569f;
            iArr[i] = ((int) ((r1 & 255) * f)) | (i4 << 24) | (((int) (((r1 >> 16) & 255) * f)) << 16) | (((int) (((r1 >> 8) & 255) * f)) << 8);
            i++;
        }
    }

    public static void unpremultiply(int[] iArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            int i4 = iArr[i];
            int i5 = (i4 >> 24) & 255;
            int i6 = (i4 >> 16) & 255;
            int i7 = (i4 >> 8) & 255;
            int i8 = i4 & 255;
            if (i5 != 0 && i5 != 255) {
                float f = 255.0f / i5;
                int i9 = (int) (i6 * f);
                int i10 = (int) (i7 * f);
                int i11 = (int) (i8 * f);
                if (i9 > 255) {
                    i9 = 255;
                }
                if (i10 > 255) {
                    i10 = 255;
                }
                if (i11 > 255) {
                    i11 = 255;
                }
                iArr[i] = i11 | (i10 << 8) | (i9 << 16) | (i5 << 24);
            }
            i++;
        }
    }
}
