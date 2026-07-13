package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class DifferenceEdgeDetector implements IApplyInPlace {
    private FastBitmap a;

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.a = new FastBitmap(fastBitmap);
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int width = fastBitmap.getWidth() - 1;
        int i2 = 0;
        int i3 = 1;
        while (i2 < iAvailableProcessors) {
            if (i2 == i) {
                height = (fastBitmap.getHeight() - i3) - 1;
            }
            int i4 = height;
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, 1, width, i3 + i4)));
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
                    int gray = DifferenceEdgeDetector.this.a.getGray(i - 1, i2 - 1) - DifferenceEdgeDetector.this.a.getGray(i + 1, i2 + 1);
                    if (gray < 0) {
                        gray = -gray;
                    }
                    if (gray <= 0) {
                        gray = 0;
                    }
                    int gray2 = DifferenceEdgeDetector.this.a.getGray(i - 1, i2) - DifferenceEdgeDetector.this.a.getGray(i + 1, i2);
                    if (gray2 < 0) {
                        gray2 = -gray2;
                    }
                    if (gray2 > gray) {
                        gray = gray2;
                    }
                    int gray3 = DifferenceEdgeDetector.this.a.getGray(i - 1, i2 + 1) - DifferenceEdgeDetector.this.a.getGray(i + 1, i2 - 1);
                    if (gray3 < 0) {
                        gray3 = -gray3;
                    }
                    if (gray3 > gray) {
                        gray = gray3;
                    }
                    int gray4 = DifferenceEdgeDetector.this.a.getGray(i, i2 + 1) - DifferenceEdgeDetector.this.a.getGray(i, i2 - 1);
                    if (gray4 < 0) {
                        gray4 = -gray4;
                    }
                    if (gray4 > gray) {
                        gray = gray4;
                    }
                    this.b.fastBitmap.setGray(i, i2, gray);
                }
            }
        }
    }
}
