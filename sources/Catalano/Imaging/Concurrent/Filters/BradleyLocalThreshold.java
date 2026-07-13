package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.IntegralImage;

/* JADX INFO: loaded from: classes.dex */
public class BradleyLocalThreshold implements IApplyInPlace {
    private int a;
    private float b;
    private IntegralImage c;

    public BradleyLocalThreshold() {
        this.a = 41;
        this.b = 0.15f;
    }

    public BradleyLocalThreshold(int i) {
        this.a = 41;
        this.b = 0.15f;
        this.a = i;
    }

    public BradleyLocalThreshold(int i, float f) {
        this.a = 41;
        this.b = 0.15f;
        this.a = i;
    }

    public int getWindowSize() {
        return this.a;
    }

    public void setWindowSize(int i) {
        this.a = i;
    }

    public float getPixelBrightnessDifferenceLimit() {
        return this.b;
    }

    public void setPixelBrightnessDifferenceLimit(float f) {
        this.b = f;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        this.c = IntegralImage.FromFastBitmap(fastBitmap);
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
            int width = this.b.fastBitmap.getWidth() - 1;
            int i = this.b.endHeight - 1;
            int i2 = BradleyLocalThreshold.this.a / 2;
            float f = 1.0f - BradleyLocalThreshold.this.b;
            for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                int i4 = i3 - i2;
                int i5 = i3 + i2;
                int i6 = i4 < 0 ? 0 : i4;
                if (i5 > i) {
                    i5 = i;
                }
                for (int i7 = 0; i7 < this.b.fastBitmap.getWidth(); i7++) {
                    int i8 = i7 - i2;
                    int i9 = i7 + i2;
                    if (i8 < 0) {
                        i8 = 0;
                    }
                    if (i9 > width) {
                        i9 = width;
                    }
                    this.b.fastBitmap.setGray(i3, i7, this.b.fastBitmap.getGray(i3, i7) < ((int) (BradleyLocalThreshold.this.c.getRectangleMeanUnsafe(i6, i8, i5, i9) * f)) ? 0 : 255);
                }
            }
        }
    }
}
