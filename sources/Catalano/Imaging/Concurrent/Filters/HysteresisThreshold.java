package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class HysteresisThreshold implements IApplyInPlace {
    int a;
    int b;

    public int getLowThreshold() {
        return this.a;
    }

    public void setLowThreshold(int i) {
        this.a = i;
    }

    public int getHighThreshold() {
        return this.b;
    }

    public void setHighThreshold(int i) {
        this.b = i;
    }

    public HysteresisThreshold() {
        this.a = 20;
        this.b = 100;
    }

    public HysteresisThreshold(int i, int i2) {
        this.a = 20;
        this.b = 100;
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Hysteresis Threshold only works with grayscale images.");
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        int i3 = 1;
        while (i2 < iAvailableProcessors) {
            if (i == i2) {
                height = (fastBitmap.getHeight() - i3) - 1;
            }
            int i4 = height;
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, 1, fastBitmap.getWidth() - 1, i3 + i4)));
            threadArr[i2].start();
            i3 += i4;
            i2++;
            height = i4;
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
            for (int i = this.b.startX; i < this.b.endHeight; i++) {
                for (int i2 = this.b.startY; i2 < this.b.endWidth; i2++) {
                    if (this.b.fastBitmap.getGray(i, i2) < HysteresisThreshold.this.b) {
                        if (this.b.fastBitmap.getGray(i, i2) < HysteresisThreshold.this.a) {
                            this.b.fastBitmap.setGray(i, i2, 0);
                        } else if (this.b.fastBitmap.getGray(i, i2 - 1) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i, i2 + 1) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i - 1, i2 - 1) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i - 1, i2) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i - 1, i2 + 1) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i + 1, i2 - 1) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i + 1, i2) < HysteresisThreshold.this.b && this.b.fastBitmap.getGray(i + 1, i2 + 1) < HysteresisThreshold.this.b) {
                            this.b.fastBitmap.setGray(i, i2, 0);
                        }
                    }
                }
            }
        }
    }
}
