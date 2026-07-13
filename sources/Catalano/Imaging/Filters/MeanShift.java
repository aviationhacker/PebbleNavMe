package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class MeanShift implements IApplyInPlace {
    private int a;
    private float b;

    public MeanShift() {
    }

    public MeanShift(int i, float f) {
        this.a = i;
        this.b = f;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isRGB()) {
            float[][][] fArr = (float[][][]) Array.newInstance((Class<?>) Float.TYPE, height, width, 3);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= height) {
                    break;
                }
                for (int i3 = 0; i3 < width; i3++) {
                    int red = fastBitmap.getRed(i2, i3);
                    int green = fastBitmap.getGreen(i2, i3);
                    int blue = fastBitmap.getBlue(i2, i3);
                    fArr[i2][i3][0] = (0.299f * red) + (0.587f * green) + (0.114f * blue);
                    fArr[i2][i3][1] = ((0.5957f * red) - (0.2744f * green)) - (0.3212f * blue);
                    fArr[i2][i3][2] = ((red * 0.2114f) - (green * 0.5226f)) + (0.3111f * blue);
                }
                i = i2 + 1;
            }
            for (int i4 = 0; i4 < height; i4++) {
                for (int i5 = 0; i5 < width; i5++) {
                    float[] fArr2 = fArr[i4][i5];
                    float f8 = fArr2[0];
                    float f9 = fArr2[1];
                    float f10 = fArr2[2];
                    int i6 = i4;
                    int i7 = i5;
                    int i8 = 0;
                    while (true) {
                        float f11 = 0.0f;
                        float f12 = 0.0f;
                        float f13 = 0.0f;
                        float f14 = 0.0f;
                        float f15 = 0.0f;
                        int i9 = 0;
                        int i10 = this.a * this.a;
                        float f16 = this.b * this.b;
                        int i11 = -this.a;
                        while (true) {
                            float f17 = f15;
                            f2 = f13;
                            f3 = f14;
                            f4 = f17;
                            if (i11 > this.a) {
                                break;
                            }
                            int i12 = i6 + i11;
                            if (i12 < 0 || i12 >= height) {
                                f14 = f3;
                                f13 = f2;
                                f15 = f4;
                            } else {
                                float f18 = f11;
                                float f19 = f12;
                                float f20 = f2;
                                int i13 = i9;
                                for (int i14 = -this.a; i14 <= this.a; i14++) {
                                    int i15 = i7 + i14;
                                    if (i15 >= 0 && i15 < width && (i11 * i11) + (i14 * i14) <= i10) {
                                        float[] fArr3 = fArr[i12][i15];
                                        float f21 = fArr3[0];
                                        float f22 = fArr3[1];
                                        float f23 = fArr3[2];
                                        float f24 = f8 - f21;
                                        float f25 = f9 - f22;
                                        float f26 = f10 - f23;
                                        if ((f24 * f24) + (f25 * f25) + (f26 * f26) <= f16) {
                                            f18 += i12;
                                            f19 += i15;
                                            f20 += f21;
                                            f3 += f22;
                                            f4 += f23;
                                            i13++;
                                        }
                                    }
                                }
                                i9 = i13;
                                f15 = f4;
                                f14 = f3;
                                f13 = f20;
                                f12 = f19;
                                f11 = f18;
                            }
                            i11++;
                        }
                        float f27 = 1.0f / i9;
                        f5 = f2 * f27;
                        f6 = f3 * f27;
                        f7 = f4 * f27;
                        int i16 = (int) (((double) (f11 * f27)) + 0.5d);
                        int i17 = (int) (((double) (f12 * f27)) + 0.5d);
                        int i18 = i16 - i6;
                        int i19 = i17 - i7;
                        float f28 = f5 - f8;
                        float f29 = f6 - f9;
                        float f30 = f7 - f10;
                        float f31 = (f29 * f29) + (f28 * f28) + (i18 * i18) + (i19 * i19) + (f30 * f30);
                        int i20 = i8 + 1;
                        if (f31 <= 3.0f || i20 >= 100) {
                            break;
                        }
                        f9 = f6;
                        f8 = f5;
                        i6 = i16;
                        i7 = i17;
                        i8 = i20;
                        f10 = f7;
                    }
                    fastBitmap.setRGB(i4, i5, (int) ((0.9563f * f6) + f5 + (0.621f * f7)), (int) ((f5 - (0.2721f * f6)) - (0.6473f * f7)), (int) ((f5 - (1.107f * f6)) + (f7 * 1.7046f)));
                }
            }
        }
        if (fastBitmap.isGrayscale()) {
            for (int i21 = 0; i21 < height; i21++) {
                for (int i22 = 0; i22 < width; i22++) {
                    float gray = fastBitmap.getGray(i21, i22);
                    int i23 = i21;
                    int i24 = i22;
                    int i25 = 0;
                    while (true) {
                        float f32 = 0.0f;
                        float f33 = 0.0f;
                        float f34 = 0.0f;
                        int i26 = 0;
                        int i27 = this.a * this.a;
                        float f35 = this.b * this.b;
                        for (int i28 = -this.a; i28 <= this.a; i28++) {
                            int i29 = i23 + i28;
                            if (i29 >= 0 && i29 < height) {
                                float f36 = f32;
                                float f37 = f33;
                                float f38 = f34;
                                int i30 = i26;
                                for (int i31 = -this.a; i31 <= this.a; i31++) {
                                    int i32 = i24 + i31;
                                    if (i32 >= 0 && i32 < width && (i28 * i28) + (i31 * i31) <= i27) {
                                        float gray2 = fastBitmap.getGray(i29, i32);
                                        float f39 = gray - gray2;
                                        if (f39 * f39 <= f35) {
                                            f36 += i29;
                                            f37 += i32;
                                            f38 += gray2;
                                            i30++;
                                        }
                                    }
                                }
                                i26 = i30;
                                f34 = f38;
                                f33 = f37;
                                f32 = f36;
                            }
                        }
                        float f40 = 1.0f / i26;
                        f = f34 * f40;
                        int i33 = (int) (((double) (f32 * f40)) + 0.5d);
                        int i34 = (int) (((double) (f33 * f40)) + 0.5d);
                        int i35 = i33 - i23;
                        int i36 = i34 - i24;
                        float f41 = f - gray;
                        float f42 = (i35 * i35) + (i36 * i36) + (f41 * f41);
                        int i37 = i25 + 1;
                        if (f42 <= 3.0f || i37 >= 100) {
                            break;
                        }
                        i23 = i33;
                        i24 = i34;
                        i25 = i37;
                        gray = f;
                    }
                    fastBitmap.setGray(i21, i22, (int) f);
                }
            }
        }
    }
}
