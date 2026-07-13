package com.jabistudio.androidjhlabs.filter;

import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class ColorHalftoneFilter {
    private float a = 2.0f;
    private float b = (float) Math.toRadians(108.0d);
    private float c = (float) Math.toRadians(162.0d);
    private float d = (float) Math.toRadians(90.0d);

    public void setdotRadius(float f) {
        this.a = f;
    }

    public float getdotRadius() {
        return this.a;
    }

    public float getCyanScreenAngle() {
        return this.b;
    }

    public void setCyanScreenAngle(float f) {
        this.b = f;
    }

    public float getMagentaScreenAngle() {
        return this.c;
    }

    public void setMagentaScreenAngle(float f) {
        this.c = f;
    }

    public float getYellowScreenAngle() {
        return this.d;
    }

    public void setYellowScreenAngle(float f) {
        this.d = f;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        float f = 2.0f * this.a * 1.414f;
        float[] fArr = {this.b, this.c, this.d};
        float[] fArr2 = {0.0f, -1.0f, 1.0f, 0.0f, 0.0f};
        float[] fArr3 = {0.0f, 0.0f, 0.0f, -1.0f, 1.0f};
        float f2 = f / 2.0f;
        int[] iArr2 = new int[i];
        int[] iArr3 = new int[i * i2];
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < i2) {
                int i5 = 0;
                int i6 = i4 * i;
                while (i5 < i) {
                    iArr2[i5] = (iArr[i6] & ViewCompat.MEASURED_STATE_MASK) | ViewCompat.MEASURED_SIZE_MASK;
                    i5++;
                    i6++;
                }
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i8 >= 3) {
                        break;
                    }
                    int i9 = 16 - (i8 * 8);
                    int i10 = 255 << i9;
                    float f3 = fArr[i8];
                    float fSin = (float) Math.sin(f3);
                    float fCos = (float) Math.cos(f3);
                    int i11 = 0;
                    while (true) {
                        int i12 = i11;
                        if (i12 < i) {
                            float f4 = (i12 * fCos) + (i4 * fSin);
                            float f5 = ((-i12) * fSin) + (i4 * fCos);
                            float fMod = (f4 - ImageMath.mod(f4 - f2, f)) + f2;
                            float fMod2 = (f5 - ImageMath.mod(f5 - f2, f)) + f2;
                            float fMin = 1.0f;
                            for (int i13 = 0; i13 < 5; i13++) {
                                float f6 = (fArr2[i13] * f) + fMod;
                                float f7 = (fArr3[i13] * f) + fMod2;
                                float f8 = (f6 * fCos) - (f7 * fSin);
                                float f9 = (f6 * fSin) + (f7 * fCos);
                                float f10 = ((iArr[ImageMath.clamp((int) f8, 0, i - 1) + (ImageMath.clamp((int) f9, 0, i2 - 1) * i)] >> i9) & 255) / 255.0f;
                                float f11 = i12 - f8;
                                float f12 = i4 - f9;
                                float fSqrt = (float) Math.sqrt((f12 * f12) + (f11 * f11));
                                fMin = Math.min(fMin, 1.0f - ImageMath.smoothStep(fSqrt, 1.0f + fSqrt, (float) (((double) (1.0f - (f10 * f10))) * (((double) f2) * 1.414d))));
                            }
                            iArr2[i12] = (((((int) (255.0f * fMin)) << i9) ^ (i10 ^ (-1))) | ViewCompat.MEASURED_STATE_MASK) & iArr2[i12];
                            i11 = i12 + 1;
                        }
                    }
                    i7 = i8 + 1;
                }
                int i14 = 0;
                for (int i15 = i4 * i; i15 < (i4 * i) + i; i15++) {
                    iArr3[i15] = iArr2[i14];
                    i14++;
                }
                i3 = i4 + 1;
            } else {
                return iArr3;
            }
        }
    }

    public String toString() {
        return "Pixellate/Color Halftone...";
    }
}
