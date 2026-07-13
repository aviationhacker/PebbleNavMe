package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Maximum implements IApplyInPlace {
    private int a = 1;
    private FastBitmap b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public Maximum() {
    }

    public Maximum(int i) {
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
            int i;
            int iA = a(Maximum.this.a);
            int i2 = Maximum.this.a;
            if (this.b.lastThread) {
                this.b.endHeight = this.b.fastBitmap.getHeight();
                i = 0;
            } else {
                i = i2;
            }
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        int gray = 0;
                        for (int i5 = 0; i5 < iA; i5++) {
                            int i6 = i3 + (i5 - Maximum.this.a);
                            for (int i7 = 0; i7 < iA; i7++) {
                                int i8 = (i7 - Maximum.this.a) + i4;
                                if (i6 >= 0 && i6 < this.b.endHeight + i && i8 >= 0 && i8 < this.b.fastBitmap.getWidth() && Maximum.this.b.getGray(i6, i8) > gray) {
                                    gray = Maximum.this.b.getGray(i6, i8);
                                }
                            }
                        }
                        this.b.fastBitmap.setGray(i3, i4, gray);
                    }
                }
                return;
            }
            for (int i9 = this.b.startX; i9 < this.b.endHeight; i9++) {
                for (int i10 = 0; i10 < this.b.fastBitmap.getWidth(); i10++) {
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    int i14 = 0;
                    while (i11 < iA) {
                        int i15 = i9 + (i11 - Maximum.this.a);
                        int red = i14;
                        int green = i13;
                        int blue = i12;
                        int i16 = 0;
                        while (i16 < iA) {
                            int i17 = (i16 - Maximum.this.a) + i10;
                            if (i15 >= 0 && i15 < this.b.endHeight + i && i17 >= 0 && i17 < this.b.fastBitmap.getWidth()) {
                                if (Maximum.this.b.getRed(i15, i17) > red) {
                                    red = Maximum.this.b.getRed(i15, i17);
                                }
                                if (Maximum.this.b.getGreen(i15, i17) > green) {
                                    green = Maximum.this.b.getGreen(i15, i17);
                                }
                                if (Maximum.this.b.getBlue(i15, i17) > blue) {
                                    blue = Maximum.this.b.getBlue(i15, i17);
                                }
                            }
                            i16++;
                            red = red;
                            blue = blue;
                        }
                        i11++;
                        i12 = blue;
                        i13 = green;
                        i14 = red;
                    }
                    this.b.fastBitmap.setRGB(i9, i10, i14, i13, i12);
                }
            }
        }

        private int a(int i) {
            return (i * 2) + 1;
        }
    }
}
