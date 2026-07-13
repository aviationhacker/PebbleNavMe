package Catalano.Imaging.Tools;

/* JADX INFO: loaded from: classes.dex */
public class ColorConverter {
    public static float[] CIE2_A = {109.85f, 100.0f, 35.585f};
    public static float[] CIE2_C = {98.074f, 100.0f, 118.232f};
    public static float[] CIE2_D50 = {96.422f, 100.0f, 82.521f};
    public static float[] CIE2_D55 = {95.682f, 100.0f, 92.149f};
    public static float[] CIE2_D65 = {95.047f, 100.0f, 108.883f};
    public static float[] CIE2_D75 = {94.972f, 100.0f, 122.638f};
    public static float[] CIE2_F2 = {99.187f, 100.0f, 67.395f};
    public static float[] CIE2_F7 = {95.044f, 100.0f, 108.755f};
    public static float[] CIE2_F11 = {100.966f, 100.0f, 64.37f};
    public static float[] CIE10_A = {111.144f, 100.0f, 35.2f};
    public static float[] CIE10_C = {97.285f, 100.0f, 116.145f};
    public static float[] CIE10_D50 = {96.72f, 100.0f, 81.427f};
    public static float[] CIE10_D55 = {95.799f, 100.0f, 90.926f};
    public static float[] CIE10_D65 = {94.811f, 100.0f, 107.304f};
    public static float[] CIE10_D75 = {94.416f, 100.0f, 120.641f};
    public static float[] CIE10_F2 = {103.28f, 100.0f, 69.026f};
    public static float[] CIE10_F7 = {95.792f, 100.0f, 107.687f};
    public static float[] CIE10_F11 = {103.866f, 100.0f, 65.627f};

    public enum YCbCrColorSpace {
        ITU_BT_601,
        ITU_BT_709_HDTV
    }

    private ColorConverter() {
    }

    public static float[] RGBtoCMYK(int i, int i2, int i3) {
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        float fMax = 1.0f - Math.max(f, Math.max(f2, f3));
        return new float[]{((1.0f - f) - fMax) / (1.0f - fMax), ((1.0f - f2) - fMax) / (1.0f - fMax), ((1.0f - f3) - fMax) / (1.0f - fMax), fMax};
    }

    public static int[] CMYKtoRGB(float f, float f2, float f3, float f4) {
        return new int[]{(int) ((1.0f - f) * 255.0f * (1.0f - f4)), (int) ((1.0f - f2) * 255.0f * (1.0f - f4)), (int) ((1.0f - f3) * 255.0f * (1.0f - f4))};
    }

    public static float[] RGBtoYUV(int i, int i2, int i3) {
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        return new float[]{(float) ((0.299d * ((double) f)) + (0.587d * ((double) f2)) + (0.114d * ((double) f3))), (float) ((((-0.14713d) * ((double) f)) - (0.28886d * ((double) f2))) + (0.436d * ((double) f3))), (float) (((0.615d * ((double) f)) - (((double) f2) * 0.51499d)) - (0.10001d * ((double) f3)))};
    }

    public static int[] YUVtoRGB(float f, float f2, float f3) {
        return new int[]{(int) ((((double) f) + (0.0d * ((double) f2)) + (1.14d * ((double) f3))) * 255.0d), (int) (((((double) f) - (0.396d * ((double) f2))) - (0.581d * ((double) f3))) * 255.0d), (int) ((((double) f) + (2.029d * ((double) f2)) + (0.0d * ((double) f3))) * 255.0d)};
    }

    public static float[] RGBtoYIQ(int i, int i2, int i3) {
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        return new float[]{(float) ((0.299d * ((double) f)) + (0.587d * ((double) f2)) + (0.114d * ((double) f3))), (float) (((0.596d * ((double) f)) - (0.275d * ((double) f2))) - (0.322d * ((double) f3))), (float) ((((double) f3) * 0.311d) + ((0.212d * ((double) f)) - (0.523d * ((double) f2))))};
    }

    public static int[] YIQtoRGB(double d, double d2, double d3) {
        return new int[]{Math.max(0, Math.min(255, (int) (((0.956d * d2) + d + (0.621d * d3)) * 255.0d))), Math.max(0, Math.min(255, (int) (((d - (0.272d * d2)) - (0.647d * d3)) * 255.0d))), Math.max(0, Math.min(255, (int) (((d - (1.105d * d2)) + (1.702d * d3)) * 255.0d)))};
    }

