package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class HistogramStretch implements IApplyInPlace {
    private int a;
    private int b;

    public HistogramStretch() {
        this.a = 255;
        this.b = 0;
    }

    public HistogramStretch(int i, int i2) {
        this.b = Math.max(i, 0);
        this.a = Math.min(i2, 255);
    }

    public int getMax() {
        return this.a;
    }

    public void setMax(int i) {
        this.a = Math.min(i, 255);
    }

    public int getMin() {
        return this.b;
    }

    public void setMin(int i) {
        this.b = Math.max(i, 0);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            float fA = a(fastBitmap);
            float fB = b(fastBitmap);
            for (int i = 0; i < size; i++) {
                fastBitmap.setGray(i, (int) ((((fastBitmap.getGray(i) - fB) / (fA - fB)) * (this.a - this.b)) + this.b));
            }
            return;
        }
        float[] fArrC = c(fastBitmap);
        float[] fArrD = d(fastBitmap);
        for (int i2 = 0; i2 < size; i2++) {
            fastBitmap.setRGB(i2, (int) ((((fastBitmap.getRed(i2) - fArrD[0]) / (fArrC[0] - fArrD[0])) * (this.a - this.b)) + this.b), (int) ((((fastBitmap.getGreen(i2) - fArrD[1]) / (fArrC[1] - fArrD[1])) * (this.a - this.b)) + this.b), (int) ((((fastBitmap.getBlue(i2) - fArrD[2]) / (fArrC[2] - fArrD[2])) * (this.a - this.b)) + this.b));
        }
    }

    private int a(FastBitmap fastBitmap) {
        int gray = 0;
        int size = fastBitmap.getSize();
        for (int i = 0; i < size; i++) {
            if (fastBitmap.getGray(i) > gray) {
                gray = fastBitmap.getGray(i);
            }
        }
        return gray;
    }

    private int b(FastBitmap fastBitmap) {
        int size = fastBitmap.getSize();
        int gray = 255;
        for (int i = 0; i < size; i++) {
            if (fastBitmap.getGray(i) < gray) {
                gray = fastBitmap.getGray(i);
            }
        }
        return gray;
    }

    private float[] c(FastBitmap fastBitmap) {
        float[] fArr = new float[3];
        int size = fastBitmap.getSize();
        int blue = 0;
        int green = 0;
        int red = 0;
        for (int i = 0; i < size; i++) {
            if (fastBitmap.getRed(i) > red) {
                red = fastBitmap.getRed(i);
            }
            if (fastBitmap.getGreen(i) > green) {
                green = fastBitmap.getGreen(i);
            }
            if (fastBitmap.getBlue(i) > blue) {
                blue = fastBitmap.getBlue(i);
            }
        }
        fArr[0] = red;
        fArr[1] = green;
        fArr[2] = blue;
        return fArr;
    }

    private float[] d(FastBitmap fastBitmap) {
        int blue = 255;
        float[] fArr = new float[3];
        int size = fastBitmap.getSize();
        int green = 255;
        int red = 255;
        for (int i = 0; i < size; i++) {
            if (fastBitmap.getRed(i) < red) {
                red = fastBitmap.getRed(i);
            }
            if (fastBitmap.getGreen(i) < green) {
                green = fastBitmap.getGreen(i);
            }
            if (fastBitmap.getBlue(i) < blue) {
                blue = fastBitmap.getBlue(i);
            }
        }
        fArr[0] = red;
        fArr[1] = green;
        fArr[2] = blue;
        return fArr;
    }
}
