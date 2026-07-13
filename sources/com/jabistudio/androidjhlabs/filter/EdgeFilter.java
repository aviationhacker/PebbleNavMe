package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class EdgeFilter extends WholeImageFilter {
    public static final float R2 = (float) Math.sqrt(2.0d);
    public static final float[] ROBERTS_V = {0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    public static final float[] ROBERTS_H = {-1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    public static final float[] PREWITT_V = {-1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f};
    public static final float[] PREWITT_H = {-1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] SOBEL_V = {-1.0f, 0.0f, 1.0f, -2.0f, 0.0f, 2.0f, -1.0f, 0.0f, 1.0f};
    public static float[] SOBEL_H = {-1.0f, -2.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 2.0f, 1.0f};
    public static final float[] FREI_CHEN_V = {-1.0f, 0.0f, 1.0f, -R2, 0.0f, R2, -1.0f, 0.0f, 1.0f};
    public static float[] FREI_CHEN_H = {-1.0f, -R2, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, R2, 1.0f};
    protected float[] vEdgeMatrix = SOBEL_V;
    protected float[] hEdgeMatrix = SOBEL_H;

    public void setVEdgeMatrix(float[] fArr) {
        this.vEdgeMatrix = fArr;
    }

    public float[] getVEdgeMatrix() {
        return this.vEdgeMatrix;
    }

    public void setHEdgeMatrix(float[] fArr) {
        this.hEdgeMatrix = fArr;
    }

    public float[] getHEdgeMatrix() {
        return this.hEdgeMatrix;
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4 = 0;
        int[] iArr2 = new int[i * i2];
        int i5 = 0;
        while (true) {
            int i6 = i5;
            int i7 = i4;
            if (i6 < i2) {
                int i8 = 0;
                while (true) {
                    i4 = i7;
                    if (i8 < i) {
                        int i9 = 0;
                        int i10 = 0;
                        int i11 = 0;
                        int i12 = 0;
                        int i13 = 0;
                        int i14 = 0;
                        int i15 = iArr[(i6 * i) + i8] & ViewCompat.MEASURED_STATE_MASK;
                        int i16 = -1;
                        while (i16 <= 1) {
                            int i17 = i6 + i16;
                            if (i17 >= 0 && i17 < i2) {
                                i3 = i17 * i;
                            } else {
                                i3 = i6 * i;
                            }
                            int i18 = ((i16 + 1) * 3) + 1;
                            int i19 = -1;
                            int i20 = i9;
                            int i21 = i10;
                            int i22 = i11;
                            int i23 = i12;
                            int i24 = i13;
                            int i25 = i14;
                            while (true) {
                                int i26 = i19;
                                if (i26 <= 1) {
                                    int i27 = i8 + i26;
                                    if (i27 < 0 || i27 >= i) {
                                        i27 = i8;
                                    }
                                    int i28 = iArr[i27 + i3];
                                    float f = this.hEdgeMatrix[i18 + i26];
                                    float f2 = this.vEdgeMatrix[i18 + i26];
                                    int i29 = (16711680 & i28) >> 16;
                                    int i30 = (65280 & i28) >> 8;
                                    int i31 = i28 & 255;
                                    i20 += (int) (i29 * f);
                                    i21 += (int) (i30 * f);
                                    i22 += (int) (f * i31);
                                    i23 += (int) (i29 * f2);
                                    i24 += (int) (i30 * f2);
                                    i25 += (int) (i31 * f2);
                                    i19 = i26 + 1;
                                }
                            }
                            i16++;
                            i14 = i25;
                            i13 = i24;
                            i12 = i23;
                            i11 = i22;
                            i10 = i21;
                            i9 = i20;
                        }
                        int iSqrt = (int) (Math.sqrt((i9 * i9) + (i12 * i12)) / 1.8d);
                        int iSqrt2 = (int) (Math.sqrt((i10 * i10) + (i13 * i13)) / 1.8d);
                        int iSqrt3 = (int) (Math.sqrt((i14 * i14) + (i11 * i11)) / 1.8d);
                        int iClamp = PixelUtils.clamp(iSqrt);
                        i7 = i4 + 1;
                        iArr2[i4] = (PixelUtils.clamp(iSqrt2) << 8) | (iClamp << 16) | i15 | PixelUtils.clamp(iSqrt3);
                        i8++;
                    }
                }
                i5 = i6 + 1;
            } else {
                return iArr2;
            }
        }
    }

    public String toString() {
        return "Edges/Detect Edges";
    }
}
