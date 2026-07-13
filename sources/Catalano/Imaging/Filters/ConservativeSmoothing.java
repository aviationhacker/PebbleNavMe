package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ConservativeSmoothing implements IApplyInPlace {
    private int a = 1;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public ConservativeSmoothing() {
    }

    public ConservativeSmoothing(int i) {
        setRadius(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(this.a);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isRGB()) {
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    int i3 = 255;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 255;
                    int i8 = 0;
                    int i9 = 255;
                    while (i4 < iA) {
                        int i10 = i + (i4 - this.a);
                        int i11 = 0;
                        int i12 = i8;
                        int red = i6;
                        int blue = i3;
                        int red2 = i7;
                        int green = i5;
                        int green2 = i9;
                        int blue2 = i12;
                        while (i11 < iA) {
                            int i13 = (i11 - this.a) + i2;
                            if (i10 >= 0 && i10 < height && i13 >= 0 && i13 < width && i4 != i11) {
                                if (fastBitmap2.getRed(i10, i13) > red) {
                                    red = fastBitmap2.getRed(i10, i13);
                                }
                                if (fastBitmap2.getGreen(i10, i13) > green) {
                                    green = fastBitmap2.getGreen(i10, i13);
                                }
                                if (fastBitmap2.getBlue(i10, i13) > blue2) {
                                    blue2 = fastBitmap2.getBlue(i10, i13);
                                }
                                if (fastBitmap2.getRed(i10, i13) < red2) {
                                    red2 = fastBitmap2.getRed(i10, i13);
                                }
                                if (fastBitmap2.getGreen(i10, i13) < green2) {
                                    green2 = fastBitmap2.getGreen(i10, i13);
                                }
                                if (fastBitmap2.getBlue(i10, i13) < blue) {
                                    blue = fastBitmap2.getBlue(i10, i13);
                                }
                            }
                            i11++;
                            red2 = red2;
                            blue = blue;
                        }
                        i4++;
                        int i14 = blue2;
                        i9 = green2;
                        i5 = green;
                        i7 = red2;
                        i3 = blue;
                        i6 = red;
                        i8 = i14;
                    }
                    int red3 = fastBitmap2.getRed(i, i2);
                    int green3 = fastBitmap2.getGreen(i, i2);
                    int blue3 = fastBitmap2.getBlue(i, i2);
                    if (red3 <= i6) {
                        i6 = red3;
                    }
                    if (green3 <= i5) {
                        i5 = green3;
                    }
                    if (blue3 <= i8) {
                        i8 = blue3;
                    }
                    if (i6 >= i7) {
                        i7 = i6;
                    }
                    if (i5 >= i9) {
                        i9 = i5;
                    }
                    if (i8 >= i3) {
                        i3 = i8;
                    }
                    fastBitmap.setRGB(i, i2, i7, i9, i3);
                }
            }
            return;
        }
        for (int i15 = 0; i15 < height; i15++) {
            for (int i16 = 0; i16 < width; i16++) {
                int i17 = 0;
                int i18 = 0;
                int i19 = 255;
                while (i18 < iA) {
                    int i20 = i15 + (i18 - this.a);
                    int i21 = i17;
                    int gray = i19;
                    int gray2 = i21;
                    for (int i22 = 0; i22 < iA; i22++) {
                        int i23 = (i22 - this.a) + i16;
                        if (i20 >= 0 && i20 < height && i23 >= 0 && i23 < width && i18 != i22) {
                            if (fastBitmap2.getGray(i20, i23) > gray2) {
                                gray2 = fastBitmap2.getGray(i20, i23);
                            }
                            if (fastBitmap2.getGray(i20, i23) < gray) {
                                gray = fastBitmap2.getGray(i20, i23);
                            }
                        }
                    }
                    i18++;
                    int i24 = gray2;
                    i19 = gray;
                    i17 = i24;
                }
                int gray3 = fastBitmap2.getGray(i15, i16);
                if (gray3 <= i17) {
                    i17 = gray3;
                }
                if (i17 >= i19) {
                    i19 = i17;
                }
                fastBitmap.setGray(i15, i16, i19);
            }
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
