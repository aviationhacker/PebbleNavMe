package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Median implements IApplyInPlace {
    private int a = 1;
    private FastBitmap b;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public Median() {
    }

    public Median(int i) {
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
            int iA = a(Median.this.a);
            int i2 = iA * iA;
            int i3 = Median.this.a;
            if (this.b.lastThread) {
                this.b.endHeight = this.b.fastBitmap.getHeight();
                i = 0;
            } else {
                i = i3;
            }
            if (this.b.fastBitmap.isGrayscale()) {
                int[] iArr = new int[i2];
                for (int i4 = this.b.startX; i4 < this.b.endHeight; i4++) {
                    for (int i5 = 0; i5 < this.b.fastBitmap.getWidth(); i5++) {
                        int i6 = 0;
                        for (int i7 = 0; i7 < iA; i7++) {
                            int i8 = i4 + (i7 - Median.this.a);
                            for (int i9 = 0; i9 < iA; i9++) {
                                int i10 = (i9 - Median.this.a) + i5;
                                if (i8 >= 0 && i8 < this.b.endHeight + i && i10 >= 0 && i10 < this.b.fastBitmap.getWidth()) {
                                    iArr[i6] = Median.this.b.getGray(i8, i10);
                                    i6++;
                                }
                            }
                        }
                        Arrays.sort(iArr, 0, i6);
                        this.b.fastBitmap.setGray(i4, i5, iArr[i6 / 2]);
                    }
                }
                return;
            }
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            int[] iArr4 = new int[i2];
            for (int i11 = this.b.startX; i11 < this.b.endHeight; i11++) {
                for (int i12 = 0; i12 < this.b.fastBitmap.getWidth(); i12++) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < iA; i14++) {
                        int i15 = i11 + (i14 - Median.this.a);
                        for (int i16 = 0; i16 < iA; i16++) {
                            int i17 = (i16 - Median.this.a) + i12;
                            if (i15 >= 0 && i15 < this.b.endHeight + i && i17 >= 0 && i17 < this.b.fastBitmap.getWidth()) {
                                iArr2[i13] = Median.this.b.getRed(i15, i17);
                                iArr3[i13] = Median.this.b.getGreen(i15, i17);
                                iArr4[i13] = Median.this.b.getBlue(i15, i17);
                                i13++;
                            }
                        }
                    }
                    Arrays.sort(iArr2, 0, i13);
                    Arrays.sort(iArr3, 0, i13);
                    Arrays.sort(iArr4, 0, i13);
                    int i18 = i13 / 2;
                    this.b.fastBitmap.setRGB(i11, i12, iArr2[i18], iArr3[i18], iArr4[i18]);
                }
            }
        }

        private int a(int i) {
            return (i * 2) + 1;
        }
    }
}
