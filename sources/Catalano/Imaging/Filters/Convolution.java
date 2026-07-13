package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Convolution implements IApplyInPlace {
    private int a;
    private int b;
    private int[][] c;
    private int d;
    private boolean e;
    private boolean f;

    public int[][] getKernel() {
        return this.c;
    }

    public void setKernel(int[][] iArr) {
        this.c = iArr;
    }

    public void setDivision(int i) {
        this.d = i;
        this.e = true;
    }

    public boolean isReplicate() {
        return this.f;
    }

    public void setReplicate(boolean z) {
        this.f = z;
    }

    public Convolution() {
        this.e = false;
        this.f = false;
    }

    public Convolution(int[][] iArr) {
        this.e = false;
        this.f = false;
        this.c = iArr;
    }

    public Convolution(int[][] iArr, boolean z) {
        this.e = false;
        this.f = false;
        this.c = iArr;
        this.f = z;
    }

    public Convolution(int[][] iArr, int i) {
        this.e = false;
        this.f = false;
        this.c = iArr;
        this.d = i;
        this.e = true;
    }

    public Convolution(int[][] iArr, int i, boolean z) {
        this.e = false;
        this.f = false;
        this.c = iArr;
        this.d = i;
        this.f = z;
        this.e = true;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int i3;
        int i4;
        int green;
        int blue;
        int i5;
        this.a = fastBitmap.getWidth();
        this.b = fastBitmap.getHeight();
        int iA = a(this.c);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            for (int i6 = 0; i6 < this.b; i6++) {
                for (int i7 = 0; i7 < this.a; i7++) {
                    int gray = 0;
                    int i8 = 0;
                    for (int i9 = 0; i9 < this.c.length; i9++) {
                        int i10 = i6 + (i9 - iA);
                        int i11 = 0;
                        while (i11 < this.c[0].length) {
                            int i12 = (i11 - iA) + i7;
                            if (i10 >= 0 && i10 < this.b && i12 >= 0 && i12 < this.a) {
                                gray += fastBitmap2.getGray(i10, i12) * this.c[i9][i11];
                                i8 += this.c[i9][i11];
                            } else if (this.f) {
                                int i13 = (i6 + i9) - iA;
                                int i14 = (i7 + i11) - iA;
                                if (i13 < 0) {
                                    i13 = 0;
                                }
                                int i15 = i13 >= this.b ? this.b - 1 : i13;
                                int i16 = i14 < 0 ? 0 : i14;
                                if (i16 >= this.a) {
                                    i16 = this.a - 1;
                                }
                                gray += fastBitmap2.getGray(i15, i16) * this.c[i9][i11];
                            }
                            i11++;
                            gray = gray;
                            i8 = i8;
                        }
                    }
                    if (i8 == 0) {
                        i5 = gray;
                    } else if (this.e) {
                        i5 = gray / this.d;
                    } else {
                        i5 = gray / i8;
                    }
                    if (i5 > 255) {
                        i5 = 255;
                    }
                    if (i5 < 0) {
                        i5 = 0;
                    }
                    fastBitmap.setGray(i6, i7, i5);
                }
            }
            return;
        }
        for (int i17 = 0; i17 < this.b; i17++) {
            for (int i18 = 0; i18 < this.a; i18++) {
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                int i22 = 0;
                for (int i23 = 0; i23 < this.c.length; i23++) {
                    int i24 = i17 + (i23 - iA);
                    int i25 = 0;
                    while (i25 < this.c[0].length) {
                        int i26 = i18 + (i25 - iA);
                        if (i24 >= 0 && i24 < this.b && i26 >= 0 && i26 < this.a) {
                            int red = (this.c[i23][i25] * fastBitmap2.getRed(i24, i26)) + i21;
                            green = (this.c[i23][i25] * fastBitmap2.getGreen(i24, i26)) + i20;
                            blue = (this.c[i23][i25] * fastBitmap2.getBlue(i24, i26)) + i19;
                            i3 = i22 + this.c[i23][i25];
                            i4 = red;
                        } else if (this.f) {
                            int i27 = (i17 + i23) - iA;
                            int i28 = (i18 + i25) - iA;
                            if (i27 < 0) {
                                i27 = 0;
                            }
                            int i29 = i27 >= this.b ? this.b - 1 : i27;
                            int i30 = i28 < 0 ? 0 : i28;
                            if (i30 >= this.a) {
                                i30 = this.a - 1;
                            }
                            int red2 = (this.c[i23][i25] * fastBitmap2.getRed(i29, i30)) + i21;
                            green = (this.c[i23][i25] * fastBitmap2.getGreen(i29, i30)) + i20;
                            blue = (this.c[i23][i25] * fastBitmap2.getBlue(i29, i30)) + i19;
                            i3 = i22 + this.c[i23][i25];
                            i4 = red2;
                        } else {
                            i3 = i22;
                            i4 = i21;
                            green = i20;
                            blue = i19;
                        }
                        i25++;
                        i19 = blue;
                        i20 = green;
                        i21 = i4;
                        i22 = i3;
                    }
                }
                if (i22 == 0) {
                    int i31 = i19;
                    i = i21;
                    i2 = i31;
                } else if (this.e) {
                    int i32 = i21 / this.d;
                    i20 /= this.d;
                    i2 = i19 / this.d;
                    i = i32;
                } else {
                    int i33 = i21 / i22;
                    i20 /= i22;
                    i2 = i19 / i22;
                    i = i33;
                }
                if (i > 255) {
                    i = 255;
                }
                if (i20 > 255) {
                    i20 = 255;
                }
                if (i2 > 255) {
                    i2 = 255;
                }
                if (i < 0) {
                    i = 0;
                }
                if (i20 < 0) {
                    i20 = 0;
                }
                if (i2 < 0) {
                    i2 = 0;
                }
                fastBitmap.setRGB(i17, i18, i, i20, i2);
            }
        }
    }

    private int a(int[][] iArr) {
        return (iArr[0].length - 1) / 2;
    }
}
