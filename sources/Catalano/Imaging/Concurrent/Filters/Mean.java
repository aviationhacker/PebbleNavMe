package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Mean implements IApplyInPlace {
    private int a;
    private FastBitmap b;
    private Arithmetic c;
    private int d;

    public enum Arithmetic {
        Mean,
        Harmonic,
        ContraHarmonic,
        Geometry
    }

    public Mean() {
        this.a = 1;
        this.c = Arithmetic.Mean;
        this.d = 1;
    }

    public Mean(int i) {
        this.a = 1;
        this.c = Arithmetic.Mean;
        this.d = 1;
        this.a = i < 1 ? 1 : i;
    }

    public Mean(Arithmetic arithmetic) {
        this.a = 1;
        this.c = Arithmetic.Mean;
        this.d = 1;
        this.c = arithmetic;
    }

    public Mean(int i, Arithmetic arithmetic) {
        this.a = 1;
        this.c = Arithmetic.Mean;
        this.d = 1;
        this.a = i < 1 ? 1 : i;
        this.c = arithmetic;
    }

    public Arithmetic getArithmetic() {
        return this.c;
    }

    public void setArithmetic(Arithmetic arithmetic) {
        this.c = arithmetic;
    }

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public int getOrder() {
        return this.d;
    }

    public void setOrder(int i) {
        this.d = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.b = new FastBitmap(fastBitmap);
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = height;
        while (i2 < iAvailableProcessors) {
            if (i2 == i) {
                z = true;
            }
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, i4, z)));
            threadArr[i2].start();
            i2++;
            int i5 = i4;
            i4 += height;
            i3 = i5;
        }
        for (int i6 = 0; i6 < iAvailableProcessors; i6++) {
            try {
                threadArr[i6].join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    class a implements Runnable {
        private Share b;

        public a(Share share) {
            this.b = share;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iA = Mean.this.a(Mean.this.a);
            int i = Mean.this.a;
            if (this.b.lastThread) {
                i = 0;
                this.b.endHeight = this.b.fastBitmap.getHeight();
            }
            int i2 = i;
            switch (Mean.this.c) {
                case Mean:
                    if (this.b.fastBitmap.isGrayscale()) {
                        for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                            for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                                int i5 = 0;
                                int i6 = 0;
                                int i7 = 0;
                                while (i7 < iA) {
                                    int i8 = i3 + (i7 - Mean.this.a);
                                    int gray = i6;
                                    int i9 = i5;
                                    for (int i10 = 0; i10 < iA; i10++) {
                                        int i11 = (i10 - Mean.this.a) + i4;
                                        if (i8 >= 0 && i8 < this.b.endHeight + i2 && i11 >= 0 && i11 < this.b.fastBitmap.getWidth()) {
                                            gray += Mean.this.b.getGray(i8, i11);
                                            i9++;
                                        }
                                    }
                                    i7++;
                                    i5 = i9;
                                    i6 = gray;
                                }
                                this.b.fastBitmap.setGray(i3, i4, i6 / i5);
                            }
                        }
                    } else if (this.b.fastBitmap.isRGB()) {
                        for (int i12 = this.b.startX; i12 < this.b.endHeight; i12++) {
                            for (int i13 = 0; i13 < this.b.fastBitmap.getWidth(); i13++) {
                                int i14 = 0;
                                int i15 = 0;
                                int i16 = 0;
                                int i17 = 0;
                                int i18 = 0;
                                while (i16 < iA) {
                                    int i19 = i12 + (i16 - Mean.this.a);
                                    int blue = i15;
                                    int i20 = i14;
                                    int i21 = i18;
                                    int green = i17;
                                    int red = i21;
                                    for (int i22 = 0; i22 < iA; i22++) {
                                        int i23 = (i22 - Mean.this.a) + i13;
                                        if (i19 >= 0 && i19 < this.b.endHeight + i2 && i23 >= 0 && i23 < this.b.fastBitmap.getWidth()) {
                                            red += Mean.this.b.getRed(i19, i23);
                                            green += Mean.this.b.getGreen(i19, i23);
                                            blue += Mean.this.b.getBlue(i19, i23);
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
                                this.b.fastBitmap.setRGB(i12, i13, i18 / i14, i17 / i14, i15 / i14);
                            }
                        }
                    }
                    break;
                case Harmonic:
                    if (this.b.fastBitmap.isGrayscale()) {
                        for (int i25 = this.b.startX; i25 < this.b.endHeight; i25++) {
                            for (int i26 = 0; i26 < this.b.fastBitmap.getWidth(); i26++) {
                                int i27 = 0;
                                double d = 0.0d;
                                int i28 = 0;
                                while (i28 < iA) {
                                    int i29 = i25 + (i28 - Mean.this.a);
                                    double d2 = d;
                                    int i30 = i27;
                                    double gray2 = d2;
                                    for (int i31 = 0; i31 < iA; i31++) {
                                        int i32 = (i31 - Mean.this.a) + i26;
                                        if (i29 >= 0 && i29 < this.b.endHeight + i2 && i32 >= 0 && i32 < this.b.fastBitmap.getWidth()) {
                                            gray2 += 1.0d / ((double) Mean.this.b.getGray(i29, i32));
                                            i30++;
                                        }
                                    }
                                    i28++;
                                    i27 = i30;
                                    d = gray2;
                                }
                                this.b.fastBitmap.setGray(i25, i26, (int) (((double) i27) / d));
                            }
                        }
                    } else if (this.b.fastBitmap.isRGB()) {
                        for (int i33 = this.b.startX; i33 < this.b.endHeight; i33++) {
                            for (int i34 = 0; i34 < this.b.fastBitmap.getWidth(); i34++) {
                                int i35 = 0;
                                double blue2 = 0.0d;
                                int i36 = 0;
                                double green2 = 0.0d;
                                double red2 = 0.0d;
                                while (i36 < iA) {
                                    int i37 = i33 + (i36 - Mean.this.a);
                                    int i38 = i35;
                                    for (int i39 = 0; i39 < iA; i39++) {
                                        int i40 = (i39 - Mean.this.a) + i34;
                                        if (i37 >= 0 && i37 < this.b.endHeight + i2 && i40 >= 0 && i40 < this.b.fastBitmap.getWidth()) {
                                            red2 += 1.0d / ((double) Mean.this.b.getRed(i37, i40));
                                            green2 += 1.0d / ((double) Mean.this.b.getGreen(i37, i40));
                                            blue2 += 1.0d / ((double) Mean.this.b.getBlue(i37, i40));
                                            i38++;
                                        }
                                    }
                                    i36++;
                                    i35 = i38;
                                }
                                this.b.fastBitmap.setRGB(i33, i34, (int) (((double) i35) / red2), (int) (((double) i35) / green2), (int) (((double) i35) / blue2));
                            }
                        }
                    }
                    break;
                case ContraHarmonic:
                    if (this.b.fastBitmap.isGrayscale()) {
                        for (int i41 = this.b.startX; i41 < this.b.endHeight; i41++) {
                            for (int i42 = 0; i42 < this.b.fastBitmap.getWidth(); i42++) {
                                double d3 = 0.0d;
                                int i43 = 0;
                                double d4 = 0.0d;
                                while (i43 < iA) {
                                    int i44 = i41 + (i43 - Mean.this.a);
                                    double dPow = d3;
                                    double dPow2 = d4;
                                    for (int i45 = 0; i45 < iA; i45++) {
                                        int i46 = (i45 - Mean.this.a) + i42;
                                        if (i44 >= 0 && i44 < this.b.endHeight + i2 && i46 >= 0 && i46 < this.b.fastBitmap.getWidth()) {
                                            dPow2 += Math.pow(Mean.this.b.getGray(i44, i46), Mean.this.d + 1);
                                            dPow += Math.pow(Mean.this.b.getGray(i44, i46), Mean.this.d);
                                        }
                                    }
                                    i43++;
                                    d4 = dPow2;
                                    d3 = dPow;
                                }
                                this.b.fastBitmap.setGray(i41, i42, (int) (d4 / d3));
                            }
                        }
                    } else if (this.b.fastBitmap.isRGB()) {
                        for (int i47 = this.b.startX; i47 < this.b.endHeight; i47++) {
                            for (int i48 = 0; i48 < this.b.fastBitmap.getWidth(); i48++) {
                                double dPow3 = 0.0d;
                                double dPow4 = 0.0d;
                                double dPow5 = 0.0d;
                                double dPow6 = 0.0d;
                                double dPow7 = 0.0d;
                                double dPow8 = 0.0d;
                                for (int i49 = 0; i49 < iA; i49++) {
                                    int i50 = i47 + (i49 - Mean.this.a);
                                    for (int i51 = 0; i51 < iA; i51++) {
                                        int i52 = (i51 - Mean.this.a) + i48;
                                        if (i50 >= 0 && i50 < this.b.endHeight + i2 && i52 >= 0 && i52 < this.b.fastBitmap.getWidth()) {
                                            dPow8 += Math.pow(Mean.this.b.getRed(i50, i52), Mean.this.d + 1);
                                            dPow7 += Math.pow(Mean.this.b.getGreen(i50, i52), Mean.this.d + 1);
                                            dPow3 += Math.pow(Mean.this.b.getBlue(i50, i52), Mean.this.d + 1);
                                            dPow6 += Math.pow(Mean.this.b.getRed(i50, i52), Mean.this.d);
                                            dPow5 += Math.pow(Mean.this.b.getGreen(i50, i52), Mean.this.d);
                                            dPow4 += Math.pow(Mean.this.b.getBlue(i50, i52), Mean.this.d);
                                        }
                                    }
                                }
                                this.b.fastBitmap.setRGB(i47, i48, (int) (dPow8 / dPow6), (int) (dPow7 / dPow5), (int) (dPow3 / dPow4));
                            }
                        }
                    }
                    break;
                case Geometry:
                    if (this.b.fastBitmap.isGrayscale()) {
                        for (int i53 = this.b.startX; i53 < this.b.endHeight; i53++) {
                            for (int i54 = 0; i54 < this.b.fastBitmap.getWidth(); i54++) {
                                int i55 = 0;
                                double d5 = 1.0d;
                                int i56 = 0;
                                while (i56 < iA) {
                                    int i57 = i53 + (i56 - Mean.this.a);
                                    double d6 = d5;
                                    int i58 = i55;
                                    double gray3 = d6;
                                    for (int i59 = 0; i59 < iA; i59++) {
                                        int i60 = (i59 - Mean.this.a) + i54;
                                        if (i57 >= 0 && i57 < this.b.endHeight + i2 && i60 >= 0 && i60 < this.b.fastBitmap.getWidth()) {
                                            gray3 *= (double) Mean.this.b.getGray(i57, i60);
                                            i58++;
                                        }
                                    }
                                    i56++;
                                    i55 = i58;
                                    d5 = gray3;
                                }
                                this.b.fastBitmap.setGray(i53, i54, (int) Math.pow(d5, 1.0d / ((double) i55)));
                            }
                        }
                    } else if (this.b.fastBitmap.isRGB()) {
                        for (int i61 = this.b.startX; i61 < this.b.endHeight; i61++) {
                            for (int i62 = 0; i62 < this.b.fastBitmap.getWidth(); i62++) {
                                int i63 = 0;
                                double blue3 = 1.0d;
                                int i64 = 0;
                                double green3 = 1.0d;
                                double red3 = 1.0d;
                                while (i64 < iA) {
                                    int i65 = i61 + (i64 - Mean.this.a);
                                    int i66 = i63;
                                    for (int i67 = 0; i67 < iA; i67++) {
                                        int i68 = (i67 - Mean.this.a) + i62;
                                        if (i65 >= 0 && i65 < this.b.endHeight + i2 && i68 >= 0 && i68 < this.b.fastBitmap.getWidth()) {
                                            red3 *= (double) Mean.this.b.getRed(i65, i68);
                                            green3 *= (double) Mean.this.b.getGreen(i65, i68);
                                            blue3 *= (double) Mean.this.b.getBlue(i65, i68);
                                            i66++;
                                        }
                                    }
                                    i64++;
                                    i63 = i66;
                                }
                                this.b.fastBitmap.setRGB(i61, i62, (int) Math.pow(red3, 1.0d / ((double) i63)), (int) Math.pow(green3, 1.0d / ((double) i63)), (int) Math.pow(blue3, 1.0d / ((double) i63)));
                            }
                        }
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i) {
        return (i * 2) + 1;
    }
}
