package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Kuwahara implements IApplyInPlace {
    private int a;

    public Kuwahara() {
        this.a = 5;
    }

    public Kuwahara(int i) {
        this.a = 5;
        this.a = Math.max(i, 5);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i6 = (this.a + 1) / 2;
        int i7 = (this.a - 1) / 2;
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isRGB()) {
            int i8 = width + i7;
            int i9 = height + i7;
            float[][][] fArr = (float[][][]) Array.newInstance((Class<?>) Float.TYPE, i8, i9, 3);
            float[][][] fArr2 = (float[][][]) Array.newInstance((Class<?>) Float.TYPE, i8, i9, 3);
            for (int i10 = 0 - i7; i10 < height + 0; i10++) {
                for (int i11 = 0 - i7; i11 < width + 0; i11++) {
                    double d = 0.0d;
                    double d2 = 0.0d;
                    int i12 = 0;
                    double d3 = 0.0d;
                    double d4 = 0.0d;
                    double d5 = 0.0d;
                    double d6 = 0.0d;
                    for (int i13 = i11; i13 < i11 + i6; i13++) {
                        for (int i14 = i10; i14 < i10 + i6; i14++) {
                            if (i13 > 0 && i13 < width && i14 > 0 && i14 < height) {
                                int red = fastBitmap2.getRed(i14, i13);
                                int green = fastBitmap2.getGreen(i14, i13);
                                int blue = fastBitmap2.getBlue(i14, i13);
                                d6 += (double) red;
                                d5 += (double) (red * red);
                                d4 += (double) green;
                                d3 += (double) (green * green);
                                d += (double) blue;
                                d2 += (double) (blue * blue);
                            }
                            i12++;
                        }
                    }
                    fArr[i11 + i7][i10 + i7][0] = (float) (d6 / ((double) i12));
                    fArr[i11 + i7][i10 + i7][1] = (float) (d4 / ((double) i12));
                    fArr[i11 + i7][i10 + i7][2] = (float) (d / ((double) i12));
                    fArr2[i11 + i7][i10 + i7][0] = (float) (d5 - ((d6 * d6) / ((double) i12)));
                    fArr2[i11 + i7][i10 + i7][1] = (float) (d3 - ((d4 * d4) / ((double) i12)));
                    fArr2[i11 + i7][i10 + i7][2] = (float) (d2 - ((d * d) / ((double) i12)));
                }
            }
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < height + 0; i17++) {
                int i18 = 0;
                while (i18 < width + 0) {
                    float f = fArr2[i18][i17][0];
                    if (f < Float.MAX_VALUE) {
                        i4 = i17;
                        i5 = i18;
                    } else {
                        f = Float.MAX_VALUE;
                        i4 = i16;
                        i5 = i15;
                    }
                    int i19 = i18 + i7;
                    float f2 = fArr2[i19][i17][0];
                    if (f2 < f) {
                        f = f2;
                        i4 = i17;
                        i5 = i19;
                    }
                    int i20 = i17 + i7;
                    float f3 = fArr2[i19][i20][0];
                    if (f3 < f) {
                        f = f3;
                        i4 = i20;
                    } else {
                        i19 = i5;
                    }
                    if (fArr2[i18][i20][0] < f) {
                        i19 = i18;
                    } else {
                        i20 = i4;
                    }
                    int i21 = (int) (((double) fArr[i19][i20][0]) + 0.5d);
                    float f4 = fArr2[i18][i17][1];
                    if (f4 < Float.MAX_VALUE) {
                        i20 = i17;
                        i19 = i18;
                    } else {
                        f4 = Float.MAX_VALUE;
                    }
                    int i22 = i18 + i7;
                    float f5 = fArr2[i22][i17][1];
                    if (f5 < f4) {
                        f4 = f5;
                        i20 = i17;
                        i19 = i22;
                    }
                    int i23 = i17 + i7;
                    float f6 = fArr2[i22][i23][1];
                    if (f6 < f4) {
                        f4 = f6;
                        i20 = i23;
                    } else {
                        i22 = i19;
                    }
                    if (fArr2[i18][i23][1] < f4) {
                        i22 = i18;
                    } else {
                        i23 = i20;
                    }
                    int i24 = (int) (((double) fArr[i22][i23][1]) + 0.5d);
                    float f7 = fArr2[i18][i17][2];
                    if (f7 < Float.MAX_VALUE) {
                        i23 = i17;
                        i22 = i18;
                    } else {
                        f7 = Float.MAX_VALUE;
                    }
                    int i25 = i18 + i7;
                    float f8 = fArr2[i25][i17][2];
                    if (f8 < f7) {
                        f7 = f8;
                        i23 = i17;
                        i22 = i25;
                    }
                    int i26 = i17 + i7;
                    float f9 = fArr2[i25][i26][2];
                    if (f9 < f7) {
                        f7 = f9;
                        i23 = i26;
                    } else {
                        i25 = i22;
                    }
                    if (fArr2[i18][i26][2] < f7) {
                        i25 = i18;
                    } else {
                        i26 = i23;
                    }
                    fastBitmap.setRGB(i17, i18, i21, i24, (int) (((double) fArr[i25][i26][2]) + 0.5d));
                    i18++;
                    i16 = i26;
                    i15 = i25;
                }
            }
            return;
        }
        if (fastBitmap.isGrayscale()) {
            int i27 = width + i7;
            int i28 = height + i7;
            float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, i27, i28);
            float[][] fArr4 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, i27, i28);
            for (int i29 = 0 - i7; i29 < height + 0; i29++) {
                for (int i30 = 0 - i7; i30 < width + 0; i30++) {
                    double d7 = 0.0d;
                    double d8 = 0.0d;
                    int i31 = 0;
                    for (int i32 = i30; i32 < i30 + i6; i32++) {
                        for (int i33 = i29; i33 < i29 + i6; i33++) {
                            if (i32 > 0 && i32 < width && i33 > 0 && i33 < height) {
                                int gray = fastBitmap2.getGray(i33, i32);
                                d7 += (double) gray;
                                i3 = gray * gray;
                            } else {
                                d7 += (double) 0;
                                i3 = 0;
                            }
                            d8 += (double) i3;
                            i31++;
                        }
                    }
                    fArr3[i30 + i7][i29 + i7] = (float) (d7 / ((double) i31));
                    fArr4[i30 + i7][i29 + i7] = (float) (d8 - ((d7 * d7) / ((double) i31)));
                }
            }
            int i34 = 0;
            int i35 = 0;
            for (int i36 = 0; i36 < height + 0; i36++) {
                int i37 = 0;
                while (i37 < width + 0) {
                    float f10 = fArr4[i37][i36];
                    if (f10 < Float.MAX_VALUE) {
                        i = i36;
                        i2 = i37;
                    } else {
                        f10 = Float.MAX_VALUE;
                        i = i35;
                        i2 = i34;
                    }
                    int i38 = i37 + i7;
                    float f11 = fArr4[i38][i36];
                    if (f11 < f10) {
                        f10 = f11;
                        i = i36;
                        i2 = i38;
                    }
                    int i39 = i36 + i7;
                    float f12 = fArr4[i38][i39];
                    if (f12 < f10) {
                        f10 = f12;
                        i = i39;
                    } else {
                        i38 = i2;
                    }
                    if (fArr4[i37][i39] < f10) {
                        i38 = i37;
                    } else {
                        i39 = i;
                    }
                    fastBitmap.setGray(i36, i37, (int) (((double) fArr3[i38][i39]) + 0.5d));
                    i37++;
                    i35 = i39;
                    i34 = i38;
                }
            }
        }
    }
}
