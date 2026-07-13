package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class Crop {
    private int a;
    private int b;
    private int c;
    private int d;

    public int getX() {
        return this.a;
    }

    public void setX(int i) {
        this.a = i;
    }

    public int getY() {
        return this.b;
    }

    public void setY(int i) {
        this.b = i;
    }

    public void setPosition(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int getHeight() {
        return this.d;
    }

    public void setHeight(int i) {
        this.d = i;
    }

    public int getWidth() {
        return this.c;
    }

    public void setWidth(int i) {
        this.c = i;
    }

    public void setSize(int i, int i2) {
        this.d = i;
        this.c = i2;
    }

    public Crop(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public void ApplyInPlace(FastBitmap fastBitmap) {
        if (this.a + this.d > fastBitmap.getHeight() || this.b + this.c > fastBitmap.getWidth()) {
            throw new IllegalArgumentException("The size is higher than original image.");
        }
        FastBitmap fastBitmap2 = new FastBitmap(this.c, this.d, fastBitmap.getColorSpace());
        if (fastBitmap.isGrayscale()) {
            if (fastBitmap.getCoordinateSystem() == FastBitmap.CoordinateSystem.Matrix) {
                for (int i = 0; i < this.d; i++) {
                    for (int i2 = 0; i2 < this.c; i2++) {
                        fastBitmap2.setGray(i, i2, fastBitmap.getGray(this.a + i, this.b + i2));
                    }
                }
                fastBitmap.setImage(fastBitmap2);
                return;
            }
            for (int i3 = 0; i3 < this.d; i3++) {
                for (int i4 = 0; i4 < this.c; i4++) {
                    fastBitmap2.setGray(i4, i3, fastBitmap.getGray(this.b + i3, this.a + i4));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            return;
        }
        if (fastBitmap.getCoordinateSystem() == FastBitmap.CoordinateSystem.Matrix) {
            for (int i5 = 0; i5 < this.d; i5++) {
                for (int i6 = 0; i6 < this.c; i6++) {
                    fastBitmap2.setRed(i5, i6, fastBitmap.getRed(this.a + i5, this.b + i6));
                    fastBitmap2.setGreen(i5, i6, fastBitmap.getGreen(this.a + i5, this.b + i6));
                    fastBitmap2.setBlue(i5, i6, fastBitmap.getBlue(this.a + i5, this.b + i6));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            return;
        }
        for (int i7 = 0; i7 < this.d; i7++) {
            for (int i8 = 0; i8 < this.c; i8++) {
                fastBitmap2.setRed(i8, i7, fastBitmap.getRed(this.b + i7, this.a + i8));
                fastBitmap2.setGreen(i8, i7, fastBitmap.getGreen(this.b + i7, this.a + i8));
                fastBitmap2.setBlue(i8, i7, fastBitmap.getBlue(this.b + i7, this.a + i8));
            }
        }
        fastBitmap.setImage(fastBitmap2);
    }
}
