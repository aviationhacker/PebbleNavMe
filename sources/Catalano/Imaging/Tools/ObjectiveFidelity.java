package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class ObjectiveFidelity {
    private FastBitmap a;
    private FastBitmap b;

    public FastBitmap getOriginalImage() {
        return this.a;
    }

    public void setOriginalImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public FastBitmap getReconstructedImage() {
        return this.b;
    }

    public void setReconstructedImage(FastBitmap fastBitmap) {
        this.b = fastBitmap;
    }

    public ObjectiveFidelity(FastBitmap fastBitmap, FastBitmap fastBitmap2) {
        this.a = fastBitmap;
        this.b = fastBitmap2;
        if (fastBitmap.getWidth() != fastBitmap2.getWidth() || fastBitmap.getHeight() != fastBitmap2.getHeight()) {
            try {
                throw new IllegalArgumentException("The both images must be equal dimensions");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public int getTotalError() {
        int i = 0;
        for (int i2 = 0; i2 < this.a.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < this.a.getWidth()) {
                int gray = (this.b.getGray(i2, i3) - this.a.getGray(i2, i3)) + i;
                i3++;
                i = gray;
            }
        }
        return i;
    }

    public double getMSE() {
        int i = 0;
        for (int i2 = 0; i2 < this.a.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < this.a.getWidth()) {
                int iPow = (int) (Math.pow(this.b.getGray(i2, i3) - this.a.getGray(i2, i3), 2.0d) + ((double) i));
                i3++;
                i = iPow;
            }
        }
        return Math.sqrt((1.0d / ((double) (this.a.getWidth() * this.a.getHeight()))) * ((double) i));
    }

    public double getSNR() {
        double d = 0.0d;
        double dPow = 0.0d;
        for (int i = 0; i < this.a.getHeight(); i++) {
            int i2 = 0;
            while (i2 < this.a.getWidth()) {
                int gray = this.b.getGray(i, i2);
                dPow += Math.pow(gray - this.a.getGray(i, i2), 2.0d);
                i2++;
                d = ((double) (gray * gray)) + d;
            }
        }
        return Math.sqrt(d / dPow);
    }

    public double getDerivativeSNR() {
        double dPow = 0.0d;
        int width = this.a.getWidth();
        int height = this.a.getHeight();
        double d = 0.0d;
        for (int i = 0; i < height - 1; i++) {
            for (int i2 = 0; i2 < width - 1; i2++) {
                int iAbs = Math.abs(this.a.getGray(i, i2) - this.a.getGray(i + 1, i2)) + Math.abs(this.a.getGray(i, i2) - this.a.getGray(i, i2 + 1));
                d += (double) (iAbs * iAbs);
                dPow += Math.pow(iAbs - (Math.abs(this.b.getGray(i, i2) - this.b.getGray(i + 1, i2)) + Math.abs(this.b.getGray(i, i2) - this.b.getGray(i, i2 + 1))), 2.0d);
            }
        }
        return Math.log10(d / dPow) * 10.0d;
    }

    public double getPSNR() {
        return getPSNR(256);
    }

    public double getPSNR(int i) {
        double d = 0.0d;
        for (int i2 = 0; i2 < this.a.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < this.a.getWidth()) {
                double dPow = Math.pow(this.b.getGray(i2, i3) - this.a.getGray(i2, i3), 2.0d) + d;
                i3++;
                d = dPow;
            }
        }
        return Math.log10(((double) (i * i)) / ((1.0d / ((double) (this.a.getWidth() * this.a.getHeight()))) * d)) * 10.0d;
    }
}
