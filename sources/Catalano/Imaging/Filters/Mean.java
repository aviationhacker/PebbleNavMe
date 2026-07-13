package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Mean implements IApplyInPlace {
    private int a;
    private Arithmetic b;
    private int c;

    public enum Arithmetic {
        Mean,
        Harmonic,
        ContraHarmonic,
        Geometry
    }

    public Mean() {
        this.a = 1;
        this.b = Arithmetic.Mean;
        this.c = 1;
    }

    public Mean(int i) {
        this.a = 1;
        this.b = Arithmetic.Mean;
        this.c = 1;
        this.a = i < 1 ? 1 : i;
    }

    public Mean(Arithmetic arithmetic) {
        this.a = 1;
        this.b = Arithmetic.Mean;
        this.c = 1;
        this.b = arithmetic;
    }

    public Mean(int i, Arithmetic arithmetic) {
        this.a = 1;
        this.b = Arithmetic.Mean;
        this.c = 1;
        this.a = i < 1 ? 1 : i;
        this.b = arithmetic;
    }

    public Arithmetic getArithmetic() {
        return this.b;
    }

    public void setArithmetic(Arithmetic arithmetic) {
        this.b = arithmetic;
    }

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public int getOrder() {
        return this.c;
    }

    public void setOrder(int i) {
        this.c = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(this.a);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        switch (this.b) {
            case Mean:
                if (fastBitmap.isGrayscale()) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < height) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3;
                                if (i4 < width) {
                                    int i5 = 0;
                                    int i6 = 0;
                                    int i7 = 0;
                                    while (i7 < iA) {
                                        int i8 = i2 + (i7 - this.a);
                                        int gray = i6;
                                        int i9 = i5;
                                        for (int i10 = 0; i10 < iA; i10++) {
                                            int i11 = (i10 - this.a) + i4;
                                            if (i8 >= 0 && i8 < height && i11 >= 0 && i11 < width) {
                                                gray += fastBitmap2.getGray(i8, i11);
                                                i9++;
                                            }
                                        }
                                        i7++;
                                        i5 = i9;
                                        i6 = gray;
                                    }
                                    fastBitmap.setGray(i2, i4, i6 / i5);
                                    i3 = i4 + 1;
                                }
                            }
                            i = i2 + 1;
                        }
                    }
                } else if (fastBitmap.isRGB()) {
                    for (int i12 = 0; i12 < height; i12++) {
                        for (int i13 = 0; i13 < width; i13++) {
                            int i14 = 0;
                            int i15 = 0;
                            int i16 = 0;
                            int i17 = 0;
                            int i18 = 0;
                            while (i16 < iA) {
                                int i19 = i12 + (i16 - this.a);
                                int blue = i15;
                                int i20 = i14;
                                int i21 = i18;
                                int green = i17;
                                int red = i21;
                                for (int i22 = 0; i22 < iA; i22++) {
                                    int i23 = (i22 - this.a) + i13;
                                    if (i19 >= 0 && i19 < height && i23 >= 0 && i23 < width) {
                                        red += fastBitmap2.getRed(i19, i23);
                                        green += fastBitmap2.getGreen(i19, i23);
                                        blue += fastBitmap2.getBlue(i19, i23);
                                        i20++;
                                    }
                                }
                                i16++;
                                i14 = i20;
                                i15 = blue;
                                int i24 = red;
                                i17 = green;
                                i18 = i24;
                            }
                            fastBitmap.setRGB(i12, i13, i18 / i14, i17 / i14, i15 / i14);
                        }
                    }
                }
                break;
            case Harmonic:
                if (fastBitmap.isGrayscale()) {
                    int i25 = 0;
                    while (true) {
                        int i26 = i25;
                        if (i26 < height) {
                            int i27 = 0;
                            while (true) {
                                int i28 = i27;
                                if (i28 < width) {
                                    int i29 = 0;
                                    double d = 0.0d;
                                    int i30 = 0;
                                    while (i30 < iA) {
                                        int i31 = i26 + (i30 - this.a);
                                        double d2 = d;
                                        int i32 = i29;
                                        double gray2 = d2;
                                        for (int i33 = 0; i33 < iA; i33++) {
                                            int i34 = (i33 - this.a) + i28;
                                            if (i31 >= 0 && i31 < height && i34 >= 0 && i34 < width) {
                                                gray2 += 1.0d / ((double) fastBitmap2.getGray(i31, i34));
                                                i32++;
                                            }
                                        }
                                        i30++;
                                        i29 = i32;
                                        d = gray2;
                                    }
                                    fastBitmap.setGray(i26, i28, (int) (((double) i29) / d));
                                    i27 = i28 + 1;
                                }
                            }
                            i25 = i26 + 1;
                        }
                    }
                } else if (fastBitmap.isRGB()) {
                    for (int i35 = 0; i35 < height; i35++) {
                        for (int i36 = 0; i36 < width; i36++) {
                            int i37 = 0;
                            double blue2 = 0.0d;
                            int i38 = 0;
                            double green2 = 0.0d;
                            double red2 = 0.0d;
                            while (i38 < iA) {
                                int i39 = i35 + (i38 - this.a);
                                int i40 = i37;
                                for (int i41 = 0; i41 < iA; i41++) {
                                    int i42 = (i41 - this.a) + i36;
                                    if (i39 >= 0 && i39 < height && i42 >= 0 && i42 < width) {
                                        red2 += 1.0d / ((double) fastBitmap2.getRed(i39, i42));
                                        green2 += 1.0d / ((double) fastBitmap2.getGreen(i39, i42));
                                        blue2 += 1.0d / ((double) fastBitmap2.getBlue(i39, i42));
                                        i40++;
                                    }
                                }
                                i38++;
                                i37 = i40;
                            }
                            fastBitmap.setRGB(i35, i36, (int) (((double) i37) / red2), (int) (((double) i37) / green2), (int) (((double) i37) / blue2));
                        }
                    }
                }
                break;
            case ContraHarmonic:
                if (fastBitmap.isGrayscale()) {
                    int i43 = 0;
                    while (true) {
                        int i44 = i43;
                        if (i44 < height) {
                            int i45 = 0;
                            while (true) {
                                int i46 = i45;
                                if (i46 < width) {
                                    double d3 = 0.0d;
                                    int i47 = 0;
                                    double d4 = 0.0d;
                                    while (i47 < iA) {
                                        int i48 = i44 + (i47 - this.a);
                                        double dPow = d3;
                                        double dPow2 = d4;
                                        for (int i49 = 0; i49 < iA; i49++) {
                                            int i50 = (i49 - this.a) + i46;
                                            if (i48 >= 0 && i48 < height && i50 >= 0 && i50 < width) {
                                                dPow2 += Math.pow(fastBitmap2.getGray(i48, i50), this.c + 1);
                                                dPow += Math.pow(fastBitmap2.getGray(i48, i50), this.c);
                                            }
                                        }
                                        i47++;
                                        d4 = dPow2;
                                        d3 = dPow;
                                    }
                                    fastBitmap.setGray(i44, i46, (int) (d4 / d3));
                                    i45 = i46 + 1;
                                }
                            }
                            i43 = i44 + 1;
                        }
                    }
                } else if (fastBitmap.isRGB()) {
                    for (int i51 = 0; i51 < height; i51++) {
                        for (int i52 = 0; i52 < width; i52++) {
                            double dPow3 = 0.0d;
                            double dPow4 = 0.0d;
                            double dPow5 = 0.0d;
                            double dPow6 = 0.0d;
                            double dPow7 = 0.0d;
                            double dPow8 = 0.0d;
                            for (int i53 = 0; i53 < iA; i53++) {
                                int i54 = i51 + (i53 - this.a);
                                for (int i55 = 0; i55 < iA; i55++) {
                                    int i56 = (i55 - this.a) + i52;
                                    if (i54 >= 0 && i54 < height && i56 >= 0 && i56 < width) {
                                        dPow8 += Math.pow(fastBitmap2.getRed(i54, i56), this.c + 1);
                                        dPow7 += Math.pow(fastBitmap2.getGreen(i54, i56), this.c + 1);
                                        dPow3 += Math.pow(fastBitmap2.getBlue(i54, i56), this.c + 1);
                                        dPow6 += Math.pow(fastBitmap2.getRed(i54, i56), this.c);
                                        dPow5 += Math.pow(fastBitmap2.getGreen(i54, i56), this.c);
                                        dPow4 += Math.pow(fastBitmap2.getBlue(i54, i56), this.c);
                                    }
                                }
                            }
                            fastBitmap.setRGB(i51, i52, (int) (dPow8 / dPow6), (int) (dPow7 / dPow5), (int) (dPow3 / dPow4));
                        }
                    }
                }
                break;
            case Geometry:
                if (fastBitmap.isGrayscale()) {
                    int i57 = 0;
                    while (true) {
                        int i58 = i57;
                        if (i58 < height) {
                            int i59 = 0;
                            while (true) {
                                int i60 = i59;
                                if (i60 < width) {
                                    int i61 = 0;
                                    double d5 = 1.0d;
                                    int i62 = 0;
                                    while (i62 < iA) {
                                        int i63 = i58 + (i62 - this.a);
                                        double d6 = d5;
                                        int i64 = i61;
                                        double gray3 = d6;
                                        for (int i65 = 0; i65 < iA; i65++) {
                                            int i66 = (i65 - this.a) + i60;
                                            if (i63 >= 0 && i63 < height && i66 >= 0 && i66 < width) {
                                                gray3 *= (double) fastBitmap2.getGray(i63, i66);
                                                i64++;
                                            }
                                        }
                                        i62++;
                                        i61 = i64;
                                        d5 = gray3;
                                    }
                                    fastBitmap.setGray(i58, i60, (int) Math.pow(d5, 1.0d / ((double) i61)));
                                    i59 = i60 + 1;
                                }
                            }
                            i57 = i58 + 1;
                        }
                    }
                } else if (fastBitmap.isRGB()) {
                    for (int i67 = 0; i67 < height; i67++) {
                        for (int i68 = 0; i68 < width; i68++) {
                            int i69 = 0;
                            double blue3 = 1.0d;
                            int i70 = 0;
                            double green3 = 1.0d;
                            double red3 = 1.0d;
                            while (i70 < iA) {
                                int i71 = i67 + (i70 - this.a);
                                int i72 = i69;
                                for (int i73 = 0; i73 < iA; i73++) {
                                    int i74 = (i73 - this.a) + i68;
                                    if (i71 >= 0 && i71 < height && i74 >= 0 && i74 < width) {
                                        red3 *= (double) fastBitmap2.getRed(i71, i74);
                                        green3 *= (double) fastBitmap2.getGreen(i71, i74);
                                        blue3 *= (double) fastBitmap2.getBlue(i71, i74);
                                        i72++;
                                    }
                                }
                                i70++;
                                i69 = i72;
                            }
                            fastBitmap.setRGB(i67, i68, (int) Math.pow(red3, 1.0d / ((double) i69)), (int) Math.pow(green3, 1.0d / ((double) i69)), (int) Math.pow(blue3, 1.0d / ((double) i69)));
                        }
                    }
                }
                break;
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