    public static float[] RGBtoYCbCr(int i, int i2, int i3, YCbCrColorSpace yCbCrColorSpace) {
        float f;
        float f2;
        float f3;
        float f4 = i / 255.0f;
        float f5 = i2 / 255.0f;
        float f6 = i3 / 255.0f;
        float[] fArr = new float[3];
        if (yCbCrColorSpace == YCbCrColorSpace.ITU_BT_601) {
            f = (float) ((0.299d * ((double) f4)) + (0.587d * ((double) f5)) + (0.114d * ((double) f6)));
            f2 = (float) ((((-0.169d) * ((double) f4)) - (0.331d * ((double) f5))) + (0.5d * ((double) f6)));
            f3 = (float) (((0.5d * ((double) f4)) - (0.419d * ((double) f5))) - (0.081d * ((double) f6)));
        } else {
            f = (float) ((0.2215d * ((double) f4)) + (0.7154d * ((double) f5)) + (0.0721d * ((double) f6)));
            f2 = (float) ((((-0.1145d) * ((double) f4)) - (0.3855d * ((double) f5))) + (0.5d * ((double) f6)));
            f3 = (float) (((0.5016d * ((double) f4)) - (0.4556d * ((double) f5))) - (0.0459d * ((double) f6)));
        }
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        return fArr;
    }

    public static int[] YCbCrtoRGB(float f, float f2, float f3, YCbCrColorSpace yCbCrColorSpace) {
        float f4;
        float f5;
        float f6;
        int[] iArr = new int[3];
        if (yCbCrColorSpace == YCbCrColorSpace.ITU_BT_601) {
            f4 = ((float) (((double) f) + (0.0d * ((double) f2)) + (1.403d * ((double) f3)))) * 255.0f;
            f5 = 255.0f * ((float) ((((double) f) - (0.344d * ((double) f2))) - (0.714d * ((double) f3))));
            f6 = ((float) (((double) f) + (1.773d * ((double) f2)) + (0.0d * ((double) f3)))) * 255.0f;
        } else {
            f4 = ((float) (((double) f) + (0.0d * ((double) f2)) + (1.5701d * ((double) f3)))) * 255.0f;
            f5 = 255.0f * ((float) ((((double) f) - (0.187d * ((double) f2))) - (0.4664d * ((double) f3))));
            f6 = ((float) (((double) f) + (1.8556d * ((double) f2)) + (0.0d * ((double) f3)))) * 255.0f;
        }
        iArr[0] = (int) f4;
        iArr[1] = (int) f5;
        iArr[2] = (int) f6;
        return iArr;
    }

    public static double[] RGChromaticity(int i, int i2, int i3) {
        double[] dArr = new double[5];
        double d = i + i2 + i3;
        dArr[0] = ((double) i) / d;
        dArr[1] = ((double) i2) / d;
        dArr[2] = (1.0d - dArr[0]) - dArr[1];
        double d2 = dArr[0] - 0.333d;
        double d3 = dArr[1] - 0.333d;
        dArr[3] = Math.sqrt((d2 * d2) + (d3 * d3));
        dArr[4] = Math.atan(d2 / d3);
        return dArr;
    }

    public static float[] RGBtoHSV(int i, int i2, int i3) {
        float[] fArr = new float[3];
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        float fMax = Math.max(f, Math.max(f2, f3));
        float fMin = Math.min(f, Math.min(f2, f3));
        float f4 = fMax - fMin;
        if (fMax == fMin) {
            fArr[0] = 0.0f;
        } else if (fMax == f) {
            fArr[0] = ((f2 - f3) / f4) * 60.0f;
        } else if (fMax == f2) {
            fArr[0] = (((f3 - f) / f4) + 2.0f) * 60.0f;
        } else if (fMax == f3) {
            fArr[0] = (((f - f2) / f4) + 4.0f) * 60.0f;
        }
        if (f4 == 0.0f) {
            fArr[1] = 0.0f;
        } else {
            fArr[1] = f4 / fMax;
        }
        fArr[2] = fMax;
        return fArr;
    }

