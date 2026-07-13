package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Subtract implements IApplyInPlace {
    private FastBitmap a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;

    public Subtract() {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = false;
    }

    public Subtract(int i) {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = false;
        this.e = Math.abs(i);
    }

    public Subtract(int i, int i2, int i3) {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = false;
        this.b = Math.abs(i);
        this.c = Math.abs(i2);
        this.d = Math.abs(i3);
    }

    public Subtract(FastBitmap fastBitmap) {
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
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < size; i++) {
                int gray = fastBitmap.getGray(i) - this.e;
                if (gray < 0) {
                    gray = 0;
                }
                fastBitmap.setGray(i, gray);
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            for (int i2 = 0; i2 < size; i2++) {
                int red = fastBitmap.getRed(i2) - this.b;
                int green = fastBitmap.getGreen(i2) - this.c;
                int blue = fastBitmap.getBlue(i2) - this.d;
                if (red < 0) {
                    red = 0;
                }
                if (green < 0) {
                    green = 0;
                }
                if (blue < 0) {
                    blue = 0;
                }
                fastBitmap.setRGB(i2, red, green, blue);
            }
        }
    }

    private void b(FastBitmap fastBitmap) {
        int size = fastBitmap.getSize();
        int width = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (size == width) {
                for (int i = 0; i < size; i++) {
                    int gray = fastBitmap.getGray(i) - this.a.getGray(i);
                    if (gray < 0) {
                        gray = 0;
                    }
                    fastBitmap.setGray(i, gray);
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && size == width) {
            for (int i2 = 0; i2 < size; i2++) {
                int red = fastBitmap.getRed(i2) - this.a.getRed(i2);
                int green = fastBitmap.getGreen(i2) - this.a.getGreen(i2);
                int blue = fastBitmap.getBlue(i2) - this.a.getBlue(i2);
                if (red < 0) {
                    red = 0;
                }
                if (green < 0) {
                    green = 0;
                }
                if (blue < 0) {
                    blue = 0;
                }
                fastBitmap.setRGB(i2, red, green, blue);
            }
        }
    }
}
