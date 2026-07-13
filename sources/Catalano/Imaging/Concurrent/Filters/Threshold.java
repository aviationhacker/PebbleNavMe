package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Threshold implements IApplyInPlace {
    private int a;

    public int getValue() {
        return this.a;
    }

    public void setValue(int i) {
        this.a = i;
    }

    public Threshold() {
        this.a = 128;
    }

    public Threshold(int i) {
        this.a = 128;
        this.a = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Threshold only works in grayscale images.");
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = 0;
        for (int i2 = 0; i2 < iAvailableProcessors; i2++) {
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i, i + height)));
            threadArr[i2].start();
            i += height;
        }
        for (int i3 = 0; i3 < iAvailableProcessors; i3++) {
            try {
                threadArr[i3].join();
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
                for (int i2 = 0; i2 < this.b.fastBitmap.getWidth(); i2++) {
                    if (this.b.fastBitmap.getGray(i, i2) < Threshold.this.a) {
                        this.b.fastBitmap.setGray(i, i2, 0);
                    } else {
                        this.b.fastBitmap.setGray(i, i2, 255);
                    }
                }
            }
        }
    }
}
