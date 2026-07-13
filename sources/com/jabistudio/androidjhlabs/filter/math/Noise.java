package com.jabistudio.androidjhlabs.filter.math;

import android.support.v4.view.InputDeviceCompat;
import java.lang.reflect.Array;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class Noise implements Function1D, Function2D, Function3D {
    private static Random f = new Random();
    static int[] a = new int[514];
    static float[][] b = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 514, 3);
    static float[][] c = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 514, 2);
    static float[] d = new float[514];
    static boolean e = true;

    @Override // com.jabistudio.androidjhlabs.filter.math.Function1D
    public float evaluate(float f2) {
        return noise1(f2);
    }

    @Override // com.jabistudio.androidjhlabs.filter.math.Function2D
    public float evaluate(float f2, float f3) {
        return noise2(f2, f3);
    }

    @Override // com.jabistudio.androidjhlabs.filter.math.Function3D
    public float evaluate(float f2, float f3, float f4) {
        return noise3(f2, f3, f4);
    }

    public static float turbulence2(float f2, float f3, float f4) {
        float fAbs = 0.0f;
        for (float f5 = 1.0f; f5 <= f4; f5 *= 2.0f) {
            fAbs += Math.abs(noise2(f5 * f2, f5 * f3)) / f5;
        }
        return fAbs;
    }

    public static float turbulence3(float f2, float f3, float f4, float f5) {
        float fAbs = 0.0f;
        for (float f6 = 1.0f; f6 <= f5; f6 *= 2.0f) {
            fAbs += Math.abs(noise3(f6 * f2, f6 * f3, f6 * f4)) / f6;
        }
        return fAbs;
    }

    private static float a(float f2) {
        return f2 * f2 * (3.0f - (2.0f * f2));
    }

    public static float noise1(float f2) {
        if (e) {
            e = false;
            b();
        }
        float f3 = 4096.0f + f2;
        int i = ((int) f3) & 255;
        float f4 = f3 - ((int) f3);
        return lerp(a(f4), f4 * d[a[i]], d[a[(i + 1) & 255]] * (f4 - 1.0f)) * 2.3f;
    }

    public static float noise2(float f2, float f3) {
        if (e) {
            e = false;
            b();
        }
        float f4 = f2 + 4096.0f;
        int i = ((int) f4) & 255;
        int i2 = (i + 1) & 255;
        float f5 = f4 - ((int) f4);
        float f6 = f5 - 1.0f;
        float f7 = 4096.0f + f3;
        int i3 = ((int) f7) & 255;
        int i4 = (i3 + 1) & 255;
        float f8 = f7 - ((int) f7);
        float f9 = f8 - 1.0f;
        int i5 = a[i];
        int i6 = a[i2];
        int i7 = a[i5 + i3];
        int i8 = a[i3 + i6];
        int i9 = a[i5 + i4];
        int i10 = a[i6 + i4];
        float fA = a(f5);
        float fA2 = a(f8);
        float[] fArr = c[i7];
        float f10 = (fArr[1] * f8) + (fArr[0] * f5);
        float[] fArr2 = c[i8];
        float fLerp = lerp(fA, f10, (f8 * fArr2[1]) + (fArr2[0] * f6));
        float[] fArr3 = c[i9];
        float f11 = (f5 * fArr3[0]) + (fArr3[1] * f9);
        float[] fArr4 = c[i10];
        return lerp(fA2, fLerp, lerp(fA, f11, (fArr4[1] * f9) + (fArr4[0] * f6))) * 1.5f;
    }

    public static float noise3(float f2, float f3, float f4) {
        if (e) {
            e = false;
            b();
        }
        float f5 = 4096.0f + f2;
        int i = ((int) f5) & 255;
        int i2 = (i + 1) & 255;
        float f6 = f5 - ((int) f5);
        float f7 = f6 - 1.0f;
        float f8 = 4096.0f + f3;
        int i3 = ((int) f8) & 255;
        int i4 = (i3 + 1) & 255;
        float f9 = f8 - ((int) f8);
        float f10 = f9 - 1.0f;
        float f11 = 4096.0f + f4;
        int i5 = ((int) f11) & 255;
        int i6 = (i5 + 1) & 255;
        float f12 = f11 - ((int) f11);
        float f13 = f12 - 1.0f;
        int i7 = a[i];
        int i8 = a[i2];
        int i9 = a[i7 + i3];
        int i10 = a[i3 + i8];
        int i11 = a[i7 + i4];
        int i12 = a[i8 + i4];
        float fA = a(f6);
        float fA2 = a(f9);
        float fA3 = a(f12);
        float[] fArr = b[i9 + i5];
        float f14 = (fArr[2] * f12) + (fArr[0] * f6) + (fArr[1] * f9);
        float[] fArr2 = b[i10 + i5];
        float fLerp = lerp(fA, f14, (fArr2[2] * f12) + (fArr2[0] * f7) + (fArr2[1] * f9));
        float[] fArr3 = b[i11 + i5];
        float f15 = (fArr3[2] * f12) + (fArr3[0] * f6) + (fArr3[1] * f10);
        float[] fArr4 = b[i5 + i12];
        float fLerp2 = lerp(fA2, fLerp, lerp(fA, f15, (f12 * fArr4[2]) + (fArr4[0] * f7) + (fArr4[1] * f10)));
        float[] fArr5 = b[i9 + i6];
        float f16 = (fArr5[2] * f13) + (fArr5[0] * f6) + (fArr5[1] * f9);
        float[] fArr6 = b[i10 + i6];
        float fLerp3 = lerp(fA, f16, (f9 * fArr6[1]) + (fArr6[0] * f7) + (fArr6[2] * f13));
        float[] fArr7 = b[i11 + i6];
        float f17 = (f6 * fArr7[0]) + (fArr7[1] * f10) + (fArr7[2] * f13);
        float[] fArr8 = b[i12 + i6];
        return lerp(fA3, fLerp2, lerp(fA2, fLerp3, lerp(fA, f17, (fArr8[2] * f13) + (fArr8[0] * f7) + (fArr8[1] * f10)))) * 1.5f;
    }

    public static float lerp(float f2, float f3, float f4) {
        return ((f4 - f3) * f2) + f3;
    }

    private static void b(float[] fArr) {
        float fSqrt = (float) Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1]));
        fArr[0] = fArr[0] / fSqrt;
        fArr[1] = fArr[1] / fSqrt;
    }

    static void a(float[] fArr) {
        float fSqrt = (float) Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1]) + (fArr[2] * fArr[2]));
        fArr[0] = fArr[0] / fSqrt;
        fArr[1] = fArr[1] / fSqrt;
        fArr[2] = fArr[2] / fSqrt;
    }

    private static int a() {
        return f.nextInt() & Integer.MAX_VALUE;
    }

    private static void b() {
        for (int i = 0; i < 256; i++) {
            a[i] = i;
            d[i] = ((a() % 512) + InputDeviceCompat.SOURCE_ANY) / 256.0f;
            for (int i2 = 0; i2 < 2; i2++) {
                c[i][i2] = ((a() % 512) + InputDeviceCompat.SOURCE_ANY) / 256.0f;
            }
            b(c[i]);
            for (int i3 = 0; i3 < 3; i3++) {
                b[i][i3] = ((a() % 512) + InputDeviceCompat.SOURCE_ANY) / 256.0f;
            }
            a(b[i]);
        }
        for (int i4 = 255; i4 >= 0; i4--) {
            int i5 = a[i4];
            int[] iArr = a;
            int[] iArr2 = a;
            int iA = a() % 256;
            iArr[i4] = iArr2[iA];
            a[iA] = i5;
        }
        for (int i6 = 0; i6 < 258; i6++) {
            a[i6 + 256] = a[i6];
            d[i6 + 256] = d[i6];
            for (int i7 = 0; i7 < 2; i7++) {
                c[i6 + 256][i7] = c[i6][i7];
            }
            for (int i8 = 0; i8 < 3; i8++) {
                b[i6 + 256][i8] = b[i6][i8];
            }
        }
    }

    public static float[] findRange(Function1D function1D, float[] fArr) {
        float fMax = 0.0f;
        if (fArr == null) {
            fArr = new float[2];
        }
        float fMin = 0.0f;
        for (float f2 = -100.0f; f2 < 100.0f; f2 = (float) (((double) f2) + 1.27139d)) {
            float fEvaluate = function1D.evaluate(f2);
            fMin = Math.min(fMin, fEvaluate);
            fMax = Math.max(fMax, fEvaluate);
        }
        fArr[0] = fMin;
        fArr[1] = fMax;
        return fArr;
    }

    public static float[] findRange(Function2D function2D, float[] fArr) {
        float f2 = 0.0f;
        if (fArr == null) {
            fArr = new float[2];
        }
        float f3 = -100.0f;
        float f4 = 0.0f;
        while (f3 < 100.0f) {
            float fMin = f4;
            float fMax = f2;
            for (float f5 = -100.0f; f5 < 100.0f; f5 = (float) (((double) f5) + 10.77139d)) {
                float fEvaluate = function2D.evaluate(f5, f3);
                fMin = Math.min(fMin, fEvaluate);
                fMax = Math.max(fMax, fEvaluate);
            }
            f3 = (float) (((double) f3) + 10.35173d);
            f2 = fMax;
            f4 = fMin;
        }
        fArr[0] = f4;
        fArr[1] = f2;
        return fArr;
    }
}
