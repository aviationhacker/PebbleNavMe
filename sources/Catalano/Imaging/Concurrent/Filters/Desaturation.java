package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Desaturation implements IApplyInPlace {
    private double a = 0.2d;

    public double getSaturationFactor() {
        return this.a;
    }

    public void setSaturationFactor(double d) {
        this.a = Math.min(1.0d, Math.max(0.0d, d));
    }

    public Desaturation() {
    }

    public Desaturation(double d) {
        setSaturationFactor(d);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Desaturation only works in RGB space color.");
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
                    double red = this.b.fastBitmap.getRed(i, i2);
                    double green = this.b.fastBitmap.getGreen(i, i2);
                    double blue = this.b.fastBitmap.getBlue(i, i2);
                    double d = (0.2125d * red) + (0.7154d * green) + (0.0721d * blue);
                    this.b.fastBitmap.setRGB(i, i2, (int) (((red - d) * Desaturation.this.a) + d), (int) (((green - d) * Desaturation.this.a) + d), (int) (((blue - d) * Desaturation.this.a) + d));
                }
            }
        }
    }
}
