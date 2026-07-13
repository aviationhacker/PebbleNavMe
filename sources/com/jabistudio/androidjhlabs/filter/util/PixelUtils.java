package com.jabistudio.androidjhlabs.filter.util;

import android.graphics.Color;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class PixelUtils {
    public static final int ADD = 4;
    public static final int ALPHA = 19;
    public static final int ALPHA_TO_GRAY = 20;
    public static final int AVERAGE = 13;
    public static final int CLEAR = 15;
    public static final int COLOR = 11;
    public static final int DIFFERENCE = 6;
    public static final int DISSOLVE = 17;
    public static final int DST_IN = 18;
    public static final int EXCHANGE = 16;
    public static final int HUE = 8;
    public static final int MAX = 3;
    public static final int MIN = 2;
    public static final int MULTIPLY = 7;
    public static final int NORMAL = 1;
    public static final int OVERLAY = 14;
    public static final int REPLACE = 0;
    public static final int SATURATION = 9;
    public static final int SCREEN = 12;
    public static final int SUBTRACT = 5;
    public static final int VALUE = 10;
    private static Random a = new Random();
    private static final float[] b = new float[3];
    private static final float[] c = new float[3];

    public static int clamp(int i) {
        if (i < 0) {
            return 0;
        }
        if (i > 255) {
            return 255;
        }
        return i;
    }

    public static int interpolate(int i, int i2, float f) {
        return clamp((int) (i + ((i2 - i) * f)));
    }

    public static int brightness(int i) {
        return ((((i >> 16) & 255) + ((i >> 8) & 255)) + (i & 255)) / 3;
    }

    public static boolean nearColors(int i, int i2, int i3) {
        return Math.abs(((i >> 16) & 255) - ((i2 >> 16) & 255)) <= i3 && Math.abs(((i >> 8) & 255) - ((i2 >> 8) & 255)) <= i3 && Math.abs((i & 255) - (i2 & 255)) <= i3;
    }

    public static int combinePixels(int i, int i2, int i3) {
        return combinePixels(i, i2, i3, 255);
    }

    public static int combinePixels(int i, int i2, int i3, int i4, int i5) {
        return ((i5 ^ (-1)) & i2) | combinePixels(i & i5, i2, i3, i4);
    }

    public static int combinePixels(int i, int i2, int i3, int i4) {
        if (i3 != 0) {
            int iClamp = (i >> 24) & 255;
            int iClamp2 = (i >> 16) & 255;
            int iClamp3 = (i >> 8) & 255;
            int iClamp4 = i & 255;
            int i5 = (i2 >> 24) & 255;
            int i6 = (i2 >> 16) & 255;
            int i7 = (i2 >> 8) & 255;
            int i8 = i2 & 255;
            switch (i3) {
                case 2:
                    iClamp2 = Math.min(iClamp2, i6);
                    iClamp3 = Math.min(iClamp3, i7);
                    iClamp4 = Math.min(iClamp4, i8);
                    break;
                case 3:
                    iClamp2 = Math.max(iClamp2, i6);
                    iClamp3 = Math.max(iClamp3, i7);
                    iClamp4 = Math.max(iClamp4, i8);
                    break;
                case 4:
                    iClamp2 = clamp(iClamp2 + i6);
                    iClamp3 = clamp(iClamp3 + i7);
                    iClamp4 = clamp(iClamp4 + i8);
                    break;
                case 5:
                    iClamp2 = clamp(i6 - iClamp2);
                    iClamp3 = clamp(i7 - iClamp3);
                    iClamp4 = clamp(i8 - iClamp4);
                    break;
                case 6:
                    iClamp2 = clamp(Math.abs(iClamp2 - i6));
                    iClamp3 = clamp(Math.abs(iClamp3 - i7));
                    iClamp4 = clamp(Math.abs(iClamp4 - i8));
                    break;
                case 7:
                    iClamp2 = clamp((iClamp2 * i6) / 255);
                    iClamp3 = clamp((iClamp3 * i7) / 255);
                    iClamp4 = clamp((iClamp4 * i8) / 255);
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                    Color.RGBToHSV(iClamp2, iClamp3, iClamp4, b);
                    Color.RGBToHSV(iClamp2, iClamp3, iClamp4, c);
                    switch (i3) {
                        case 8:
                            c[0] = b[0];
                            break;
                        case 9:
                            c[1] = b[1];
                            break;
                        case 10:
                            c[2] = b[2];
                            break;
                        case 11:
                            c[0] = b[0];
                            c[1] = b[1];
                            break;
                    }
                    int iHSVToColor = Color.HSVToColor(c);
                    iClamp2 = (iHSVToColor >> 16) & 255;
                    iClamp3 = (iHSVToColor >> 8) & 255;
                    iClamp4 = iHSVToColor & 255;
                    break;
                case 12:
                    iClamp2 = 255 - (((255 - iClamp2) * (255 - i6)) / 255);
                    iClamp3 = 255 - (((255 - iClamp3) * (255 - i7)) / 255);
                    iClamp4 = 255 - (((255 - iClamp4) * (255 - i8)) / 255);
                    break;
                case 13:
                    iClamp2 = (iClamp2 + i6) / 2;
                    iClamp3 = (iClamp3 + i7) / 2;
                    iClamp4 = (iClamp4 + i8) / 2;
                    break;
                case 14:
                    iClamp2 = (((255 - iClamp2) * ((iClamp2 * i6) / 255)) + ((255 - (((255 - iClamp2) * (255 - i6)) / 255)) * iClamp2)) / 255;
                    iClamp3 = (((255 - iClamp3) * ((iClamp3 * i7) / 255)) + ((255 - (((255 - iClamp3) * (255 - i7)) / 255)) * iClamp3)) / 255;
                    iClamp4 = (((255 - iClamp4) * ((iClamp4 * i8) / 255)) + ((255 - (((255 - iClamp4) * (255 - i8)) / 255)) * iClamp4)) / 255;
                    break;
                case 15:
                    iClamp4 = 255;
                    iClamp3 = 255;
                    iClamp2 = 255;
                    break;
                case 17:
                    if ((a.nextInt() & 255) <= iClamp) {
                        iClamp4 = i8;
                        iClamp3 = i7;
                        iClamp2 = i6;
                    }
                    break;
                case 18:
                    return (clamp((i6 * iClamp) / 255) << 16) | (clamp((iClamp * i5) / 255) << 24) | (clamp((i7 * iClamp) / 255) << 8) | clamp((i8 * iClamp) / 255);
                case 19:
                    return (((iClamp * i5) / 255) << 24) | (i6 << 16) | (i7 << 8) | i8;
                case 20:
                    int i9 = 255 - iClamp;
                    return (iClamp << 24) | (i9 << 16) | (i9 << 8) | i9;
            }
            if (i4 != 255 || iClamp != 255) {
                int i10 = (iClamp * i4) / 255;
                int i11 = (i5 * (255 - i10)) / 255;
                iClamp2 = clamp(((iClamp2 * i10) + (i6 * i11)) / 255);
                iClamp3 = clamp(((iClamp3 * i10) + (i7 * i11)) / 255);
                iClamp4 = clamp(((iClamp4 * i10) + (i8 * i11)) / 255);
                iClamp = clamp(i10 + i11);
            }
            return (iClamp3 << 8) | (iClamp2 << 16) | (iClamp << 24) | iClamp4;
        }
        return i;
    }

    public static void getRGB(int[] iArr, int i, int i2, int i3, int i4, int i5, int[] iArr2) {
        int i6 = 0;
        int i7 = i2;
        while (i7 < i2 + i4) {
            int i8 = i6;
            for (int i9 = i; i9 < i + i3; i9++) {
                iArr2[i8] = iArr[(i7 * i5) + i9];
                i8++;
            }
            i7++;
            i6 = i8;
        }
    }

    public static void setRGB(int[] iArr, int i, int i2, int i3, int i4, int i5, int[] iArr2) {
        int i6 = 0;
        int i7 = i2;
        while (i7 < i2 + i4) {
            int i8 = i6;
            for (int i9 = i; i9 < i + i3; i9++) {
                iArr[(i7 * i5) + i9] = iArr2[i8];
                i8++;
            }
            i7++;
            i6 = i8;
        }
    }

    public static void setLineRGB(int[] iArr, int i, int i2, int[] iArr2) {
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[(i2 * i) + i3] = iArr2[i3];
        }
    }

    public static void getLineRGB(int[] iArr, int i, int i2, int[] iArr2) {
        for (int i3 = 0; i3 < i2; i3++) {
            iArr2[i3] = iArr[(i2 * i) + i3];
        }
    }
}
