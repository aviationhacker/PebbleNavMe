package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SobelEdgeDetector implements IApplyInPlace {
    private FastBitmap a;
    private int b = 0;
    private boolean c = true;

    public boolean isScaleIntensity() {
        return this.c;
    }

    public void setScaleIntensity(boolean z) {
        this.c = z;
    }

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
                    int gray = SobelEdgeDetector.this.a.getGray(i - 1, i2 - 1);
                    int gray2 = SobelEdgeDetector.this.a.getGray(i - 1, i2);
                    int gray3 = SobelEdgeDetector.this.a.getGray(i - 1, i2 + 1);
                    int gray4 = SobelEdgeDetector.this.a.getGray(i, i2 + 1);
                    int gray5 = SobelEdgeDetector.this.a.getGray(i + 1, i2);
                    int gray6 = SobelEdgeDetector.this.a.getGray(i + 1, i2 + 1);
                    int gray7 = SobelEdgeDetector.this.a.getGray(i + 1, i2 - 1);
                    int iMin = Math.min(255, Math.abs((((gray2 + gray6) - gray) - gray7) + ((gray4 - SobelEdgeDetector.this.a.getGray(i, i2 - 1)) * 2)) + Math.abs((((gray3 + gray) - gray7) - gray2) + ((gray2 - gray5) * 2)));
                    if (iMin > SobelEdgeDetector.this.b) {
                        SobelEdgeDetector.this.b = iMin;
                    }
                    this.b.fastBitmap.setGray(i, i2, iMin);
                }
            }
            if (SobelEdgeDetector.this.c && SobelEdgeDetector.this.b != 255) {
                double d = 255.0d / ((double) SobelEdgeDetector.this.b);
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = this.b.startY; i4 < this.b.endWidth; i4++) {
                        this.b.fastBitmap.setGray(i3, i4, (int) (((double) this.b.fastBitmap.getGray(i3, i4)) * d));
                    }
                }
            }
        }
    }
}
