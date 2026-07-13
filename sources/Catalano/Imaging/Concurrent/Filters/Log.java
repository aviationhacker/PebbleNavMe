package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Log implements IApplyInPlace {
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
            double dLog = 255.0d / Math.log(255.0d);
            if (this.b.fastBitmap.isGrayscale()) {
                for (int i = this.b.startX; i < this.b.endHeight; i++) {
                    for (int i2 = 0; i2 < this.b.fastBitmap.getWidth(); i2++) {
                        double gray = this.b.fastBitmap.getGray(i, i2);
                        if (gray != 0.0d) {
                            gray = Math.log(gray) * dLog;
                        }
                        if (gray < 0.0d) {
                            gray = 0.0d;
                        }
                        if (gray > 255.0d) {
                            gray = 255.0d;
                        }
                        this.b.fastBitmap.setGray(i, i2, (int) gray);
                    }
                }
            }
            if (this.b.fastBitmap.isRGB()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        double red = this.b.fastBitmap.getRed(i3, i4);
                        double green = this.b.fastBitmap.getGreen(i3, i4);
                        double blue = this.b.fastBitmap.getBlue(i3, i4);
                        if (red != 0.0d) {
                            red = Math.log(red) * dLog;
                        }
                        if (green != 0.0d) {
                            green = Math.log(green) * dLog;
                        }
                        if (blue != 0.0d) {
                            blue = Math.log(blue) * dLog;
                        }
                        if (red < 0.0d) {
                            red = 0.0d;
                        }
                        if (red > 255.0d) {
                            red = 255.0d;
                        }
                        if (green < 0.0d) {
                            green = 0.0d;
                        }
                        if (green > 255.0d) {
                            green = 255.0d;
                        }
                        if (blue < 0.0d) {
                            blue = 0.0d;
                        }
                        if (blue > 255.0d) {
                            blue = 255.0d;
                        }
                        this.b.fastBitmap.setRed(i3, i4, (int) red);
                        this.b.fastBitmap.setGreen(i3, i4, (int) green);
                        this.b.fastBitmap.setBlue(i3, i4, (int) blue);
                    }
                }
            }
        }
    }
}
