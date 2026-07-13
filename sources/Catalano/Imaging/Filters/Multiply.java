package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Multiply implements IApplyInPlace {
    private FastBitmap a;
    private double b;
    private double c;
    private double d;
    private double e;
    private boolean f;

    public Multiply() {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0.0d;
        this.f = false;
    }

    public Multiply(double d) {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0.0d;
        this.f = false;
        this.e = d;
    }

    public Multiply(double d, double d2, double d3) {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0.0d;
        this.f = false;
        this.b = Math.abs(d);
        this.c = Math.abs(d2);
        this.d = Math.abs(d3);
    }

    public Multiply(FastBitmap fastBitmap) {
        this.b = 0.0d;
        this.c = 0.0d;
        this.d = 0.0d;
        this.e = 0.0d;
        this.f = false;
        this.a = fastBitmap;
        this.f = true;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
        this.f = true;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (this.f) {
            b(fastBitmap);
        } else {
            a(fastBitmap);
        }
    }

    private void a(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    int gray = (int) (((double) fastBitmap.getGray(i, i2)) * this.e);
                    if (gray > 255) {
                        gray = 255;
                    }
                    fastBitmap.setGray(i, i2, gray);
                }
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    int red = (int) (((double) fastBitmap.getRed(i3, i4)) * this.b);
                    int green = (int) (((double) fastBitmap.getGreen(i3, i4)) * this.c);
                    int blue = (int) (((double) fastBitmap.getBlue(i3, i4)) * this.d);
                    if (red > 255) {
                        red = 255;
                    }
                    if (green > 255) {
                        green = 255;
                    }
                    if (blue > 255) {
                        blue = 255;
                    }
                    fastBitmap.setRGB(i3, i4, red, green, blue);
                }
            }
        }
    }

    private void b(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = width * height;
        int width2 = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (i == width2) {
                for (int i2 = 0; i2 < height; i2++) {
                    for (int i3 = 0; i3 < width; i3++) {
                        int gray = fastBitmap.getGray(i2, i3) * this.a.getGray(i2, i3);
                        if (gray > 255) {
                            gray = 255;
                        }
                        fastBitmap.setGray(i2, i3, gray);
                    }
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && i == width2) {
            for (int i4 = 0; i4 < height; i4++) {
                for (int i5 = 0; i5 < width; i5++) {
                    int red = this.a.getRed(i4, i5) * fastBitmap.getRed(i4, i5);
                    int green = this.a.getGreen(i4, i5) * fastBitmap.getGreen(i4, i5);
                    int blue = this.a.getBlue(i4, i5) * fastBitmap.getBlue(i4, i5);
                    if (red > 255) {
                        red = 255;
                    }
                    if (green > 255) {
                        green = 255;
                    }
                    if (blue > 255) {
                        blue = 255;
                    }
                    fastBitmap.setRGB(i4, i5, red, green, blue);
                }
            }
        }
    }
}