    public static int[] HSVtoRGB(float f, float f2, float f3) {
        int[] iArr = new int[3];
        float fFloor = ((float) Math.floor(((double) f) / 60.0d)) % 6.0f;
        float fFloor2 = (float) ((((double) f) / 60.0d) - Math.floor(((double) f) / 60.0d));
        float f4 = (float) (((double) f3) * (1.0d - ((double) f2)));
        float f5 = (float) (((double) f3) * (1.0d - ((double) (fFloor2 * f2))));
        float f6 = (float) (((double) f3) * (1.0d - ((1.0d - ((double) fFloor2)) * ((double) f2))));
        if (fFloor == 0.0f) {
            iArr[0] = (int) (255.0f * f3);
            iArr[1] = (int) (f6 * 255.0f);
            iArr[2] = (int) (255.0f * f4);
        } else if (fFloor == 1.0f) {
            iArr[0] = (int) (255.0f * f5);
            iArr[1] = (int) (255.0f * f3);
            iArr[2] = (int) (255.0f * f4);
        } else if (fFloor == 2.0f) {
            iArr[0] = (int) (f4 * 255.0f);
            iArr[1] = (int) (255.0f * f3);
            iArr[2] = (int) (f6 * 255.0f);
        } else if (fFloor == 3.0f) {
            iArr[0] = (int) (255.0f * f4);
            iArr[1] = (int) (255.0f * f3);
            iArr[2] = (int) (255.0f * f5);
        } else if (fFloor == 4.0f) {
            iArr[0] = (int) (f6 * 255.0f);
            iArr[1] = (int) (255.0f * f3);
            iArr[2] = (int) (255.0f * f4);
        } else if (fFloor == 5.0f) {
            iArr[0] = (int) (255.0f * f3);
            iArr[1] = (int) (255.0f * f4);
            iArr[2] = (int) (255.0f * f5);
        }
        return iArr;
    }

    public static float[] RGBtoYCC(int i, int i2, int i3) {
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        return new float[]{(0.213f * f) + (0.419f * f2) + (0.081f * f3), (((-0.131f) * f) - (f2 * 0.256f)) + (0.387f * f3) + 0.612f, (((0.373f * f) - (f * 0.312f)) - (f3 * 0.061f)) + 0.537f};
    }

    public static int[] YCCtoRGB(float f, float f2, float f3) {
        return new int[]{(int) (((0.981f * f) + (1.315f * (f3 - 0.537f))) * 255.0f), (int) ((((0.981f * f) - (0.311f * (f2 - 0.612f))) - (0.669f * (f3 - 0.537f))) * 255.0f), (int) (((0.981f * f) + (1.601f * (f2 - 0.612f))) * 255.0f)};
    }

    public static float[] RGBtoYCoCg(int i, int i2, int i3) {
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        return new float[]{(f / 4.0f) + (f2 / 2.0f) + (f3 / 4.0f), (f / 2.0f) - (f3 / 2.0f), (((-f) / 4.0f) + (f2 / 2.0f)) - (f3 / 4.0f)};
    }

    public static int[] YCoCgtoRGB(float f, float f2, float f3) {
        return new int[]{(int) (((f + f2) - f3) * 255.0f), (int) ((f + f3) * 255.0f), (int) (((f - f2) - f3) * 255.0f)};
    }

