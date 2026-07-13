package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class FastVariance implements IApplyInPlace {
    private int a = 2;
    private FastBitmap b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public FastVariance() {
    }

    public FastVariance(int i) {
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
            int i = FastVariance.this.a;
            if (this.b.lastThread) {
                i = 0;
                this.b.endHeight = this.b.fastBitmap.getHeight();
            }
            int i2 = i;
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        int i5 = 0;
                        double d = 0.0d;
                        double gray = 0.0d;
                        for (int i6 = i3 - FastVariance.this.a; i6 <= FastVariance.this.a + i3; i6++) {
                            int i7 = i4 - FastVariance.this.a;
                            while (i7 <= FastVariance.this.a + i4) {
                                if (i6 >= 0 && i6 < this.b.endHeight + i2 && i7 >= 0 && i7 < this.b.fastBitmap.getWidth()) {
                                    i5++;
                                    double gray2 = ((double) FastVariance.this.b.getGray(i6, i7)) - d;
                                    d += gray2 / ((double) i5);
                                    gray += gray2 * (((double) FastVariance.this.b.getGray(i6, i7)) - d);
                                }
                                i7++;
                                i5 = i5;
                            }
                        }
                        double d2 = gray / ((double) (i5 - 1));
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
            for (int i8 = this.b.startX; i8 < this.b.endHeight; i8++) {
                for (int i9 = 0; i9 < this.b.fastBitmap.getWidth(); i9++) {
                    int i10 = 0;
                    double d3 = 0.0d;
                    double d4 = 0.0d;
                    double d5 = 0.0d;
                    double red = 0.0d;
                    double green = 0.0d;
                    double blue = 0.0d;
                    for (int i11 = i8 - FastVariance.this.a; i11 <= FastVariance.this.a + i8; i11++) {
                        int i12 = i9 - FastVariance.this.a;
                        while (i12 <= FastVariance.this.a + i9) {
                            if (i11 >= 0 && i11 < this.b.endHeight + i2 && i12 >= 0 && i12 < this.b.fastBitmap.getWidth()) {
                                i10++;
                                double red2 = ((double) FastVariance.this.b.getRed(i11, i12)) - d3;
                                double green2 = ((double) FastVariance.this.b.getGreen(i11, i12)) - d4;
                                double blue2 = ((double) FastVariance.this.b.getBlue(i11, i12)) - d5;
                                d3 += red2 / ((double) i10);
                                d4 += green2 / ((double) i10);
                                d5 += blue2 / ((double) i10);
                                red += red2 * (((double) FastVariance.this.b.getRed(i11, i12)) - d3);
                                green += (((double) FastVariance.this.b.getGreen(i11, i12)) - d4) * green2;
                                blue += (((double) FastVariance.this.b.getBlue(i11, i12)) - d5) * blue2;
                            }
                            i12++;
                            i10 = i10;
                        }
                    }
                    double d6 = red / ((double) (i10 - 1));
                    double d7 = green / ((double) (i10 - 1));
                    double d8 = blue / ((double) (i10 - 1));
                    if (d6 < 0.0d) {
                        d6 = 0.0d;
                    }
                    if (d7 < 0.0d) {
                        d7 = 0.0d;
                    }
                    if (d8 < 0.0d) {
                        d8 = 0.0d;
                    }
                    double d9 = d6 > 255.0d ? 255.0d : d6;
                    double d10 = d7 > 255.0d ? 255.0d : d7;
                    if (d8 > 255.0d) {
                        d8 = 255.0d;
                    }
                    this.b.fastBitmap.setRGB(i8, i9, (int) d9, (int) d10, (int) d8);
                }
            }
        }
    }
}
