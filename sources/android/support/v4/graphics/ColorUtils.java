package android.support.v4.graphics;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public class ColorUtils {
    private ColorUtils() {
    }

    public static int compositeColors(int i, int i2) {
        int iAlpha = Color.alpha(i2);
        int iAlpha2 = Color.alpha(i);
        int iA = a(iAlpha2, iAlpha);
        return Color.argb(iA, a(Color.red(i), iAlpha2, Color.red(i2), iAlpha, iA), a(Color.green(i), iAlpha2, Color.green(i2), iAlpha, iA), a(Color.blue(i), iAlpha2, Color.blue(i2), iAlpha, iA));
    }

    private static int a(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    private static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    public static double calculateLuminance(int i) {
        double dRed = ((double) Color.red(i)) / 255.0d;
        double dPow = dRed < 0.03928d ? dRed / 12.92d : Math.pow((dRed + 0.055d) / 1.055d, 2.4d);
        double dGreen = ((double) Color.green(i)) / 255.0d;
        double dPow2 = dGreen < 0.03928d ? dGreen / 12.92d : Math.pow((dGreen + 0.055d) / 1.055d, 2.4d);
        double dBlue = ((double) Color.blue(i)) / 255.0d;
        return (dPow * 0.2126d) + (dPow2 * 0.7152d) + (0.0722d * (dBlue < 0.03928d ? dBlue / 12.92d : Math.pow((dBlue + 0.055d) / 1.055d, 2.4d)));
    }

    public static double calculateContrast(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent");
        }
        if (Color.alpha(i) < 255) {
            i = compositeColors(i, i2);
        }
        double dCalculateLuminance = calculateLuminance(i) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(i2) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    public static int calculateMinimumAlpha(int i, int i2, float f) {
        int i3 = 0;
        int i4 = 255;
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent");
        }
        if (calculateContrast(setAlphaComponent(i, 255), i2) < f) {
            return -1;
        }
        int i5 = 0;
        while (i5 <= 10 && i4 - i3 > 10) {
            int i6 = (i3 + i4) / 2;
            if (calculateContrast(setAlphaComponent(i, i6), i2) >= f) {
                i4 = i6;
                i6 = i3;
            }
            i5++;
            i3 = i6;
        }
        return i4;
    }

    public static void RGBToHSL(int i, int i2, int i3, float[] fArr) {
        float f;
        float fAbs;
        float f2 = i / 255.0f;
        float f3 = i2 / 255.0f;
        float f4 = i3 / 255.0f;
        float fMax = Math.max(f2, Math.max(f3, f4));
        float fMin = Math.min(f2, Math.min(f3, f4));
        float f5 = fMax - fMin;
        float f6 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            fAbs = 0.0f;
            f = 0.0f;
        } else {
            if (fMax == f2) {
                f = ((f3 - f4) / f5) % 6.0f;
            } else if (fMax == f3) {
                f = ((f4 - f2) / f5) + 2.0f;
            } else {
                f = ((f2 - f3) / f5) + 4.0f;
            }
            fAbs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        fArr[0] = a(f7, 0.0f, 360.0f);
        fArr[1] = a(fAbs, 0.0f, 1.0f);
        fArr[2] = a(f6, 0.0f, 1.0f);
    }

    public static void colorToHSL(int i, float[] fArr) {
        RGBToHSL(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    public static int HSLToColor(float[] fArr) {
        int iRound;
        int iRound2;
        int iRound3;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float fAbs = (1.0f - Math.abs((2.0f * f3) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * fAbs);
        float fAbs2 = fAbs * (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f));
        switch (((int) f) / 60) {
            case 0:
                iRound = Math.round((fAbs + f4) * 255.0f);
                iRound2 = Math.round((fAbs2 + f4) * 255.0f);
                iRound3 = Math.round(255.0f * f4);
                break;
            case 1:
                iRound = Math.round((fAbs2 + f4) * 255.0f);
                iRound2 = Math.round((fAbs + f4) * 255.0f);
                iRound3 = Math.round(255.0f * f4);
                break;
            case 2:
                iRound = Math.round(255.0f * f4);
                iRound2 = Math.round((fAbs + f4) * 255.0f);
                iRound3 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            case 3:
                iRound = Math.round(255.0f * f4);
                iRound2 = Math.round((fAbs2 + f4) * 255.0f);
                iRound3 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 4:
                iRound = Math.round((fAbs2 + f4) * 255.0f);
                iRound2 = Math.round(255.0f * f4);
                iRound3 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                iRound = Math.round((fAbs + f4) * 255.0f);
                iRound2 = Math.round(255.0f * f4);
                iRound3 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            default:
                iRound3 = 0;
                iRound2 = 0;
                iRound = 0;
                break;
        }
        return Color.rgb(a(iRound, 0, 255), a(iRound2, 0, 255), a(iRound3, 0, 255));
    }

    public static int setAlphaComponent(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (16777215 & i) | (i2 << 24);
    }

    private static float a(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }
}
