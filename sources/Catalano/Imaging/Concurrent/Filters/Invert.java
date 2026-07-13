package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Invert implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        a(fastBitmap);
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
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i = this.b.startX; i < this.b.endHeight; i++) {
                    for (int i2 = 0; i2 < this.b.fastBitmap.getWidth(); i2++) {
                        this.b.fastBitmap.setGray(i, i2, 255 - this.b.fastBitmap.getGray(i, i2));
                    }
                }
                return;
            }
            for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                    this.b.fastBitmap.setRGB(i3, i4, 255 - this.b.fastBitmap.getRed(i3, i4), 255 - this.b.fastBitmap.getGreen(i3, i4), 255 - this.b.fastBitmap.getBlue(i3, i4));
                }
            }
        }
    }
}
