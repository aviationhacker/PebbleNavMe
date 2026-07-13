package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Add implements IApplyInPlace {
    private FastBitmap a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;

    public Add(int i) {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = false;
        this.e = i;
    }

    public Add(int i, int i2, int i3) {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = false;
        this.b = Math.abs(i);
        this.c = Math.abs(i2);
        this.d = Math.abs(i3);
    }

    public Add(FastBitmap fastBitmap) {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
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
                    int gray = fastBitmap.getGray(i, i2) + this.e;
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
                    int red = this.b + fastBitmap.getRed(i3, i4);
                    int green = this.c + fastBitmap.getGreen(i3, i4);
                    int blue = this.d + fastBitmap.getBlue(i3, i4);
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
                        int gray = fastBitmap.getGray(i2, i3) + this.a.getGray(i2, i3);
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
                    int red = this.a.getRed(i4, i5) + fastBitmap.getRed(i4, i5);
                    int green = this.a.getGreen(i4, i5) + fastBitmap.getGreen(i4, i5);
                    int blue = this.a.getBlue(i4, i5) + fastBitmap.getBlue(i4, i5);
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
