package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Approximation;

/* JADX INFO: loaded from: classes.dex */
public class Exp implements IApplyInPlace {
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
                        double dHighprecision_Exp = Approximation.Highprecision_Exp(((double) this.b.fastBitmap.getGray(i, i2)) / dLog);
                        if (dHighprecision_Exp < 0.0d) {
                            dHighprecision_Exp = 0.0d;
                        }
                        if (dHighprecision_Exp > 255.0d) {
                            dHighprecision_Exp = 255.0d;
                        }
                        this.b.fastBitmap.setGray(i, i2, (int) dHighprecision_Exp);
                    }
                }
            }
            if (this.b.fastBitmap.isRGB()) {
                for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                    for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                        double red = this.b.fastBitmap.getRed(i3, i4);
                        double green = this.b.fastBitmap.getGreen(i3, i4);
                        double blue = this.b.fastBitmap.getBlue(i3, i4);
                        double dHighprecision_Exp2 = Approximation.Highprecision_Exp(red / dLog);
                        double dHighprecision_Exp3 = Approximation.Highprecision_Exp(green / dLog);
                        double dHighprecision_Exp4 = Approximation.Highprecision_Exp(blue / dLog);
                        if (dHighprecision_Exp2 < 0.0d) {
                            dHighprecision_Exp2 = 0.0d;
                        }
                        if (dHighprecision_Exp2 > 255.0d) {
                            dHighprecision_Exp2 = 255.0d;
                        }
                        if (dHighprecision_Exp3 < 0.0d) {
                            dHighprecision_Exp3 = 0.0d;
                        }
                        if (dHighprecision_Exp3 > 255.0d) {
                            dHighprecision_Exp3 = 255.0d;
                        }
                        if (dHighprecision_Exp4 < 0.0d) {
                            dHighprecision_Exp4 = 0.0d;
                        }
                        if (dHighprecision_Exp4 > 255.0d) {
                            dHighprecision_Exp4 = 255.0d;
                        }
                        this.b.fastBitmap.setRed(i3, i4, (int) dHighprecision_Exp2);
                        this.b.fastBitmap.setGreen(i3, i4, (int) dHighprecision_Exp3);
                        this.b.fastBitmap.setBlue(i3, i4, (int) dHighprecision_Exp4);
                    }
                }
            }
        }
    }
}
