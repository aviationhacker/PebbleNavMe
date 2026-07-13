package Catalano.Imaging.Texture;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageStatistics;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GrayLevelRunLengthMatrix {
    private Degree a;
    private int b;
    private boolean c;

    public enum Degree {
        Degree_0,
        Degree_45,
        Degree_90,
        Degree_135
    }

    public boolean isAutoGray() {
        return this.c;
    }

    public void setAutoGray(boolean z) {
        this.c = z;
    }

    public Degree getDegree() {
        return this.a;
    }

    public void setDegree(Degree degree) {
        this.a = degree;
    }

    public int getNumberPrimitives() {
        return this.b;
    }

    public void setNumberPrimitives(int i) {
        this.b = i;
    }

    public GrayLevelRunLengthMatrix(Degree degree) {
        this.c = true;
        this.a = degree;
    }

    public GrayLevelRunLengthMatrix(Degree degree, boolean z) {
        this.c = true;
        this.a = degree;
        this.c = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public double[][] Compute(FastBitmap fastBitmap) {
        int i;
        int i2;
        int iMaximum = this.c ? ImageStatistics.Maximum(fastBitmap) : 255;
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iMaximum + 1, width + 1);
        switch (this.a) {
            case Degree_0:
                for (int i3 = 0; i3 < height; i3++) {
                    int i4 = 1;
                    for (int i5 = 1; i5 < width; i5++) {
                        int gray = fastBitmap.getGray(i3, i5 - 1);
                        int gray2 = fastBitmap.getGray(i3, i5);
                        if (gray == gray2) {
                            i4++;
                        } else {
                            double[] dArr2 = dArr[gray];
                            dArr2[i4] = dArr2[i4] + 1.0d;
                            this.b++;
                            i4 = 1;
                        }
                        if (gray == gray2 && i5 == width - 1) {
                            double[] dArr3 = dArr[gray];
                            dArr3[i4] = dArr3[i4] + 1.0d;
                        }
                        if (gray != gray2 && i5 == width - 1) {
                            double[] dArr4 = dArr[gray2];
                            dArr4[1] = dArr4[1] + 1.0d;
                        }
                    }
                }
                return dArr;
            case Degree_45:
                double[] dArr5 = dArr[0];
                dArr5[1] = dArr5[1] + 1.0d;
                double[] dArr6 = dArr[height - 1];
                int i6 = width - 1;
                dArr6[i6] = dArr6[i6] + 1.0d;
                for (int i7 = 1; i7 < height; i7++) {
                    int i8 = 1;
                    for (int i9 = 0; i9 < i7; i9++) {
                        int gray3 = fastBitmap.getGray(i7 - i9, i9);
                        int gray4 = fastBitmap.getGray((i7 - i9) - 1, i9 + 1);
                        if (gray3 == gray4) {
                            i8++;
                        } else {
                            double[] dArr7 = dArr[gray3];
                            dArr7[i8] = dArr7[i8] + 1.0d;
                            this.b++;
                            i8 = 1;
                        }
                        if (gray3 == gray4 && i9 == i7 - 1) {
                            double[] dArr8 = dArr[gray3];
                            dArr8[i8] = dArr8[i8] + 1.0d;
                        }
                        if (gray3 != gray4 && i9 == i7 - 1) {
                            double[] dArr9 = dArr[gray4];
                            dArr9[1] = dArr9[1] + 1.0d;
                        }
                    }
                }
                int i10 = 1;
                while (true) {
                    int i11 = i10;
                    if (i11 < width - 1) {
                        int i12 = height - i11;
                        int i13 = 1;
                        for (int i14 = 1; i14 < i12; i14++) {
                            int gray5 = fastBitmap.getGray(height - i14, (i11 + i14) - 1);
                            int gray6 = fastBitmap.getGray((height - i14) - 1, i11 + i14);
                            if (gray5 == gray6) {
                                i13++;
                            } else {
                                double[] dArr10 = dArr[gray5];
                                dArr10[i13] = dArr10[i13] + 1.0d;
                                this.b++;
                                i13 = 1;
                            }
                            if (gray5 == gray6 && i14 == i12 - 1) {
                                double[] dArr11 = dArr[gray5];
                                dArr11[i13] = dArr11[i13] + 1.0d;
                            }
                            if (gray5 != gray6 && i14 == i12 - 1) {
                                double[] dArr12 = dArr[gray6];
                                dArr12[1] = dArr12[1] + 1.0d;
                            }
                        }
                        i10 = i11 + 1;
                    } else {
                        return dArr;
                    }
                }
                break;
            case Degree_90:
                for (int i15 = 0; i15 < width; i15++) {
                    int i16 = 1;
                    for (int i17 = 0; i17 < height - 1; i17++) {
                        int gray7 = fastBitmap.getGray((height - i17) - 1, i15);
                        int gray8 = fastBitmap.getGray((height - i17) - 2, i15);
                        if (gray7 == gray8) {
                            i16++;
                        } else {
                            double[] dArr13 = dArr[gray7];
                            dArr13[i16] = dArr13[i16] + 1.0d;
                            this.b++;
                            i16 = 1;
                        }
                        if (gray7 == gray8 && i17 == height - 2) {
                            double[] dArr14 = dArr[gray7];
                            dArr14[i16] = dArr14[i16] + 1.0d;
                        }
                        if (gray7 != gray8 && i17 == height - 2) {
                            double[] dArr15 = dArr[gray8];
                            dArr15[1] = dArr15[1] + 1.0d;
                        }
                    }
                }
                return dArr;
            case Degree_135:
                double[] dArr16 = dArr[0];
                int i18 = width - 1;
                dArr16[i18] = dArr16[i18] + 1.0d;
                double[] dArr17 = dArr[height - 1];
                dArr17[0] = dArr17[0] + 1.0d;
                for (int i19 = 1; i19 < width; i19++) {
                    int i20 = 1;
                    int i21 = 0;
                    int i22 = width - 1;
                    while (i21 < i19) {
                        int gray9 = fastBitmap.getGray(i19 - i21, i22);
                        int i23 = i22 - 1;
                        int gray10 = fastBitmap.getGray((i19 - i21) - 1, i23);
                        if (gray9 == gray10) {
                            i2 = i20 + 1;
                        } else {
                            double[] dArr18 = dArr[gray9];
                            dArr18[i20] = dArr18[i20] + 1.0d;
                            this.b++;
                            i2 = 1;
                        }
                        if (gray9 == gray10 && i21 == i19 - 1) {
                            double[] dArr19 = dArr[gray9];
                            dArr19[i2] = dArr19[i2] + 1.0d;
                        }
                        if (gray9 != gray10 && i21 == i19 - 1) {
                            double[] dArr20 = dArr[gray10];
                            dArr20[1] = dArr20[1] + 1.0d;
                        }
                        i21++;
                        i20 = i2;
                        i22 = i23;
                    }
                }
                int i24 = 1;
                while (true) {
                    int i25 = i24;
                    if (i25 < width - 1) {
                        int i26 = height - i25;
                        int i27 = 1;
                        int i28 = 1;
                        int i29 = (width - 1) - i25;
                        while (i28 < i26) {
                            int gray11 = fastBitmap.getGray(height - i28, i29);
                            int i30 = i29 - 1;
                            int gray12 = fastBitmap.getGray((height - i28) - 1, i30);
                            if (gray11 == gray12) {
                                i = i27 + 1;
                            } else {
                                double[] dArr21 = dArr[gray11];
                                dArr21[i27] = dArr21[i27] + 1.0d;
                                this.b++;
                                i = 1;
                            }
                            if (gray11 == gray12 && i28 == i26 - 1) {
                                double[] dArr22 = dArr[gray11];
                                dArr22[i] = dArr22[i] + 1.0d;
                            }
                            if (gray11 != gray12 && i28 == i26 - 1) {
                                double[] dArr23 = dArr[gray12];
                                dArr23[1] = dArr23[1] + 1.0d;
                            }
                            i28++;
                            i27 = i;
                            i29 = i30;
                        }
                        i24 = i25 + 1;
                    } else {
                        return dArr;
                    }
                }
                break;
            default:
                return dArr;
        }
    }
}
