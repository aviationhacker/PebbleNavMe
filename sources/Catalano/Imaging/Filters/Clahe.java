package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Grayscale;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Clahe implements IApplyInPlace {
    private int a;
    private int b;
    private float c;
    private Grayscale.Algorithm d;

    public int getBlockRadius() {
        return this.a;
    }

    public void setBlockRadius(int i) {
        this.a = i;
    }

    public int getBins() {
        return this.b;
    }

    public void setBins(int i) {
        this.b = i;
    }

    public float getSlope() {
        return this.c;
    }

    public void setSlope(float f) {
        this.c = f;
    }

    public Grayscale.Algorithm getAlgorithm() {
        return this.d;
    }

    public void setAlgorithm(Grayscale.Algorithm algorithm) {
        this.d = algorithm;
    }

    public Clahe() {
        this.a = 63;
        this.b = 255;
        this.c = 3.0f;
        this.d = Grayscale.Algorithm.Average;
    }

    public Clahe(int i, int i2) {
        this.a = 63;
        this.b = 255;
        this.c = 3.0f;
        this.d = Grayscale.Algorithm.Average;
        this.a = i;
        this.b = i2;
    }

    public Clahe(int i, int i2, float f) {
        this.a = 63;
        this.b = 255;
        this.c = 3.0f;
        this.d = Grayscale.Algorithm.Average;
        this.a = i;
        this.b = i2;
        this.c = f;
    }

    public Clahe(int i, int i2, float f, Grayscale.Algorithm algorithm) {
        this.a = 63;
        this.b = 255;
        this.c = 3.0f;
        this.d = Grayscale.Algorithm.Average;
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = algorithm;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            for (int i3 = 0; i3 < height; i3++) {
                int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
                int iMax = Math.max(0, i3 - this.a);
                int iMin = Math.min(height, this.a + i3 + 1);
                int i4 = iMin - iMax;
                int iMax2 = Math.max(0, -this.a);
                int iMin2 = Math.min(width - 1, this.a);
                int[] iArr2 = new int[this.b + 1];
                int[] iArr3 = new int[this.b + 1];
                for (int i5 = iMax; i5 < iMin; i5++) {
                    for (int i6 = iMax2; i6 < iMin2; i6++) {
                        int iA = a((fastBitmap.getGray(i5, i6) / 255.0f) * this.b);
                        iArr2[iA] = iArr2[iA] + 1;
                    }
                }
                for (int i7 = 0; i7 < width; i7++) {
                    int iA2 = a((fastBitmap.getGray(i3, i7) / 255.0f) * this.b);
                    int iMax3 = Math.max(0, i7 - this.a);
                    int i8 = this.a + i7 + 1;
                    int iMin3 = (int) (((((Math.min(width, i8) - iMax3) * i4) * this.c) / this.b) + 0.5f);
                    if (iMax3 > 0) {
                        int i9 = iMax3 - 1;
                        for (int i10 = iMax; i10 < iMin; i10++) {
                            iArr2[a((fastBitmap.getGray(i10, i9) / 255.0f) * this.b)] = iArr2[r5] - 1;
                        }
                    }
                    if (i8 <= width) {
                        int i11 = i8 - 1;
                        for (int i12 = iMax; i12 < iMin; i12++) {
                            int iA3 = a((fastBitmap.getGray(i12, i11) / 255.0f) * this.b);
                            iArr2[iA3] = iArr2[iA3] + 1;
                        }
                    }
                    System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                    int i13 = 0;
                    while (true) {
                        int i14 = 0;
                        int i15 = 0;
                        while (i15 <= this.b) {
                            int i16 = iArr3[i15] - iMin3;
                            if (i16 > 0) {
                                i2 = i16 + i14;
                                iArr3[i15] = iMin3;
                            } else {
                                i2 = i14;
                            }
                            i15++;
                            i14 = i2;
                        }
                        int i17 = i14 / (this.b + 1);
                        int i18 = i14 % (this.b + 1);
                        for (int i19 = 0; i19 <= this.b; i19++) {
                            iArr3[i19] = iArr3[i19] + i17;
                        }
                        if (i18 != 0) {
                            int i20 = this.b / i18;
                            for (int i21 = 0; i21 <= this.b; i21 += i20) {
                                iArr3[i21] = iArr3[i21] + 1;
                            }
                        }
                        if (i14 == i13) {
                            break;
                        } else {
                            i13 = i14;
                        }
                    }
                    int i22 = this.b;
                    for (int i23 = 0; i23 < i22; i23++) {
                        if (iArr3[i23] != 0) {
                            i22 = i23;
                        }
                    }
                    int i24 = 0;
                    for (int i25 = i22; i25 <= iA2; i25++) {
                        i24 += iArr3[i25];
                    }
                    int i26 = i24;
                    for (int i27 = iA2 + 1; i27 <= this.b; i27++) {
                        i26 += iArr3[i27];
                    }
                    int i28 = iArr3[i22];
                    iArr[i3][i7] = a(((i24 - i28) / (i26 - i28)) * 255.0f);
                }
                for (int i29 = 0; i29 < width; i29++) {
                    fastBitmap.setGray(i3, i29, iArr[i3][i29]);
                }
            }
            return;
        }
        new Grayscale(this.d).applyInPlace(new FastBitmap(fastBitmap));
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        for (int i30 = 0; i30 < height; i30++) {
            int iMax4 = Math.max(0, i30 - this.a);
            int iMin4 = Math.min(height, this.a + i30 + 1);
            int i31 = iMin4 - iMax4;
            int iMax5 = Math.max(0, -this.a);
            int iMin5 = Math.min(width - 1, this.a);
            int[] iArr5 = new int[this.b + 1];
            int[] iArr6 = new int[this.b + 1];
            for (int i32 = iMax4; i32 < iMin4; i32++) {
                for (int i33 = iMax5; i33 < iMin5; i33++) {
                    int iA4 = a((r11.getGray(i32, i33) / 255.0f) * this.b);
                    iArr5[iA4] = iArr5[iA4] + 1;
                }
            }
            for (int i34 = 0; i34 < width; i34++) {
                int iA5 = a((r11.getGray(i30, i34) / 255.0f) * this.b);
                int iMax6 = Math.max(0, i34 - this.a);
                int i35 = this.a + i34 + 1;
                int iMin6 = (int) (((((Math.min(width, i35) - iMax6) * i31) * this.c) / this.b) + 0.5f);
                if (iMax6 > 0) {
                    int i36 = iMax6 - 1;
                    for (int i37 = iMax4; i37 < iMin4; i37++) {
                        iArr5[a((r11.getGray(i37, i36) / 255.0f) * this.b)] = iArr5[r5] - 1;
                    }
                }
                if (i35 <= width) {
                    int i38 = i35 - 1;
                    for (int i39 = iMax4; i39 < iMin4; i39++) {
                        int iA6 = a((r11.getGray(i39, i38) / 255.0f) * this.b);
                        iArr5[iA6] = iArr5[iA6] + 1;
                    }
                }
                System.arraycopy(iArr5, 0, iArr6, 0, iArr5.length);
                int i40 = 0;
                while (true) {
                    int i41 = 0;
                    int i42 = 0;
                    while (i42 <= this.b) {
                        int i43 = iArr6[i42] - iMin6;
                        if (i43 > 0) {
                            i = i43 + i41;
                            iArr6[i42] = iMin6;
                        } else {
                            i = i41;
                        }
                        i42++;
                        i41 = i;
                    }
                    int i44 = i41 / (this.b + 1);
                    int i45 = i41 % (this.b + 1);
                    for (int i46 = 0; i46 <= this.b; i46++) {
                        iArr6[i46] = iArr6[i46] + i44;
                    }
                    if (i45 != 0) {
                        int i47 = this.b / i45;
                        for (int i48 = 0; i48 <= this.b; i48 += i47) {
                            iArr6[i48] = iArr6[i48] + 1;
                        }
                    }
                    if (i41 == i40) {
                        break;
                    } else {
                        i40 = i41;
                    }
                }
                int i49 = this.b;
                for (int i50 = 0; i50 < i49; i50++) {
                    if (iArr6[i50] != 0) {
                        i49 = i50;
                    }
                }
                int i51 = 0;
                for (int i52 = i49; i52 <= iA5; i52++) {
                    i51 += iArr6[i52];
                }
                int i53 = i51;
                for (int i54 = iA5 + 1; i54 <= this.b; i54++) {
                    i53 += iArr6[i54];
                }
                int i55 = iArr6[i49];
                iArr4[i30][i34] = a(((i51 - i55) / (i53 - i55)) * 255.0f);
            }
            for (int i56 = 0; i56 < width; i56++) {
                float gray = iArr4[i30][i56] / r11.getGray(i30, i56);
                fastBitmap.setRGB(i30, i56, Math.max(0, Math.min(255, a(fastBitmap.getRed(i30, i56) * gray))), Math.max(0, Math.min(255, a(fastBitmap.getGreen(i30, i56) * gray))), Math.max(0, Math.min(255, a(gray * fastBitmap.getBlue(i30, i56)))));
            }
        }
    }

    private int a(float f) {
        return (int) (0.5f + f);
    }
}
