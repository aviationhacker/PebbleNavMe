package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Filters.Mean;
import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class NiblackThreshold implements IApplyInPlace {
    private Mean.Arithmetic a;
    private int b;
    private double c;
    private double d;
    private FastBitmap e;
    private FastBitmap f;

    public Mean.Arithmetic getArithmetic() {
        return this.a;
    }

    public void setArithmetic(Mean.Arithmetic arithmetic) {
        this.a = arithmetic;
    }

    public int getRadius() {
        return this.b;
    }

    public void setRadius(int i) {
        this.b = i;
    }

    public double getK() {
        return this.c;
    }

    public void setK(double d) {
        this.c = d;
    }

    public double getC() {
        return this.d;
    }

    public void setC(double d) {
        this.d = d;
    }

    public NiblackThreshold() {
        this.a = Mean.Arithmetic.Mean;
        this.b = 15;
        this.c = 0.2d;
        this.d = 0.0d;
    }

    public NiblackThreshold(int i) {
        this.a = Mean.Arithmetic.Mean;
        this.b = 15;
        this.c = 0.2d;
        this.d = 0.0d;
        this.b = i;
    }

    public NiblackThreshold(double d, double d2) {
        this.a = Mean.Arithmetic.Mean;
        this.b = 15;
        this.c = 0.2d;
        this.d = 0.0d;
        this.c = d;
        this.d = d2;
    }

    public NiblackThreshold(int i, double d, double d2) {
        this.a = Mean.Arithmetic.Mean;
        this.b = 15;
        this.c = 0.2d;
        this.d = 0.0d;
        this.b = i;
        this.c = d;
        this.d = d2;
    }

    public NiblackThreshold(int i, double d, double d2, Mean.Arithmetic arithmetic) {
        this.a = Mean.Arithmetic.Mean;
        this.b = 15;
        this.c = 0.2d;
        this.d = 0.0d;
        this.b = i;
        this.c = d;
        this.d = d2;
        this.a = arithmetic;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.e = new FastBitmap(fastBitmap);
            this.f = new FastBitmap(fastBitmap);
            new Mean(this.b, this.a).applyInPlace(this.e);
            new FastVariance(this.b).applyInPlace(this.f);
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("Niblack threshold only works in grayscale images.");
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        for (int i3 = 0; i3 < iAvailableProcessors; i3++) {
            if (i == i3) {
                height = fastBitmap.getHeight() - i2;
            }
            threadArr[i3] = new Thread(new a(new Share(fastBitmap, i2, i2 + height)));
            threadArr[i3].start();
            i2 += height;
        }
        for (int i4 = 0; i4 < iAvailableProcessors; i4++) {
            try {
                threadArr[i4].join();
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
                    this.b.fastBitmap.setGray(i, i2, ((double) ((float) this.b.fastBitmap.getGray(i, i2))) > ((Math.sqrt((double) ((float) NiblackThreshold.this.f.getGray(i, i2))) * NiblackThreshold.this.c) + ((double) ((float) NiblackThreshold.this.e.getGray(i, i2)))) - NiblackThreshold.this.d ? 255 : 0);
                }
            }
        }
    }
}
