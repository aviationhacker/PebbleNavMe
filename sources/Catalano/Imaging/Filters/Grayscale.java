package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class Grayscale implements IApplyInPlace {
    double a;
    double b;
    double c;
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
        this.e = false;
    }

    public Grayscale(double d, double d2, double d3) {
        this.a = 0.2125d;
        this.b = 0.7154d;
        this.c = 0.0721d;
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
        if (!this.e) {
            fastBitmap.indicateGrayscale(true);
            int[] data = fastBitmap.getData();
            for (int i = 0; i < data.length; i++) {
                int i2 = (int) ((((double) ((data[i] >> 16) & 255)) * this.a) + (((double) ((data[i] >> 8) & 255)) * this.b) + (this.c * ((double) (data[i] & 255))));
                data[i] = i2 | (-16777216) | (i2 << 16) | (i2 << 8);
            }
            return;
        }
        fastBitmap.indicateGrayscale(true);
        a(fastBitmap, this.d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(FastBitmap fastBitmap, Algorithm algorithm) {
        int i = 0;
        int[] data = fastBitmap.getData();
        switch (algorithm) {
            case Lightness:
                while (i < data.length) {
                    double d = (data[i] >> 16) & 255;
                    double d2 = (data[i] >> 8) & 255;
                    double d3 = data[i] & 255;
                    int iMin = (int) ((Math.min(Math.min(d, d2), d3) + Math.max(Math.max(d, d2), d3)) / 2.0d);
                    data[i] = iMin | (iMin << 16) | ViewCompat.MEASURED_STATE_MASK | (iMin << 8);
                    i++;
                }
                break;
            case Average:
                while (i < data.length) {
                    int i2 = (int) (((((double) ((data[i] >> 16) & 255)) + ((double) ((data[i] >> 8) & 255))) + ((double) (data[i] & 255))) / 3.0d);
                    data[i] = i2 | (i2 << 16) | ViewCompat.MEASURED_STATE_MASK | (i2 << 8);
                    i++;
                }
                break;
            case GeometricMean:
                while (i < data.length) {
                    int iPow = (int) Math.pow(((double) ((data[i] >> 16) & 255)) * ((double) ((data[i] >> 8) & 255)) * ((double) (data[i] & 255)), 0.33d);
                    data[i] = iPow | (iPow << 16) | ViewCompat.MEASURED_STATE_MASK | (iPow << 8);
                    i++;
                }
                break;
            case Luminosity:
                while (i < data.length) {
                    int i3 = (int) ((((double) ((data[i] >> 16) & 255)) * 0.2125d) + (((double) ((data[i] >> 8) & 255)) * 0.7154d) + (0.0721d * ((double) (data[i] & 255))));
                    data[i] = i3 | (i3 << 16) | ViewCompat.MEASURED_STATE_MASK | (i3 << 8);
                    i++;
                }
                break;
            case MinimumDecomposition:
                while (i < data.length) {
                    double d4 = (data[i] >> 16) & 255;
                    double d5 = (data[i] >> 8) & 255;
                    int iMin2 = (int) Math.min((int) Math.min(d4, d5), data[i] & 255);
                    data[i] = iMin2 | (iMin2 << 16) | ViewCompat.MEASURED_STATE_MASK | (iMin2 << 8);
                    i++;
                }
                break;
            case MaximumDecomposition:
                while (i < data.length) {
                    double d6 = (data[i] >> 16) & 255;
                    double d7 = (data[i] >> 8) & 255;
                    int iMax = (int) Math.max((int) Math.max(d6, d7), data[i] & 255);
                    data[i] = iMax | (iMax << 16) | ViewCompat.MEASURED_STATE_MASK | (iMax << 8);
                    i++;
                }
                break;
        }
    }
}
