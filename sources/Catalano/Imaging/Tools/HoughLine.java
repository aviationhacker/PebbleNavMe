package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class HoughLine implements Comparable {
    private double a;
    private double b;
    private int c;
    private double d;

    public double getRadius() {
        return this.b;
    }

    public void setRadius(double d) {
        this.b = d;
    }

    public double getTheta() {
        return this.a;
    }

    public void setTheta(double d) {
        this.a = d;
    }

    public int getIntensity() {
        return this.c;
    }

    public void setIntensity(int i) {
        this.c = i;
    }

    public double getRelativeIntensity() {
        return this.d;
    }

    public void setRelativeIntensity(double d) {
        this.d = d;
    }

    public HoughLine() {
    }

    public HoughLine(double d, double d2, int i, double d3) {
        this.a = d;
        this.b = d2;
        this.c = i;
        this.d = d3;
    }

    public void DrawLine(FastBitmap fastBitmap, int i) {
        if (fastBitmap.isGrayscale()) {
            int height = fastBitmap.getHeight();
            int width = fastBitmap.getWidth();
            int iSqrt = ((int) (Math.sqrt(2.0d) * ((double) Math.max(height, width)))) / 2;
            float f = width / 2;
            float f2 = height / 2;
            double dSin = Math.sin(this.a);
            double dCos = Math.cos(this.a);
            if (this.a < 0.7853981633974483d || this.a > 2.356194490192345d) {
                for (int i2 = 0; i2 < width; i2++) {
                    int i3 = (int) ((((this.b - ((double) iSqrt)) - (((double) (i2 - f2)) * dSin)) / dCos) + ((double) f));
                    if (i3 < height && i3 >= 0) {
                        fastBitmap.setGray(i3, i2, i);
                    }
                }
                return;
            }
            for (int i4 = 0; i4 < height; i4++) {
                int i5 = (int) ((((this.b - ((double) iSqrt)) - (((double) (i4 - f)) * dCos)) / dSin) + ((double) f2));
                if (i5 < width && i5 >= 0) {
                    fastBitmap.setGray(i4, i5, i);
                }
            }
            return;
        }
        throw new IllegalArgumentException("DrawLine the image is RGB, should be Grayscale.");
    }

    public void DrawLine(FastBitmap fastBitmap, int i, int i2, int i3) {
        if (fastBitmap.isRGB()) {
            int height = fastBitmap.getHeight();
            int width = fastBitmap.getWidth();
            int iSqrt = ((int) (Math.sqrt(2.0d) * ((double) Math.max(height, width)))) / 2;
            float f = width / 2;
            float f2 = height / 2;
            double dSin = Math.sin(this.a);
            double dCos = Math.cos(this.a);
            if (this.a < 0.7853981633974483d || this.a > 2.356194490192345d) {
                for (int i4 = 0; i4 < width; i4++) {
                    int i5 = (int) ((((this.b - ((double) iSqrt)) - (((double) (i4 - f2)) * dSin)) / dCos) + ((double) f));
                    if (i5 < height && i5 >= 0) {
                        fastBitmap.setRGB(i5, i4, i, i2, i3);
                    }
                }
                return;
            }
            for (int i6 = 0; i6 < height; i6++) {
                int i7 = (int) ((((this.b - ((double) iSqrt)) - (((double) (i6 - f)) * dCos)) / dSin) + ((double) f2));
                if (i7 < width && i7 >= 0) {
                    fastBitmap.setRGB(i6, i7, i, i2, i3);
                }
            }
            return;
        }
        throw new IllegalArgumentException("DrawLine the image is Grayscale, should be RGB.");
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        HoughLine houghLine = (HoughLine) obj;
        if (this.c > houghLine.c) {
            return -1;
        }
        return this.c < houghLine.c ? 1 : 0;
    }
}
