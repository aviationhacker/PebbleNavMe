package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Grayscale implements IApplyInPlace {
    private double a;
    private double b;
    private double c;
    private Algorithm d;
    private boolean e;

    public enum Algorithm {
        Lightness,
        Average,
        GeometricMean,
        Luminosity,
        MinimumDecomposition,
        MaximumDecomposition
    }

    public Grayscale() {
        this.a = 0.2125d;
        this.b = 0.7154d;
        this.c = 0.0721d;
        this.d = Algorithm.Luminosity;
        this.e = false;
    }

    public Grayscale(double d, double d2, double d3) {
        this.a = 0.2125d;
        this.b = 0.7154d;
        this.c = 0.0721d;
        this.d = Algorithm.Luminosity;
        this.e = false;
        this.a = d;
        this.b = d2;
        this.c = d3;
        this.e = false;
    }

    public Grayscale(Algorithm algorithm) {
        this.a = 0.2125d;
        this.b = 0.7154d;
        this.c = 0.0721d;
        this.d = Algorithm.Luminosity;
        this.e = false;
        this.d = algorithm;
        this.e = true;
    }

    public double getRedCoefficient() {
        return this.a;
    }

    public void setRedCoefficient(double d) {
        this.a = d;
    }

    public double getGreenCoefficient() {
        return this.b;
    }

    public void setGreenCoefficient(double d) {
        this.b = d;
    }

    public double getBlueCoefficient() {
        return this.c;
    }

    public void setBlueCoefficient(double d) {
        this.c = d;
    }

    public Algorithm getGrayscaleMethod() {
        return this.d;
    }

    public void setGrayscaleMethod(Algorithm algorithm) {
        this.d = algorithm;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            fastBitmap.indicateGrayscale(true);
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("(Concurrent) Grayscale only works in RGB images.");
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iAvailableProcessors) {
            if (i2 == i) {
                height = fastBitmap.getHeight() - i3;
            }
            int i4 = i3 + height;
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i3, i4)));
            threadArr[i2].start();
            i2++;
            i3 = i4;
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
            if (!Grayscale.this.e) {
                for (int i = this.b.startX; i < this.b.endHeight; i++) {
                    for (int i2 = 0; i2 < this.b.fastBitmap.getWidth(); i2++) {
                        this.b.fastBitmap.setGray(i, i2, (int) ((((double) this.b.fastBitmap.getRed(i, i2)) * Grayscale.this.a) + (((double) this.b.fastBitmap.getGreen(i, i2)) * Grayscale.this.b) + (Grayscale.this.c * ((double) this.b.fastBitmap.getBlue(i, i2)))));
                    }
                }
                return;
            }
            switch (Grayscale.this.d) {
                case Lightness:
                    for (int i3 = this.b.startX; i3 < this.b.endHeight; i3++) {
                        for (int i4 = 0; i4 < this.b.fastBitmap.getWidth(); i4++) {
                            double red = this.b.fastBitmap.getRed(i3, i4);
                            double green = this.b.fastBitmap.getGreen(i3, i4);
                            double blue = this.b.fastBitmap.getBlue(i3, i4);
                            this.b.fastBitmap.setGray(i3, i4, (int) ((Math.min(Math.min(red, green), blue) + Math.max(Math.max(red, green), blue)) / 2.0d));
                        }
                    }
                    break;
                case Average:
                    for (int i5 = this.b.startX; i5 < this.b.endHeight; i5++) {
                        for (int i6 = 0; i6 < this.b.fastBitmap.getWidth(); i6++) {
                            this.b.fastBitmap.setGray(i5, i6, (int) (((((double) this.b.fastBitmap.getRed(i5, i6)) + ((double) this.b.fastBitmap.getGreen(i5, i6))) + ((double) this.b.fastBitmap.getBlue(i5, i6))) / 3.0d));
                        }
                    }
                    break;
                case GeometricMean:
                    for (int i7 = this.b.startX; i7 < this.b.endHeight; i7++) {
                        for (int i8 = 0; i8 < this.b.fastBitmap.getWidth(); i8++) {
                            this.b.fastBitmap.setGray(i7, i8, (int) Math.pow(((double) this.b.fastBitmap.getRed(i7, i8)) * ((double) this.b.fastBitmap.getGreen(i7, i8)) * ((double) this.b.fastBitmap.getBlue(i7, i8)), 0.33d));
                        }
                    }
                    break;
                case Luminosity:
                    for (int i9 = this.b.startX; i9 < this.b.endHeight; i9++) {
                        for (int i10 = 0; i10 < this.b.fastBitmap.getWidth(); i10++) {
                            this.b.fastBitmap.setGray(i9, i10, (int) ((((double) this.b.fastBitmap.getRed(i9, i10)) * 0.2125d) + (((double) this.b.fastBitmap.getGreen(i9, i10)) * 0.7154d) + (0.0721d * ((double) this.b.fastBitmap.getBlue(i9, i10)))));
                        }
                    }
                    break;
                case MinimumDecomposition:
                    for (int i11 = this.b.startX; i11 < this.b.endHeight; i11++) {
                        for (int i12 = 0; i12 < this.b.fastBitmap.getWidth(); i12++) {
                            this.b.fastBitmap.setGray(i11, i12, (int) Math.min(Math.min(this.b.fastBitmap.getRed(i11, i12), this.b.fastBitmap.getGreen(i11, i12)), this.b.fastBitmap.getBlue(i11, i12)));
                        }
                    }
                    break;
                case MaximumDecomposition:
                    for (int i13 = this.b.startX; i13 < this.b.endHeight; i13++) {
                        for (int i14 = 0; i14 < this.b.fastBitmap.getWidth(); i14++) {
                            this.b.fastBitmap.setGray(i13, i14, (int) Math.max(Math.max(this.b.fastBitmap.getRed(i13, i14), this.b.fastBitmap.getGreen(i13, i14)), this.b.fastBitmap.getBlue(i13, i14)));
                        }
                    }
                    break;
            }
        }
    }
}