    public static float[] RGBtoXYZ(int i, int i2, int i3) {
        float fPow;
        float fPow2;
        float fPow3;
        float[] fArr = new float[3];
        float f = i / 255.0f;
        float f2 = i2 / 255.0f;
        float f3 = i3 / 255.0f;
        if (f > 0.04045d) {
            fPow = (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
        } else {
            fPow = f / 12.92f;
        }
        if (f2 > 0.04045d) {
            fPow2 = (float) Math.pow((0.055f + f2) / 1.055f, 2.4000000953674316d);
        } else {
            fPow2 = f2 / 12.92f;
        }
        if (f3 > 0.04045d) {
            fPow3 = (float) Math.pow((0.055f + f3) / 1.055f, 2.4000000953674316d);
        } else {
            fPow3 = f3 / 12.92f;
        }
        float f4 = fPow * 100.0f;
        float f5 = fPow2 * 100.0f;
        float f6 = fPow3 * 100.0f;
        float f7 = (0.412453f * f4) + (0.35758f * f5) + (0.180423f * f6);
        float f8 = (0.212671f * f4) + (0.71516f * f5) + (0.072169f * f6);
        fArr[0] = f7;
        fArr[1] = f8;
        fArr[2] = (f6 * 0.950227f) + (f5 * 0.119193f) + (f4 * 0.019334f);
        return fArr;
    }

    public static int[] XYZtoRGB(float f, float f2, float f3) {
        float fPow;
        float fPow2;
        float fPow3;
        int[] iArr = new int[3];
        float f4 = f / 100.0f;
        float f5 = f2 / 100.0f;
        float f6 = f3 / 100.0f;
        float f7 = ((3.240479f * f4) - (1.53715f * f5)) - (0.498535f * f6);
        float f8 = ((-0.969256f) * f4) + (1.875991f * f5) + (0.041556f * f6);
        float f9 = ((f4 * 0.055648f) - (f5 * 0.204043f)) + (1.057311f * f6);
        if (f7 > 0.0031308d) {
            fPow = (1.055f * ((float) Math.pow(f7, 0.41659998893737793d))) - 0.055f;
        } else {
            fPow = 12.92f * f7;
        }
        if (f8 > 0.0031308d) {
            fPow2 = (1.055f * ((float) Math.pow(f8, 0.41659998893737793d))) - 0.055f;
        } else {
            fPow2 = 12.92f * f8;
        }
        if (f9 > 0.0031308d) {
            fPow3 = (1.055f * ((float) Math.pow(f9, 0.41659998893737793d))) - 0.055f;
        } else {
            fPow3 = 12.92f * f9;
        }
        iArr[0] = (int) (fPow * 255.0f);
        iArr[1] = (int) (fPow2 * 255.0f);
        iArr[2] = (int) (fPow3 * 255.0f);
        return iArr;
    }

    public static float[] XYZtoHunterLAB(float f, float f2, float f3) {
        float fSqrt = (float) Math.sqrt(f2);
        return new float[]{10.0f * fSqrt, 17.5f * (((1.02f * f) - f2) / fSqrt), ((f2 - (0.847f * f3)) / fSqrt) * 7.0f};
    }

    public static float[] HunterLABtoXYZ(float f, float f2, float f3) {
        float f4 = f / 10.0f;
        float f5 = f4 * f4;
        return new float[]{((((f2 / 17.5f) * f) / 10.0f) + f5) / 1.02f, f5, (-((((f3 / 7.0f) * f) / 10.0f) - f5)) / 0.847f};
    }

    public static float[] RGBtoHunterLAB(int i, int i2, int i3) {
        float[] fArrRGBtoXYZ = RGBtoXYZ(i, i2, i3);
        return XYZtoHunterLAB(fArrRGBtoXYZ[0], fArrRGBtoXYZ[1], fArrRGBtoXYZ[2]);
    }

    public static int[] HunterLABtoRGB(float f, float f2, float f3) {
        float[] fArrHunterLABtoXYZ = HunterLABtoXYZ(f, f2, f3);
        return XYZtoRGB(fArrHunterLABtoXYZ[0], fArrHunterLABtoXYZ[1], fArrHunterLABtoXYZ[2]);
    }

    public static float[] RGBtoHLS(int i, int i2, int i3) {
        float f;
        float f2;
        float f3;
        float[] fArr = new float[3];
        float f4 = i / 255.0f;
        float f5 = i2 / 255.0f;
        float f6 = i3 / 255.0f;
        float fMax = Math.max(f4, Math.max(f5, f6));
        float fMin = Math.min(f4, Math.min(f5, f6));
        float f7 = fMax - fMin;
        float f8 = (fMax + fMin) / 2.0f;
        if (f7 == 0.0f) {
            f2 = 0.0f;
            f3 = 0.0f;
        } else {
            float f9 = ((double) f8) <= 0.5d ? f7 / (fMin + fMax) : f7 / ((2.0f - fMax) - fMin);
            if (f4 == fMax) {
                f = ((f5 - f6) / 6.0f) / f7;
            } else if (f5 == fMax) {
                f = (((f6 - f4) / 6.0f) / f7) + 0.33333334f;
            } else {
                f = (((f4 - f5) / 6.0f) / f7) + 0.6666667f;
            }
            if (f < 0.0f) {
                f += 1.0f;
            }
            if (f > 1.0f) {
                f -= 1.0f;
            }
            float f10 = f9;
            f2 = (int) (f * 360.0f);
            f3 = f10;
        }
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f8;
        return fArr;
    }

    public static int[] HSLtoRGB(float f, float f2, float f3) {
        float fA;
        float fA2;
        float fA3;
        int[] iArr = new int[3];
        if (f2 == 0.0f) {
            fA3 = (int) (f3 * 255.0f);
            fA2 = fA3;
            fA = fA3;
        } else {
            float f4 = f / 360.0f;
            float f5 = ((double) f3) < 0.5d ? (1.0f + f2) * f3 : (f3 + f2) - (f3 * f2);
            float f6 = (2.0f * f3) - f5;
            fA = (int) (a(f6, f5, f4 + 0.33333334f) * 255.0f);
            fA2 = (int) (a(f6, f5, f4) * 255.0f);
            fA3 = (int) (a(f6, f5, f4 - 0.33333334f) * 255.0f);
        }
        iArr[0] = (int) fA;
        iArr[1] = (int) fA2;
        iArr[2] = (int) fA3;
        return iArr;
    }

    private static float a(float f, float f2, float f3) {
        float f4 = f3 < 0.0f ? f3 + 1.0f : f3;
        if (f4 > 1.0f) {
            f4 -= 1.0f;
        }
        if (6.0f * f4 < 1.0f) {
            return f + (f4 * (f2 - f) * 6.0f);
        }
        if (2.0f * f4 < 1.0f) {
            return f2;
        }
        if (3.0f * f4 < 2.0f) {
            return f + ((0.6666667f - f4) * (f2 - f) * 6.0f);
        }
        return f;
    }

    public static float[] RGBtoLAB(int i, int i2, int i3, float[] fArr) {
        float[] fArrRGBtoXYZ = RGBtoXYZ(i, i2, i3);
        return XYZtoLAB(fArrRGBtoXYZ[0], fArrRGBtoXYZ[1], fArrRGBtoXYZ[2], fArr);
    }

    public static int[] LABtoRGB(float f, float f2, float f3, float[] fArr) {
        float[] fArrLABtoXYZ = LABtoXYZ(f, f2, f3, fArr);
        return XYZtoRGB(fArrLABtoXYZ[0], fArrLABtoXYZ[1], fArrLABtoXYZ[2]);
    }

    public static float[] XYZtoLAB(float f, float f2, float f3, float[] fArr) {
        float fPow;
        float fPow2;
        float fPow3;
        float[] fArr2 = new float[3];
        float f4 = f / fArr[0];
        float f5 = f2 / fArr[1];
        float f6 = f3 / fArr[2];
        if (f4 > 0.008856d) {
            fPow = (float) Math.pow(f4, 0.33000001311302185d);
        } else {
            fPow = (f4 * 7.787f) + 0.13793103f;
        }
        if (f5 > 0.008856d) {
            fPow2 = (float) Math.pow(f5, 0.33000001311302185d);
        } else {
            fPow2 = (7.787f * f5) + 0.13793103f;
        }
        if (f6 > 0.008856d) {
            fPow3 = (float) Math.pow(f6, 0.33000001311302185d);
        } else {
            fPow3 = (7.787f * f6) + 0.13793103f;
        }
        fArr2[0] = (116.0f * fPow2) - 16.0f;
        fArr2[1] = (fPow - fPow2) * 500.0f;
        fArr2[2] = (fPow2 - fPow3) * 200.0f;
        return fArr2;
    }

    public static float[] LABtoXYZ(float f, float f2, float f3, float[] fArr) {
        float fPow;
        float fPow2;
        float fPow3;
        float[] fArr2 = new float[3];
        float f4 = (16.0f + f) / 116.0f;
        float f5 = (f2 / 500.0f) + f4;
        float f6 = f4 - (f3 / 200.0f);
        if (Math.pow(f4, 3.0d) > 0.008856d) {
            fPow = (float) Math.pow(f4, 3.0d);
        } else {
            fPow = (float) (((double) (f4 - 0.0f)) / 7.787d);
        }
        if (Math.pow(f5, 3.0d) > 0.008856d) {
            fPow2 = (float) Math.pow(f5, 3.0d);
        } else {
            fPow2 = (float) (((double) (f5 - 0.0f)) / 7.787d);
        }
        if (Math.pow(f6, 3.0d) > 0.008856d) {
            fPow3 = (float) Math.pow(f6, 3.0d);
        } else {
            fPow3 = (float) (((double) (f6 - 0.0f)) / 7.787d);
        }
        fArr2[0] = fPow2 * fArr[0];
        fArr2[1] = fPow * fArr[1];
        fArr2[2] = fArr[2] * fPow3;
        return fArr2;
    }

    public static float[] RGBtoC1C2C3(int i, int i2, int i3) {
        return new float[]{(float) Math.atan(i / Math.max(i2, i3)), (float) Math.atan(i2 / Math.max(i, i3)), (float) Math.atan(i3 / Math.max(i, i2))};
    }

    public static float[] RGBtoO1O2(int i, int i2, int i3) {
        return new float[]{(i - i2) / 2.0f, ((i + i2) / 4.0f) - (i3 / 2.0f)};
    }

    public static float RGBtoGrayscale(int i, int i2, int i3) {
        return (i * 0.2125f) + (i2 * 0.7154f) + (i3 * 0.0721f);
    }
}
