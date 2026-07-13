package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;

/* JADX INFO: loaded from: classes.dex */
public class ImageNormalization implements IApplyInPlace {
    private float a = 160.0f;
    private float b = 150.0f;
    private float c;
    private float d;

    public float getMean() {
        return this.a;
    }

    public void setMean(float f) {
        this.a = Math.max(0.0f, Math.min(255.0f, f));
    }

    public float getVariance() {
        return this.b;
    }

    public void setVariance(float f) {
        this.b = Math.max(0.0f, Math.min(255.0f, f));
    }

    public ImageNormalization() {
    }

    public ImageNormalization(float f, float f2) {
        setMean(f);
        setVariance(f2);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("ImageNormalization only works in grayscale images.");
    }

    private void a(FastBitmap fastBitmap) {
        this.c = ImageStatistics.Mean(fastBitmap);
        this.d = ImageStatistics.Variance(fastBitmap);
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
                    int gray = this.b.fastBitmap.getGray(i, i2);
                    float fSqrt = (float) Math.sqrt((ImageNormalization.this.b * ((float) Math.pow(gray - ImageNormalization.this.c, 2.0d))) / ImageNormalization.this.d);
                    int i3 = ((float) gray) > ImageNormalization.this.c ? (int) (ImageNormalization.this.a + fSqrt) : (int) (ImageNormalization.this.a - fSqrt);
                    if (i3 > 255) {
                        i3 = 255;
                    }
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    this.b.fastBitmap.setGray(i, i2, i3);
                }
            }
        }
    }
}
