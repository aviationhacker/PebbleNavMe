package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Variance implements IApplyInPlace {
    private int a = 2;
    private FastBitmap b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public Variance() {
    }

    public Variance(int i) {
        setRadius(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.b = new FastBitmap(fastBitmap);
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
            int i = Variance.this.a;
            if (this.b.lastThread) {
                i = 0;
                this.b.endHeight = this.b.fastBitmap.getHeight();
            }
            int i2 = i;
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        double gray = 0.0d;
                        int i5 = 0;
                        for (int i6 = i3 - Variance.this.a; i6 <= Variance.this.a + i3; i6++) {
                            int i7 = i4 - Variance.this.a;
                            while (i7 <= Variance.this.a + i4) {
                                if (i6 >= 0 && i6 < this.b.endHeight + i2 && i7 >= 0 && i7 < this.b.fastBitmap.getWidth()) {
                                    gray += (double) Variance.this.b.getGray(i6, i7);
                                    i5++;
                                }
                                i7++;
                                i5 = i5;
                                gray = gray;
                            }
                        }
                        double d = gray / ((double) i5);
                        double dPow = 0.0d;
                        for (int i8 = i3 - Variance.this.a; i8 <= Variance.this.a + i3; i8++) {
                            int i9 = i4 - Variance.this.a;
                            while (i9 <= Variance.this.a + i4) {
                                if (i8 >= 0 && i8 < this.b.endHeight + i2 && i9 >= 0 && i9 < this.b.fastBitmap.getWidth()) {
                                    dPow += Math.pow(((double) Variance.this.b.getGray(i8, i9)) - d, 2.0d);
                                }
                                i9++;
                                dPow = dPow;
                            }
                        }
                        double d2 = dPow / ((double) (i5 - 1));
                        if (d2 < 0.0d) {
                            d2 = 0.0d;
                        }
                        if (d2 > 255.0d) {
                            d2 = 255.0d;
                        }
                        this.b.fastBitmap.setGray(i3, i4, (int) d2);
                    }
                }
                return;
            }
            for (int i10 = this.b.startX; i10 < this.b.endHeight; i10++) {
                for (int i11 = 0; i11 < this.b.fastBitmap.getWidth(); i11++) {
                    double red = 0.0d;
                    double green = 0.0d;
                    double blue = 0.0d;
                    int i12 = 0;
                    for (int i13 = i10 - Variance.this.a; i13 <= Variance.this.a + i10; i13++) {
                        int i14 = i11 - Variance.this.a;
                        while (i14 <= Variance.this.a + i11) {
                            if (i13 >= 0 && i13 < this.b.endHeight + i2 && i14 >= 0 && i14 < this.b.fastBitmap.getWidth()) {
                                red += (double) Variance.this.b.getRed(i13, i14);
                                green += (double) Variance.this.b.getGreen(i13, i14);
                                blue += (double) Variance.this.b.getBlue(i13, i14);
                                i12++;
                            }
                            double d3 = red;
                            i14++;
                            i12 = i12;
                            blue = blue;
                            green = green;
                            red = d3;
                        }
                    }
                    double d4 = red / ((double) i12);
                    double d5 = green / ((double) i12);
                    double d6 = blue / ((double) i12);
                    double dPow2 = 0.0d;
                    double dPow3 = 0.0d;
                    double dPow4 = 0.0d;
                    for (int i15 = i10 - Variance.this.a; i15 <= Variance.this.a + i10; i15++) {
                        int i16 = i11 - Variance.this.a;
                        while (i16 <= Variance.this.a + i11) {
                            if (i15 >= 0 && i15 < this.b.endHeight + i2 && i16 >= 0 && i16 < this.b.fastBitmap.getWidth()) {
                                dPow4 += Math.pow(((double) Variance.this.b.getRed(i15, i16)) - d4, 2.0d);
                                dPow3 += Math.pow(((double) Variance.this.b.getGreen(i15, i16)) - d5, 2.0d);
                                dPow2 += Math.pow(((double) Variance.this.b.getBlue(i15, i16)) - d6, 2.0d);
                            }
                            i16++;
                            dPow2 = dPow2;
                            dPow3 = dPow3;
                            dPow4 = dPow4;
                        }
                    }
                    double d7 = dPow4 / ((double) (i12 - 1));
                    double d8 = dPow3 / ((double) (i12 - 1));
                    double d9 = dPow2 / ((double) (i12 - 1));
                    if (d7 < 0.0d) {
                        d7 = 0.0d;
                    }
                    if (d8 < 0.0d) {
                        d8 = 0.0d;
                    }
                    if (d9 < 0.0d) {
                        d9 = 0.0d;
                    }
                    double d10 = d7 > 255.0d ? 255.0d : d7;
                    double d11 = d8 > 255.0d ? 255.0d : d8;
                    if (d9 > 255.0d) {
                        d9 = 255.0d;
                    }
                    this.b.fastBitmap.setRGB(i10, i11, (int) d10, (int) d11, (int) d9);
                }
            }
        }
    }
}
