package Catalano.Imaging.Concurrent.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ColorFiltering implements IApplyInPlace {
    private IntRange a;
    private IntRange b;
    private IntRange c;

    public ColorFiltering() {
    }

    public ColorFiltering(IntRange intRange, IntRange intRange2, IntRange intRange3) {
        this.a = intRange;
        this.b = intRange2;
        this.c = intRange3;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Color Filtering only works in RGB images.");
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
                    int red = this.b.fastBitmap.getRed(i, i2);
                    int green = this.b.fastBitmap.getGreen(i, i2);
                    int blue = this.b.fastBitmap.getBlue(i, i2);
                    if (red >= ColorFiltering.this.a.getMin() && red <= ColorFiltering.this.a.getMax() && green >= ColorFiltering.this.b.getMin() && green <= ColorFiltering.this.b.getMax() && blue >= ColorFiltering.this.c.getMin() && blue <= ColorFiltering.this.c.getMax()) {
                        this.b.fastBitmap.setRGB(i, i2, red, green, blue);
                    } else {
                        this.b.fastBitmap.setRGB(i, i2, 0, 0, 0);
                    }
                }
            }
        }
    }
}
