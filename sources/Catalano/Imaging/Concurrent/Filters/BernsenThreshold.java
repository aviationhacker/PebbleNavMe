package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BernsenThreshold implements IApplyInPlace {
    private int a;
    private double b;
    private FastBitmap c;
    private FastBitmap d;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public double getContrastThreshold() {
        return this.b;
    }

    public void setContrastThreshold(double d) {
        this.b = Math.max(0.0d, d);
    }

    public BernsenThreshold() {
        this.a = 15;
        this.b = 15.0d;
    }

    public BernsenThreshold(int i) {
        this.a = 15;
        this.b = 15.0d;
        this.a = i;
    }

    public BernsenThreshold(int i, double d) {
        this.a = 15;
        this.b = 15.0d;
        this.a = i;
        this.b = d;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Bernsen Threshold only work in grayscale images.");
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
                    double gray = BernsenThreshold.this.c.getGray(i, i2) - BernsenThreshold.this.d.getGray(i, i2);
                    double gray2 = (BernsenThreshold.this.c.getGray(i, i2) + BernsenThreshold.this.d.getGray(i, i2)) / 2;
                    this.b.fastBitmap.setGray(i, i2, gray < BernsenThreshold.this.b ? gray2 >= 128.0d ? 255 : 0 : ((double) this.b.fastBitmap.getGray(i, i2)) >= gray2 ? 255 : 0);
                }
            }
        }
    }

    private void a(FastBitmap fastBitmap) {
        this.c = new FastBitmap(fastBitmap);
        this.d = new FastBitmap(fastBitmap);
        new Maximum(this.a).applyInPlace(this.c);
        new Minimum(this.a).applyInPlace(this.d);
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
}
