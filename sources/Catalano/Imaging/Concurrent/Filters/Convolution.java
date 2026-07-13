package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Convolution implements IApplyInPlace {
    private int[][] a;
    private int b;
    private boolean c;
    private FastBitmap d;
    private boolean e;

    public int[][] getKernel() {
        return this.a;
    }

    public void setKernel(int[][] iArr) {
        this.a = iArr;
    }

    public void setDivision(int i) {
        this.b = i;
        this.c = true;
    }

    public boolean isReplicate() {
        return this.e;
    }

    public void setReplicate(boolean z) {
        this.e = z;
    }

    public Convolution() {
        this.c = false;
        this.e = false;
    }

    public Convolution(int[][] iArr) {
        this.c = false;
        this.e = false;
        this.a = iArr;
    }

    public Convolution(int[][] iArr, boolean z) {
        this.c = false;
        this.e = false;
        this.a = iArr;
        this.e = z;
    }

    public Convolution(int[][] iArr, int i) {
        this.c = false;
        this.e = false;
        this.a = iArr;
        this.b = i;
        this.c = true;
    }

    public Convolution(int[][] iArr, int i, boolean z) {
        this.c = false;
        this.e = false;
        this.a = iArr;
        this.b = i;
        this.e = z;
        this.c = true;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        this.d = new FastBitmap(fastBitmap);
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < iAvailableProcessors) {
            if (i2 == i) {
                z = true;
            }
            int i4 = i3 + height;
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, i4, z)));
            threadArr[i2].start();
            i2++;
            i3 = i4;
        }
        for (int i5 = 0; i5 < iAvailableProcessors; i5++) {
            try {
                threadArr[i5].join();
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
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int green;
            int blue;
            int i6;
            int i7;
            int iA = Convolution.this.a(Convolution.this.a);
            if (this.b.lastThread) {
                this.b.endHeight = this.b.fastBitmap.getHeight();
                i = 0;
            } else {
                i = iA;
            }
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i8 = this.b.startX; i8 < this.b.endHeight; i8++) {
                    for (int i9 = 0; i9 < this.b.fastBitmap.getWidth(); i9++) {
                        int gray = 0;
                        int i10 = 0;
                        for (int i11 = 0; i11 < Convolution.this.a.length; i11++) {
                            int i12 = i8 + (i11 - iA);
                            int i13 = 0;
                            while (i13 < Convolution.this.a[0].length) {
                                int i14 = (i13 - iA) + i9;
                                if (i12 < 0 || i12 >= this.b.endHeight + i || i14 < 0 || i14 >= this.b.fastBitmap.getWidth()) {
                                    if (Convolution.this.e) {
                                        int i15 = (i8 + i11) - iA;
                                        int i16 = (i9 + i13) - iA;
                                        if (i15 < 0) {
                                            i15 = 0;
                                        }
                                        int i17 = i15 >= this.b.endHeight ? this.b.endHeight - 1 : i15;
                                        int width = i16 < 0 ? 0 : i16;
                                        if (width >= this.b.fastBitmap.getWidth()) {
                                            width = this.b.fastBitmap.getWidth() - 1;
                                        }
                                        gray += Convolution.this.d.getGray(i17, width) * Convolution.this.a[i11][i13];
                                        i7 = Convolution.this.a[i11][i13] + i10;
                                    } else {
                                        i7 = i10;
                                    }
                                } else {
                                    gray += Convolution.this.d.getGray(i12, i14) * Convolution.this.a[i11][i13];
                                    i7 = Convolution.this.a[i11][i13] + i10;
                                }
                                i13++;
                                gray = gray;
                                i10 = i7;
                            }
                        }
                        if (i10 == 0) {
                            i6 = gray;
                        } else if (Convolution.this.c) {
                            i6 = gray / Convolution.this.b;
                        } else {
                            i6 = gray / i10;
                        }
                        if (i6 > 255) {
                            i6 = 255;
                        }
                        if (i6 < 0) {
                            i6 = 0;
                        }
                        this.b.fastBitmap.setGray(i8, i9, i6);
                    }
                }
                return;
            }
            for (int i18 = this.b.startX; i18 < this.b.endHeight; i18++) {
                for (int i19 = 0; i19 < this.b.fastBitmap.getWidth(); i19++) {
                    int i20 = 0;
                    int i21 = 0;
                    int i22 = 0;
                    int i23 = 0;
                    for (int i24 = 0; i24 < Convolution.this.a.length; i24++) {
                        int i25 = i18 + (i24 - iA);
                        int i26 = 0;
                        while (i26 < Convolution.this.a[0].length) {
                            int i27 = i19 + (i26 - iA);
                            if (i25 < 0 || i25 >= this.b.endHeight + i || i27 < 0 || i27 >= this.b.fastBitmap.getWidth()) {
                                if (Convolution.this.e) {
                                    int i28 = (i18 + i24) - iA;
                                    int i29 = (i19 + i26) - iA;
                                    if (i28 < 0) {
                                        i28 = 0;
                                    }
                                    int i30 = i28 >= this.b.endHeight ? this.b.endHeight - 1 : i28;
                                    int width2 = i29 < 0 ? 0 : i29;
                                    if (width2 >= this.b.fastBitmap.getWidth()) {
                                        width2 = this.b.fastBitmap.getWidth() - 1;
                                    }
                                    int red = (Convolution.this.a[i24][i26] * Convolution.this.d.getRed(i30, width2)) + i22;
                                    green = (Convolution.this.a[i24][i26] * Convolution.this.d.getGreen(i30, width2)) + i21;
                                    blue = (Convolution.this.a[i24][i26] * Convolution.this.d.getBlue(i30, width2)) + i20;
                                    i4 = i23 + Convolution.this.a[i24][i26];
                                    i5 = red;
                                } else {
                                    i4 = i23;
                                    i5 = i22;
                                    green = i21;
                                    blue = i20;
                                }
                            } else {
                                int red2 = (Convolution.this.a[i24][i26] * Convolution.this.d.getRed(i25, i27)) + i22;
                                green = (Convolution.this.a[i24][i26] * Convolution.this.d.getGreen(i25, i27)) + i21;
                                blue = (Convolution.this.a[i24][i26] * Convolution.this.d.getBlue(i25, i27)) + i20;
                                i4 = i23 + Convolution.this.a[i24][i26];
                                i5 = red2;
                            }
                            i26++;
                            i20 = blue;
                            i21 = green;
                            i22 = i5;
                            i23 = i4;
                        }
                    }
                    if (i23 == 0) {
                        int i31 = i20;
                        i2 = i22;
                        i3 = i31;
                    } else if (Convolution.this.c) {
                        int i32 = i22 / Convolution.this.b;
                        i21 /= Convolution.this.b;
                        i3 = i20 / Convolution.this.b;
                        i2 = i32;
                    } else {
                        int i33 = i22 / i23;
                        i21 /= i23;
                        i3 = i20 / i23;
                        i2 = i33;
                    }
                    if (i2 > 255) {
                        i2 = 255;
                    }
                    if (i21 > 255) {
                        i21 = 255;
                    }
                    if (i3 > 255) {
                        i3 = 255;
                    }
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    if (i21 < 0) {
                        i21 = 0;
                    }
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    this.b.fastBitmap.setRGB(i18, i19, i2, i21, i3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int[][] iArr) {
        return (iArr[0].length - 1) / 2;
    }
}
